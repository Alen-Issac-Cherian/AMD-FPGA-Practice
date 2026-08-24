// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Dec 20 18:59:46 2023
// Host        : DESKTOP-1T2E61L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/Project-Workspace/zynq-7020-video-pipe-3/hw/video-pipe-hw-v3/hw_011223.gen/sources_1/bd/broncho_video/ip/broncho_video_quantizationditherin_0_0/broncho_video_quantizationditherin_0_0_sim_netlist.v
// Design      : broncho_video_quantizationditherin_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "broncho_video_quantizationditherin_0_0,quantizationdithering_accel,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "quantizationdithering_accel,Vivado 2023.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module broncho_video_quantizationditherin_0_0
   (s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [4:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [4:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 1.42857e+08, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN broncho_video_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:s_axis_video:m_axis_video, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 1.42857e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN broncho_video_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TVALID" *) input s_axis_video_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TREADY" *) output s_axis_video_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TDATA" *) input [31:0]s_axis_video_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TKEEP" *) input [3:0]s_axis_video_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TSTRB" *) input [3:0]s_axis_video_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TUSER" *) input [0:0]s_axis_video_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TLAST" *) input [0:0]s_axis_video_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TID" *) input [0:0]s_axis_video_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_video, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1.42857e+08, PHASE 0.0, CLK_DOMAIN broncho_video_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input [0:0]s_axis_video_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TVALID" *) output m_axis_video_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TREADY" *) input m_axis_video_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TDATA" *) output [23:0]m_axis_video_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TKEEP" *) output [2:0]m_axis_video_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TSTRB" *) output [2:0]m_axis_video_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TUSER" *) output [0:0]m_axis_video_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TLAST" *) output [0:0]m_axis_video_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TID" *) output [0:0]m_axis_video_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1.42857e+08, PHASE 0.0, CLK_DOMAIN broncho_video_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) output [0:0]m_axis_video_TDEST;

  wire \<const0> ;
  wire \<const1> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [23:0]m_axis_video_TDATA;
  wire [0:0]m_axis_video_TLAST;
  wire m_axis_video_TREADY;
  wire [0:0]m_axis_video_TUSER;
  wire m_axis_video_TVALID;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [31:0]s_axis_video_TDATA;
  wire [0:0]s_axis_video_TLAST;
  wire s_axis_video_TREADY;
  wire [0:0]s_axis_video_TUSER;
  wire s_axis_video_TVALID;
  wire [0:0]NLW_inst_m_axis_video_TDEST_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_video_TID_UNCONNECTED;
  wire [2:0]NLW_inst_m_axis_video_TKEEP_UNCONNECTED;
  wire [2:0]NLW_inst_m_axis_video_TSTRB_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign m_axis_video_TDEST[0] = \<const0> ;
  assign m_axis_video_TID[0] = \<const0> ;
  assign m_axis_video_TKEEP[2] = \<const1> ;
  assign m_axis_video_TKEEP[1] = \<const1> ;
  assign m_axis_video_TKEEP[0] = \<const1> ;
  assign m_axis_video_TSTRB[2] = \<const0> ;
  assign m_axis_video_TSTRB[1] = \<const0> ;
  assign m_axis_video_TSTRB[0] = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .m_axis_video_TDATA(m_axis_video_TDATA),
        .m_axis_video_TDEST(NLW_inst_m_axis_video_TDEST_UNCONNECTED[0]),
        .m_axis_video_TID(NLW_inst_m_axis_video_TID_UNCONNECTED[0]),
        .m_axis_video_TKEEP(NLW_inst_m_axis_video_TKEEP_UNCONNECTED[2:0]),
        .m_axis_video_TLAST(m_axis_video_TLAST),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TSTRB(NLW_inst_m_axis_video_TSTRB_UNCONNECTED[2:0]),
        .m_axis_video_TUSER(m_axis_video_TUSER),
        .m_axis_video_TVALID(m_axis_video_TVALID),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .s_axis_video_TDATA({1'b0,1'b0,s_axis_video_TDATA[29:0]}),
        .s_axis_video_TDEST(1'b0),
        .s_axis_video_TID(1'b0),
        .s_axis_video_TKEEP({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_video_TLAST(s_axis_video_TLAST),
        .s_axis_video_TREADY(s_axis_video_TREADY),
        .s_axis_video_TSTRB({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_video_TUSER(s_axis_video_TUSER),
        .s_axis_video_TVALID(s_axis_video_TVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "5" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "quantizationdithering_accel" *) 
(* hls_module = "yes" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel
   (s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    m_axis_video_TVALID,
    m_axis_video_TREADY);
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [4:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [4:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input [31:0]s_axis_video_TDATA;
  input [3:0]s_axis_video_TKEEP;
  input [3:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;

  wire \<const0> ;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write;
  wire [29:0]AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_data_din;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_36;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_38;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_39;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_40;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_41;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_42;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_43;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_44;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_45;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_46;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_47;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_48;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_49;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_50;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_51;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_52;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_53;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_54;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_55;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_56;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_57;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_58;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_59;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_60;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_61;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_62;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_63;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_64;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_65;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_66;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_67;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_68;
  wire Block_entry1_proc_U0_ap_ready;
  wire [31:0]Block_entry1_proc_U0_ap_return_2;
  wire [31:0]Block_entry1_proc_U0_ap_return_3;
  wire Block_entry1_proc_U0_ap_start;
  wire ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready;
  wire ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_1;
  wire ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_2;
  wire ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_37;
  wire ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_39;
  wire ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_4;
  wire ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_42;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_clk;
  wire ap_done_reg;
  wire ap_idle;
  wire [31:0]ap_return_2_preg;
  wire [31:0]ap_return_3_preg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_sync_channel_write_in_mat_cols_c10_channel;
  wire ap_sync_channel_write_in_mat_rows_c9_channel;
  wire ap_sync_channel_write_out_mat_cols_channel;
  wire ap_sync_channel_write_out_mat_rows_channel;
  wire ap_sync_reg_channel_write_in_mat_cols_c10_channel;
  wire ap_sync_reg_channel_write_in_mat_rows_c9_channel;
  wire ap_sync_reg_channel_write_out_mat_cols_channel;
  wire ap_sync_reg_channel_write_out_mat_rows_channel;
  wire ap_sync_reg_channel_write_out_mat_rows_channel_reg_n_0;
  wire [31:0]cols_in;
  wire control_s_axi_U_n_145;
  wire \grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178/ap_loop_init ;
  wire \grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/icmp_ln185_reg_1508 ;
  wire \grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/icmp_ln199_reg_1519 ;
  wire [30:0]i_fu_62_reg;
  wire i_fu_880;
  wire [30:0]i_fu_88_reg;
  wire icmp_ln56_fu_255_p2;
  wire in_mat_cols_c10_channel_U_n_10;
  wire in_mat_cols_c10_channel_U_n_11;
  wire in_mat_cols_c10_channel_U_n_12;
  wire in_mat_cols_c10_channel_U_n_13;
  wire in_mat_cols_c10_channel_U_n_14;
  wire in_mat_cols_c10_channel_U_n_15;
  wire in_mat_cols_c10_channel_U_n_16;
  wire in_mat_cols_c10_channel_U_n_17;
  wire in_mat_cols_c10_channel_U_n_18;
  wire in_mat_cols_c10_channel_U_n_19;
  wire in_mat_cols_c10_channel_U_n_2;
  wire in_mat_cols_c10_channel_U_n_20;
  wire in_mat_cols_c10_channel_U_n_21;
  wire in_mat_cols_c10_channel_U_n_22;
  wire in_mat_cols_c10_channel_U_n_23;
  wire in_mat_cols_c10_channel_U_n_24;
  wire in_mat_cols_c10_channel_U_n_25;
  wire in_mat_cols_c10_channel_U_n_26;
  wire in_mat_cols_c10_channel_U_n_27;
  wire in_mat_cols_c10_channel_U_n_28;
  wire in_mat_cols_c10_channel_U_n_29;
  wire in_mat_cols_c10_channel_U_n_3;
  wire in_mat_cols_c10_channel_U_n_30;
  wire in_mat_cols_c10_channel_U_n_31;
  wire in_mat_cols_c10_channel_U_n_32;
  wire in_mat_cols_c10_channel_U_n_33;
  wire in_mat_cols_c10_channel_U_n_34;
  wire in_mat_cols_c10_channel_U_n_35;
  wire in_mat_cols_c10_channel_U_n_36;
  wire in_mat_cols_c10_channel_U_n_37;
  wire in_mat_cols_c10_channel_U_n_38;
  wire in_mat_cols_c10_channel_U_n_39;
  wire in_mat_cols_c10_channel_U_n_4;
  wire in_mat_cols_c10_channel_U_n_40;
  wire in_mat_cols_c10_channel_U_n_41;
  wire in_mat_cols_c10_channel_U_n_42;
  wire in_mat_cols_c10_channel_U_n_43;
  wire in_mat_cols_c10_channel_U_n_44;
  wire in_mat_cols_c10_channel_U_n_45;
  wire in_mat_cols_c10_channel_U_n_46;
  wire in_mat_cols_c10_channel_U_n_47;
  wire in_mat_cols_c10_channel_U_n_48;
  wire in_mat_cols_c10_channel_U_n_49;
  wire in_mat_cols_c10_channel_U_n_5;
  wire in_mat_cols_c10_channel_U_n_50;
  wire in_mat_cols_c10_channel_U_n_51;
  wire in_mat_cols_c10_channel_U_n_52;
  wire in_mat_cols_c10_channel_U_n_53;
  wire in_mat_cols_c10_channel_U_n_54;
  wire in_mat_cols_c10_channel_U_n_55;
  wire in_mat_cols_c10_channel_U_n_56;
  wire in_mat_cols_c10_channel_U_n_57;
  wire in_mat_cols_c10_channel_U_n_58;
  wire in_mat_cols_c10_channel_U_n_59;
  wire in_mat_cols_c10_channel_U_n_6;
  wire in_mat_cols_c10_channel_U_n_60;
  wire in_mat_cols_c10_channel_U_n_61;
  wire in_mat_cols_c10_channel_U_n_62;
  wire in_mat_cols_c10_channel_U_n_63;
  wire in_mat_cols_c10_channel_U_n_7;
  wire in_mat_cols_c10_channel_U_n_8;
  wire in_mat_cols_c10_channel_U_n_80;
  wire in_mat_cols_c10_channel_U_n_9;
  wire [15:0]in_mat_cols_c10_channel_dout;
  wire in_mat_cols_c10_channel_empty_n;
  wire in_mat_cols_c10_channel_full_n;
  wire [15:0]in_mat_cols_c_dout;
  wire in_mat_cols_c_empty_n;
  wire in_mat_data_U_n_10;
  wire in_mat_data_U_n_11;
  wire in_mat_data_U_n_12;
  wire in_mat_data_U_n_13;
  wire in_mat_data_U_n_14;
  wire in_mat_data_U_n_15;
  wire in_mat_data_U_n_16;
  wire in_mat_data_U_n_17;
  wire in_mat_data_U_n_18;
  wire in_mat_data_U_n_19;
  wire in_mat_data_U_n_20;
  wire in_mat_data_U_n_21;
  wire in_mat_data_U_n_22;
  wire in_mat_data_U_n_23;
  wire in_mat_data_U_n_24;
  wire in_mat_data_U_n_25;
  wire in_mat_data_U_n_26;
  wire in_mat_data_U_n_27;
  wire in_mat_data_U_n_28;
  wire in_mat_data_U_n_29;
  wire in_mat_data_U_n_3;
  wire in_mat_data_U_n_30;
  wire in_mat_data_U_n_31;
  wire in_mat_data_U_n_32;
  wire in_mat_data_U_n_4;
  wire in_mat_data_U_n_5;
  wire in_mat_data_U_n_6;
  wire in_mat_data_U_n_7;
  wire in_mat_data_U_n_8;
  wire in_mat_data_U_n_9;
  wire in_mat_data_empty_n;
  wire in_mat_data_full_n;
  wire in_mat_rows_c9_channel_U_n_10;
  wire in_mat_rows_c9_channel_U_n_11;
  wire in_mat_rows_c9_channel_U_n_12;
  wire in_mat_rows_c9_channel_U_n_13;
  wire in_mat_rows_c9_channel_U_n_14;
  wire in_mat_rows_c9_channel_U_n_15;
  wire in_mat_rows_c9_channel_U_n_16;
  wire in_mat_rows_c9_channel_U_n_17;
  wire in_mat_rows_c9_channel_U_n_18;
  wire in_mat_rows_c9_channel_U_n_19;
  wire in_mat_rows_c9_channel_U_n_2;
  wire in_mat_rows_c9_channel_U_n_20;
  wire in_mat_rows_c9_channel_U_n_21;
  wire in_mat_rows_c9_channel_U_n_22;
  wire in_mat_rows_c9_channel_U_n_23;
  wire in_mat_rows_c9_channel_U_n_24;
  wire in_mat_rows_c9_channel_U_n_3;
  wire in_mat_rows_c9_channel_U_n_41;
  wire in_mat_rows_c9_channel_U_n_42;
  wire in_mat_rows_c9_channel_U_n_43;
  wire in_mat_rows_c9_channel_U_n_44;
  wire in_mat_rows_c9_channel_U_n_45;
  wire in_mat_rows_c9_channel_U_n_46;
  wire in_mat_rows_c9_channel_U_n_47;
  wire in_mat_rows_c9_channel_U_n_48;
  wire in_mat_rows_c9_channel_U_n_49;
  wire in_mat_rows_c9_channel_U_n_5;
  wire in_mat_rows_c9_channel_U_n_50;
  wire in_mat_rows_c9_channel_U_n_51;
  wire in_mat_rows_c9_channel_U_n_52;
  wire in_mat_rows_c9_channel_U_n_6;
  wire in_mat_rows_c9_channel_U_n_7;
  wire in_mat_rows_c9_channel_U_n_8;
  wire in_mat_rows_c9_channel_U_n_9;
  wire [15:0]in_mat_rows_c9_channel_dout;
  wire in_mat_rows_c9_channel_empty_n;
  wire in_mat_rows_c9_channel_full_n;
  wire [15:0]in_mat_rows_c_dout;
  wire in_mat_rows_c_empty_n;
  wire in_mat_rows_c_full_n;
  wire interrupt;
  wire [0:0]mOutPtr;
  wire mOutPtr16_out;
  wire mOutPtr16_out_0;
  wire mOutPtr16_out_1;
  wire [0:0]mOutPtr_6;
  wire [23:0]m_axis_video_TDATA;
  wire [0:0]m_axis_video_TLAST;
  wire m_axis_video_TREADY;
  wire [0:0]m_axis_video_TUSER;
  wire m_axis_video_TVALID;
  wire out_mat_cols_channel_U_n_66;
  wire out_mat_cols_channel_U_n_67;
  wire out_mat_cols_channel_U_n_68;
  wire out_mat_cols_channel_U_n_69;
  wire out_mat_cols_channel_U_n_70;
  wire out_mat_cols_channel_U_n_71;
  wire out_mat_cols_channel_U_n_72;
  wire out_mat_cols_channel_U_n_73;
  wire out_mat_cols_channel_U_n_74;
  wire out_mat_cols_channel_U_n_75;
  wire out_mat_cols_channel_U_n_76;
  wire out_mat_cols_channel_U_n_77;
  wire out_mat_cols_channel_U_n_78;
  wire out_mat_cols_channel_U_n_79;
  wire out_mat_cols_channel_U_n_80;
  wire out_mat_cols_channel_U_n_81;
  wire out_mat_cols_channel_U_n_82;
  wire [31:0]out_mat_cols_channel_dout;
  wire out_mat_cols_channel_empty_n;
  wire out_mat_cols_channel_full_n;
  wire [23:0]out_mat_data_dout;
  wire out_mat_data_empty_n;
  wire out_mat_data_full_n;
  wire out_mat_rows_channel_U_n_2;
  wire out_mat_rows_channel_U_n_3;
  wire out_mat_rows_channel_U_n_34;
  wire out_mat_rows_channel_U_n_35;
  wire out_mat_rows_channel_U_n_36;
  wire out_mat_rows_channel_U_n_37;
  wire out_mat_rows_channel_U_n_38;
  wire out_mat_rows_channel_U_n_39;
  wire out_mat_rows_channel_U_n_4;
  wire out_mat_rows_channel_U_n_40;
  wire out_mat_rows_channel_U_n_41;
  wire out_mat_rows_channel_U_n_42;
  wire out_mat_rows_channel_U_n_43;
  wire out_mat_rows_channel_U_n_44;
  wire out_mat_rows_channel_U_n_45;
  wire out_mat_rows_channel_U_n_46;
  wire out_mat_rows_channel_U_n_47;
  wire out_mat_rows_channel_U_n_5;
  wire [29:2]out_mat_rows_channel_dout;
  wire out_mat_rows_channel_empty_n;
  wire out_mat_rows_channel_full_n;
  wire pop__0;
  wire push;
  wire push_2;
  wire push_3;
  wire push_4;
  wire push_5;
  wire push_7;
  wire [31:0]rows_in;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [31:0]s_axis_video_TDATA;
  wire [0:0]s_axis_video_TLAST;
  wire s_axis_video_TREADY;
  wire [0:0]s_axis_video_TUSER;
  wire s_axis_video_TVALID;
  wire start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n;
  wire start_once_reg;
  wire [31:0]sub_fu_114_p2;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_n_2;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_n_3;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_n_4;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_n_7;
  wire [23:0]xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_out_mat_data_din;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read;

  assign m_axis_video_TDEST[0] = \<const0> ;
  assign m_axis_video_TID[0] = \<const0> ;
  assign m_axis_video_TKEEP[2] = \<const0> ;
  assign m_axis_video_TKEEP[1] = \<const0> ;
  assign m_axis_video_TKEEP[0] = \<const0> ;
  assign m_axis_video_TSTRB[2] = \<const0> ;
  assign m_axis_video_TSTRB[1] = \<const0> ;
  assign m_axis_video_TSTRB[0] = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_AXIVideo2ColorMat_20_1080_1920_1_2_s AXIVideo2ColorMat_20_1080_1920_1_2_U0
       (.AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .\B_V_data_1_state_reg[1] (s_axis_video_TREADY),
        .CO(icmp_ln56_fu_255_p2),
        .DI({in_mat_cols_c10_channel_U_n_48,in_mat_cols_c10_channel_U_n_49,in_mat_cols_c10_channel_U_n_50,in_mat_cols_c10_channel_U_n_51}),
        .Q({ap_CS_fsm_state5,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_36}),
        .S({in_mat_cols_c10_channel_U_n_52,in_mat_cols_c10_channel_U_n_53,in_mat_cols_c10_channel_U_n_54,in_mat_cols_c10_channel_U_n_55}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg({in_mat_cols_c10_channel_U_n_14,in_mat_cols_c10_channel_U_n_15,in_mat_cols_c10_channel_U_n_16,in_mat_cols_c10_channel_U_n_17}),
        .ap_enable_reg_pp0_iter1_reg_0({in_mat_cols_c10_channel_U_n_10,in_mat_cols_c10_channel_U_n_11,in_mat_cols_c10_channel_U_n_12,in_mat_cols_c10_channel_U_n_13}),
        .ap_loop_init(\grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178/ap_loop_init ),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\axi_data_fu_86_reg[29] (AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_data_din),
        .cmp41_fu_237_p2_carry__0_0(in_mat_cols_c10_channel_U_n_80),
        .cmp41_fu_237_p2_carry__0_1({in_mat_cols_c10_channel_U_n_60,in_mat_cols_c10_channel_U_n_61,in_mat_cols_c10_channel_U_n_62,in_mat_cols_c10_channel_U_n_63}),
        .cmp41_fu_237_p2_carry__0_2({in_mat_cols_c10_channel_U_n_56,in_mat_cols_c10_channel_U_n_57,in_mat_cols_c10_channel_U_n_58,in_mat_cols_c10_channel_U_n_59}),
        .cmp41_fu_237_p2_carry__1_0({in_mat_cols_c10_channel_U_n_28,in_mat_cols_c10_channel_U_n_29,in_mat_cols_c10_channel_U_n_30,in_mat_cols_c10_channel_U_n_31}),
        .cmp41_fu_237_p2_carry__1_1({in_mat_cols_c10_channel_U_n_24,in_mat_cols_c10_channel_U_n_25,in_mat_cols_c10_channel_U_n_26,in_mat_cols_c10_channel_U_n_27}),
        .i_fu_880(i_fu_880),
        .icmp_ln56_fu_255_p2_carry__0_0({in_mat_rows_c9_channel_U_n_21,in_mat_rows_c9_channel_U_n_22,in_mat_rows_c9_channel_U_n_23,in_mat_rows_c9_channel_U_n_24}),
        .icmp_ln56_fu_255_p2_carry__0_1({in_mat_rows_c9_channel_U_n_41,in_mat_rows_c9_channel_U_n_42,in_mat_rows_c9_channel_U_n_43,in_mat_rows_c9_channel_U_n_44}),
        .icmp_ln56_fu_255_p2_carry__1_0({in_mat_rows_c9_channel_U_n_45,in_mat_rows_c9_channel_U_n_46,in_mat_rows_c9_channel_U_n_47,in_mat_rows_c9_channel_U_n_48}),
        .icmp_ln56_fu_255_p2_carry__1_1({in_mat_rows_c9_channel_U_n_49,in_mat_rows_c9_channel_U_n_50,in_mat_rows_c9_channel_U_n_51,in_mat_rows_c9_channel_U_n_52}),
        .icmp_ln56_fu_255_p2_carry__2_0({in_mat_rows_c9_channel_U_n_17,in_mat_rows_c9_channel_U_n_18,in_mat_rows_c9_channel_U_n_19,in_mat_rows_c9_channel_U_n_20}),
        .icmp_ln56_fu_255_p2_carry__2_1({in_mat_rows_c9_channel_U_n_13,in_mat_rows_c9_channel_U_n_14,in_mat_rows_c9_channel_U_n_15,in_mat_rows_c9_channel_U_n_16}),
        .icmp_ln62_fu_197_p2_carry__1({in_mat_cols_c10_channel_U_n_40,in_mat_cols_c10_channel_U_n_41,in_mat_cols_c10_channel_U_n_42,in_mat_cols_c10_channel_U_n_43}),
        .icmp_ln62_fu_197_p2_carry__1_0({in_mat_cols_c10_channel_U_n_44,in_mat_cols_c10_channel_U_n_45,in_mat_cols_c10_channel_U_n_46,in_mat_cols_c10_channel_U_n_47}),
        .icmp_ln62_fu_197_p2_carry__2({in_mat_cols_c10_channel_U_n_36,in_mat_cols_c10_channel_U_n_37,in_mat_cols_c10_channel_U_n_38,in_mat_cols_c10_channel_U_n_39}),
        .icmp_ln62_fu_197_p2_carry__2_0({in_mat_cols_c10_channel_U_n_32,in_mat_cols_c10_channel_U_n_33,in_mat_cols_c10_channel_U_n_34,in_mat_cols_c10_channel_U_n_35}),
        .in_mat_cols_c10_channel_empty_n(in_mat_cols_c10_channel_empty_n),
        .in_mat_data_full_n(in_mat_data_full_n),
        .in_mat_rows_c9_channel_empty_n(in_mat_rows_c9_channel_empty_n),
        .\j_fu_78_reg[30] ({AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_38,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_39,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_40,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_41,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_42,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_43,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_44,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_45,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_46,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_47,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_48,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_49,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_50,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_51,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_52,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_53,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_54,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_55,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_56,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_57,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_58,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_59,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_60,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_61,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_62,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_63,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_64,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_65,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_66,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_67,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_68}),
        .out(i_fu_88_reg),
        .push(push),
        .s_axis_video_TDATA(s_axis_video_TDATA[29:0]),
        .s_axis_video_TLAST(s_axis_video_TLAST),
        .s_axis_video_TUSER(s_axis_video_TUSER),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n(start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n),
        .start_once_reg(start_once_reg),
        .start_once_reg_reg_0({in_mat_rows_c9_channel_U_n_9,in_mat_rows_c9_channel_U_n_10,in_mat_rows_c9_channel_U_n_11,in_mat_rows_c9_channel_U_n_12}),
        .start_once_reg_reg_1({in_mat_rows_c9_channel_U_n_5,in_mat_rows_c9_channel_U_n_6,in_mat_rows_c9_channel_U_n_7,in_mat_rows_c9_channel_U_n_8}),
        .\xor_ln81_reg_356_reg[0]_0 ({in_mat_cols_c10_channel_U_n_6,in_mat_cols_c10_channel_U_n_7,in_mat_cols_c10_channel_U_n_8,in_mat_cols_c10_channel_U_n_9}),
        .\xor_ln81_reg_356_reg[0]_1 ({in_mat_cols_c10_channel_U_n_2,in_mat_cols_c10_channel_U_n_3,in_mat_cols_c10_channel_U_n_4,in_mat_cols_c10_channel_U_n_5}),
        .\xor_ln81_reg_356_reg[0]_2 ({in_mat_cols_c10_channel_U_n_21,in_mat_cols_c10_channel_U_n_22,in_mat_cols_c10_channel_U_n_23}),
        .\xor_ln81_reg_356_reg[0]_3 ({in_mat_cols_c10_channel_U_n_18,in_mat_cols_c10_channel_U_n_19,in_mat_cols_c10_channel_U_n_20}));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_Block_entry1_proc Block_entry1_proc_U0
       (.Block_entry1_proc_U0_ap_ready(Block_entry1_proc_U0_ap_ready),
        .Q(rows_in),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg),
        .ap_done_reg_reg_0(control_s_axi_U_n_145),
        .ap_return_2_preg(ap_return_2_preg),
        .ap_return_3_preg(ap_return_3_preg),
        .\ap_return_3_preg_reg[31]_0 (cols_in),
        .ap_rst_n_inv(ap_rst_n_inv));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_ColorMat2AXIvideo_16_1080_1920_1_2_s ColorMat2AXIvideo_16_1080_1920_1_2_U0
       (.\B_V_data_1_state_reg[0] (m_axis_video_TVALID),
        .ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .D(out_mat_data_dout),
        .DI({out_mat_rows_channel_U_n_2,out_mat_rows_channel_U_n_3,out_mat_rows_channel_U_n_4,out_mat_rows_channel_U_n_5}),
        .Q({ap_CS_fsm_state4,ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_4}),
        .S(out_mat_rows_channel_U_n_34),
        .\ap_CS_fsm_reg[3]_0 (ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_2),
        .\ap_CS_fsm_reg[3]_1 (ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_42),
        .\ap_CS_fsm_reg[4]_0 ({out_mat_rows_channel_U_n_44,out_mat_rows_channel_U_n_45,out_mat_rows_channel_U_n_46,out_mat_rows_channel_U_n_47}),
        .\ap_CS_fsm_reg[4]_1 (out_mat_rows_channel_U_n_43),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .empty_n_reg(ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_1),
        .empty_n_reg_0(ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_37),
        .empty_n_reg_1(ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_39),
        .\i_fu_62_reg[30]_0 (i_fu_62_reg),
        .icmp_ln116_1_fu_138_p2_carry__1_0({out_mat_rows_channel_U_n_35,out_mat_rows_channel_U_n_36,out_mat_rows_channel_U_n_37,out_mat_rows_channel_U_n_38}),
        .icmp_ln116_1_fu_138_p2_carry__2_0({out_mat_rows_channel_U_n_39,out_mat_rows_channel_U_n_40,out_mat_rows_channel_U_n_41,out_mat_rows_channel_U_n_42}),
        .icmp_ln116_1_fu_138_p2_carry__2_1(out_mat_rows_channel_dout),
        .icmp_ln116_fu_120_p2_carry__0_0(out_mat_cols_channel_U_n_66),
        .icmp_ln116_fu_120_p2_carry__0_1({out_mat_cols_channel_U_n_67,out_mat_cols_channel_U_n_68,out_mat_cols_channel_U_n_69,out_mat_cols_channel_U_n_70}),
        .icmp_ln116_fu_120_p2_carry__1_0({out_mat_cols_channel_U_n_71,out_mat_cols_channel_U_n_72,out_mat_cols_channel_U_n_73,out_mat_cols_channel_U_n_74}),
        .\icmp_ln116_reg_181_reg[0]_0 ({out_mat_cols_channel_U_n_75,out_mat_cols_channel_U_n_76,out_mat_cols_channel_U_n_77,out_mat_cols_channel_U_n_78}),
        .\icmp_ln116_reg_181_reg[0]_1 ({out_mat_cols_channel_U_n_79,out_mat_cols_channel_U_n_80,out_mat_cols_channel_U_n_81,out_mat_cols_channel_U_n_82}),
        .mOutPtr(mOutPtr_6),
        .mOutPtr16_out(mOutPtr16_out_1),
        .mOutPtr16_out_0(mOutPtr16_out_0),
        .mOutPtr16_out_1(mOutPtr16_out),
        .m_axis_video_TDATA(m_axis_video_TDATA),
        .m_axis_video_TLAST(m_axis_video_TLAST),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TUSER(m_axis_video_TUSER),
        .out(out_mat_cols_channel_dout),
        .out_mat_cols_channel_empty_n(out_mat_cols_channel_empty_n),
        .out_mat_data_empty_n(out_mat_data_empty_n),
        .out_mat_rows_channel_empty_n(out_mat_rows_channel_empty_n),
        .push(push_7),
        .push_2(push_3),
        .push_3(push_2),
        .\sub_reg_176_reg[31]_0 (sub_fu_114_p2));
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    ap_sync_reg_channel_write_in_mat_cols_c10_channel_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sync_channel_write_in_mat_cols_c10_channel),
        .Q(ap_sync_reg_channel_write_in_mat_cols_c10_channel),
        .R(ap_sync_reg_channel_write_out_mat_rows_channel));
  FDRE #(
    .INIT(1'b0)) 
    ap_sync_reg_channel_write_in_mat_rows_c9_channel_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sync_channel_write_in_mat_rows_c9_channel),
        .Q(ap_sync_reg_channel_write_in_mat_rows_c9_channel),
        .R(ap_sync_reg_channel_write_out_mat_rows_channel));
  FDRE #(
    .INIT(1'b0)) 
    ap_sync_reg_channel_write_out_mat_cols_channel_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sync_channel_write_out_mat_cols_channel),
        .Q(ap_sync_reg_channel_write_out_mat_cols_channel),
        .R(ap_sync_reg_channel_write_out_mat_rows_channel));
  FDRE #(
    .INIT(1'b0)) 
    ap_sync_reg_channel_write_out_mat_rows_channel_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sync_channel_write_out_mat_rows_channel),
        .Q(ap_sync_reg_channel_write_out_mat_rows_channel_reg_n_0),
        .R(ap_sync_reg_channel_write_out_mat_rows_channel));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_control_s_axi control_s_axi_U
       (.Block_entry1_proc_U0_ap_ready(Block_entry1_proc_U0_ap_ready),
        .Block_entry1_proc_U0_ap_start(Block_entry1_proc_U0_ap_start),
        .ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_control_WREADY),
        .Q(cols_in),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg),
        .ap_idle(ap_idle),
        .ap_return_2_preg(ap_return_2_preg),
        .ap_return_3_preg(ap_return_3_preg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_sync_channel_write_in_mat_cols_c10_channel(ap_sync_channel_write_in_mat_cols_c10_channel),
        .ap_sync_channel_write_in_mat_rows_c9_channel(ap_sync_channel_write_in_mat_rows_c9_channel),
        .ap_sync_channel_write_out_mat_cols_channel(ap_sync_channel_write_out_mat_cols_channel),
        .ap_sync_channel_write_out_mat_rows_channel(ap_sync_channel_write_out_mat_rows_channel),
        .ap_sync_reg_channel_write_in_mat_cols_c10_channel(ap_sync_reg_channel_write_in_mat_cols_c10_channel),
        .ap_sync_reg_channel_write_in_mat_rows_c9_channel(ap_sync_reg_channel_write_in_mat_rows_c9_channel),
        .ap_sync_reg_channel_write_out_mat_cols_channel(ap_sync_reg_channel_write_out_mat_cols_channel),
        .ap_sync_reg_channel_write_out_mat_rows_channel(ap_sync_reg_channel_write_out_mat_rows_channel),
        .ap_sync_reg_channel_write_out_mat_rows_channel_reg(ap_sync_reg_channel_write_out_mat_rows_channel_reg_n_0),
        .in(Block_entry1_proc_U0_ap_return_3),
        .in_mat_cols_c10_channel_full_n(in_mat_cols_c10_channel_full_n),
        .in_mat_rows_c9_channel_full_n(in_mat_rows_c9_channel_full_n),
        .int_ap_start_reg_0(Block_entry1_proc_U0_ap_return_2),
        .int_ap_start_reg_1(control_s_axi_U_n_145),
        .\int_rows_in_reg[31]_0 (rows_in),
        .interrupt(interrupt),
        .out_mat_cols_channel_full_n(out_mat_cols_channel_full_n),
        .out_mat_rows_channel_full_n(out_mat_rows_channel_full_n),
        .push(push_5),
        .push_0(push_4),
        .push_1(push_3),
        .push_2(push_2),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S in_mat_cols_c10_channel_U
       (.CO(icmp_ln56_fu_255_p2),
        .D(in_mat_cols_c10_channel_dout),
        .DI({in_mat_cols_c10_channel_U_n_48,in_mat_cols_c10_channel_U_n_49,in_mat_cols_c10_channel_U_n_50,in_mat_cols_c10_channel_U_n_51}),
        .Q(ap_CS_fsm_state5),
        .S({in_mat_cols_c10_channel_U_n_52,in_mat_cols_c10_channel_U_n_53,in_mat_cols_c10_channel_U_n_54,in_mat_cols_c10_channel_U_n_55}),
        .\SRL_SIG_reg[0][14] ({in_mat_cols_c10_channel_U_n_44,in_mat_cols_c10_channel_U_n_45,in_mat_cols_c10_channel_U_n_46,in_mat_cols_c10_channel_U_n_47}),
        .\SRL_SIG_reg[0][15] ({in_mat_cols_c10_channel_U_n_40,in_mat_cols_c10_channel_U_n_41,in_mat_cols_c10_channel_U_n_42,in_mat_cols_c10_channel_U_n_43}),
        .\SRL_SIG_reg[0][16] ({in_mat_cols_c10_channel_U_n_28,in_mat_cols_c10_channel_U_n_29,in_mat_cols_c10_channel_U_n_30,in_mat_cols_c10_channel_U_n_31}),
        .\SRL_SIG_reg[0][1] (in_mat_cols_c10_channel_U_n_80),
        .\SRL_SIG_reg[0][22] ({in_mat_cols_c10_channel_U_n_32,in_mat_cols_c10_channel_U_n_33,in_mat_cols_c10_channel_U_n_34,in_mat_cols_c10_channel_U_n_35}),
        .\SRL_SIG_reg[0][23] ({in_mat_cols_c10_channel_U_n_36,in_mat_cols_c10_channel_U_n_37,in_mat_cols_c10_channel_U_n_38,in_mat_cols_c10_channel_U_n_39}),
        .\SRL_SIG_reg[0][24] ({in_mat_cols_c10_channel_U_n_6,in_mat_cols_c10_channel_U_n_7,in_mat_cols_c10_channel_U_n_8,in_mat_cols_c10_channel_U_n_9}),
        .\SRL_SIG_reg[0][30] ({in_mat_cols_c10_channel_U_n_10,in_mat_cols_c10_channel_U_n_11,in_mat_cols_c10_channel_U_n_12,in_mat_cols_c10_channel_U_n_13}),
        .\SRL_SIG_reg[0][30]_0 ({in_mat_cols_c10_channel_U_n_21,in_mat_cols_c10_channel_U_n_22,in_mat_cols_c10_channel_U_n_23}),
        .\SRL_SIG_reg[0][31] ({in_mat_cols_c10_channel_U_n_18,in_mat_cols_c10_channel_U_n_19,in_mat_cols_c10_channel_U_n_20}),
        .\SRL_SIG_reg[0][9] ({in_mat_cols_c10_channel_U_n_60,in_mat_cols_c10_channel_U_n_61,in_mat_cols_c10_channel_U_n_62,in_mat_cols_c10_channel_U_n_63}),
        .\SRL_SIG_reg[1][17] ({in_mat_cols_c10_channel_U_n_24,in_mat_cols_c10_channel_U_n_25,in_mat_cols_c10_channel_U_n_26,in_mat_cols_c10_channel_U_n_27}),
        .\SRL_SIG_reg[1][25] ({in_mat_cols_c10_channel_U_n_2,in_mat_cols_c10_channel_U_n_3,in_mat_cols_c10_channel_U_n_4,in_mat_cols_c10_channel_U_n_5}),
        .\SRL_SIG_reg[1][8] ({in_mat_cols_c10_channel_U_n_56,in_mat_cols_c10_channel_U_n_57,in_mat_cols_c10_channel_U_n_58,in_mat_cols_c10_channel_U_n_59}),
        .ap_clk(ap_clk),
        .ap_loop_init(\grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178/ap_loop_init ),
        .ap_rst_n_inv(ap_rst_n_inv),
        .icmp_ln62_fu_197_p2_carry__2({AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_38,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_39,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_40,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_41,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_42,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_43,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_44,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_45,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_46,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_47,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_48,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_49,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_50,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_51,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_52,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_53,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_54,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_55,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_56,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_57,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_58,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_59,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_60,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_61,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_62,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_63,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_64,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_65,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_66,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_67,AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_68}),
        .in(Block_entry1_proc_U0_ap_return_3),
        .in_mat_cols_c10_channel_empty_n(in_mat_cols_c10_channel_empty_n),
        .in_mat_cols_c10_channel_full_n(in_mat_cols_c10_channel_full_n),
        .\j_fu_78_reg[30] ({in_mat_cols_c10_channel_U_n_14,in_mat_cols_c10_channel_U_n_15,in_mat_cols_c10_channel_U_n_16,in_mat_cols_c10_channel_U_n_17}),
        .\mOutPtr_reg[2]_0 (in_mat_rows_c9_channel_U_n_3),
        .push(push_5));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S_0 in_mat_cols_c_U
       (.AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .D(in_mat_cols_c_dout),
        .Q(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_n_4),
        .\SRL_SIG_reg[0][15] (in_mat_cols_c10_channel_dout),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\i_fu_88_reg[30] (AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_36),
        .\i_fu_88_reg[30]_0 (in_mat_rows_c9_channel_U_n_2),
        .in_mat_cols_c_empty_n(in_mat_cols_c_empty_n),
        .in_mat_rows_c_empty_n(in_mat_rows_c_empty_n),
        .in_mat_rows_c_full_n(in_mat_rows_c_full_n),
        .xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w30_d2_S in_mat_data_U
       (.D({in_mat_data_U_n_3,in_mat_data_U_n_4,in_mat_data_U_n_5,in_mat_data_U_n_6,in_mat_data_U_n_7,in_mat_data_U_n_8,in_mat_data_U_n_9,in_mat_data_U_n_10,in_mat_data_U_n_11,in_mat_data_U_n_12,in_mat_data_U_n_13,in_mat_data_U_n_14,in_mat_data_U_n_15,in_mat_data_U_n_16,in_mat_data_U_n_17,in_mat_data_U_n_18,in_mat_data_U_n_19,in_mat_data_U_n_20,in_mat_data_U_n_21,in_mat_data_U_n_22,in_mat_data_U_n_23,in_mat_data_U_n_24,in_mat_data_U_n_25,in_mat_data_U_n_26,in_mat_data_U_n_27,in_mat_data_U_n_28,in_mat_data_U_n_29,in_mat_data_U_n_30,in_mat_data_U_n_31,in_mat_data_U_n_32}),
        .\SRL_SIG_reg[0][29] (AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_data_din),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .icmp_ln185_reg_1508(\grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/icmp_ln185_reg_1508 ),
        .icmp_ln199_reg_1519(\grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/icmp_ln199_reg_1519 ),
        .in_mat_data_empty_n(in_mat_data_empty_n),
        .in_mat_data_full_n(in_mat_data_full_n),
        .\mOutPtr_reg[0]_0 (mOutPtr),
        .\mOutPtr_reg[0]_1 (xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_n_2),
        .pop__0(pop__0),
        .push(push));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S_1 in_mat_rows_c9_channel_U
       (.CO(icmp_ln56_fu_255_p2),
        .D(in_mat_rows_c9_channel_dout),
        .Q(ap_CS_fsm_state5),
        .\SRL_SIG_reg[0][15] ({in_mat_rows_c9_channel_U_n_49,in_mat_rows_c9_channel_U_n_50,in_mat_rows_c9_channel_U_n_51,in_mat_rows_c9_channel_U_n_52}),
        .\SRL_SIG_reg[0][22] ({in_mat_rows_c9_channel_U_n_13,in_mat_rows_c9_channel_U_n_14,in_mat_rows_c9_channel_U_n_15,in_mat_rows_c9_channel_U_n_16}),
        .\SRL_SIG_reg[0][7] ({in_mat_rows_c9_channel_U_n_41,in_mat_rows_c9_channel_U_n_42,in_mat_rows_c9_channel_U_n_43,in_mat_rows_c9_channel_U_n_44}),
        .\SRL_SIG_reg[1][30] ({in_mat_rows_c9_channel_U_n_5,in_mat_rows_c9_channel_U_n_6,in_mat_rows_c9_channel_U_n_7,in_mat_rows_c9_channel_U_n_8}),
        .\ap_CS_fsm_reg[4] (in_mat_rows_c9_channel_U_n_3),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .ap_rst_n_inv(ap_rst_n_inv),
        .empty_n_reg_0(in_mat_rows_c9_channel_U_n_2),
        .i_fu_880(i_fu_880),
        .\i_fu_88_reg[14] ({in_mat_rows_c9_channel_U_n_45,in_mat_rows_c9_channel_U_n_46,in_mat_rows_c9_channel_U_n_47,in_mat_rows_c9_channel_U_n_48}),
        .\i_fu_88_reg[22] ({in_mat_rows_c9_channel_U_n_17,in_mat_rows_c9_channel_U_n_18,in_mat_rows_c9_channel_U_n_19,in_mat_rows_c9_channel_U_n_20}),
        .\i_fu_88_reg[30] ({in_mat_rows_c9_channel_U_n_9,in_mat_rows_c9_channel_U_n_10,in_mat_rows_c9_channel_U_n_11,in_mat_rows_c9_channel_U_n_12}),
        .\i_fu_88_reg[6] ({in_mat_rows_c9_channel_U_n_21,in_mat_rows_c9_channel_U_n_22,in_mat_rows_c9_channel_U_n_23,in_mat_rows_c9_channel_U_n_24}),
        .in(Block_entry1_proc_U0_ap_return_2),
        .in_mat_cols_c10_channel_empty_n(in_mat_cols_c10_channel_empty_n),
        .in_mat_rows_c9_channel_empty_n(in_mat_rows_c9_channel_empty_n),
        .in_mat_rows_c9_channel_full_n(in_mat_rows_c9_channel_full_n),
        .int_ap_idle_reg(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_n_3),
        .out(i_fu_88_reg),
        .out_mat_cols_channel_empty_n(out_mat_cols_channel_empty_n),
        .push(push_4),
        .start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n(start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n),
        .start_once_reg(start_once_reg));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S_2 in_mat_rows_c_U
       (.A(in_mat_rows_c_dout),
        .AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .D(in_mat_rows_c9_channel_dout),
        .Q(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_n_4),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in_mat_cols_c_empty_n(in_mat_cols_c_empty_n),
        .in_mat_rows_c_empty_n(in_mat_rows_c_empty_n),
        .in_mat_rows_c_full_n(in_mat_rows_c_full_n),
        .xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d4_S out_mat_cols_channel_U
       (.ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .ap_clk(ap_clk),
        .ap_clk_0(sub_fu_114_p2),
        .ap_clk_1(out_mat_cols_channel_U_n_66),
        .ap_clk_2({out_mat_cols_channel_U_n_67,out_mat_cols_channel_U_n_68,out_mat_cols_channel_U_n_69,out_mat_cols_channel_U_n_70}),
        .ap_clk_3({out_mat_cols_channel_U_n_71,out_mat_cols_channel_U_n_72,out_mat_cols_channel_U_n_73,out_mat_cols_channel_U_n_74}),
        .ap_clk_4({out_mat_cols_channel_U_n_75,out_mat_cols_channel_U_n_76,out_mat_cols_channel_U_n_77,out_mat_cols_channel_U_n_78}),
        .ap_clk_5({out_mat_cols_channel_U_n_79,out_mat_cols_channel_U_n_80,out_mat_cols_channel_U_n_81,out_mat_cols_channel_U_n_82}),
        .ap_rst_n_inv(ap_rst_n_inv),
        .full_n_reg_0(ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_37),
        .in(Block_entry1_proc_U0_ap_return_3),
        .mOutPtr16_out(mOutPtr16_out_1),
        .out(out_mat_cols_channel_dout),
        .out_mat_cols_channel_empty_n(out_mat_cols_channel_empty_n),
        .out_mat_cols_channel_full_n(out_mat_cols_channel_full_n),
        .push(push_3));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w24_d2_S out_mat_data_U
       (.D(out_mat_data_dout),
        .E(push_7),
        .Q(ap_CS_fsm_state4),
        .\SRL_SIG_reg[0][23] (xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_out_mat_data_din),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .mOutPtr16_out(mOutPtr16_out),
        .\mOutPtr_reg[0]_0 (mOutPtr_6),
        .\mOutPtr_reg[0]_1 (ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_1),
        .\mOutPtr_reg[1]_0 (ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_2),
        .\mOutPtr_reg[2]_0 (ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_42),
        .out_mat_data_empty_n(out_mat_data_empty_n),
        .out_mat_data_full_n(out_mat_data_full_n));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d4_S_3 out_mat_rows_channel_U
       (.ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .DI({out_mat_rows_channel_U_n_2,out_mat_rows_channel_U_n_3,out_mat_rows_channel_U_n_4,out_mat_rows_channel_U_n_5}),
        .S(out_mat_rows_channel_U_n_34),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .full_n_reg_0(ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_39),
        .\i_fu_62_reg[14] ({out_mat_rows_channel_U_n_35,out_mat_rows_channel_U_n_36,out_mat_rows_channel_U_n_37,out_mat_rows_channel_U_n_38}),
        .\i_fu_62_reg[22] ({out_mat_rows_channel_U_n_39,out_mat_rows_channel_U_n_40,out_mat_rows_channel_U_n_41,out_mat_rows_channel_U_n_42}),
        .\i_fu_62_reg[30] (out_mat_rows_channel_U_n_43),
        .\i_fu_62_reg[30]_0 ({out_mat_rows_channel_U_n_44,out_mat_rows_channel_U_n_45,out_mat_rows_channel_U_n_46,out_mat_rows_channel_U_n_47}),
        .icmp_ln116_1_fu_138_p2_carry__2(i_fu_62_reg),
        .in(Block_entry1_proc_U0_ap_return_2),
        .mOutPtr16_out(mOutPtr16_out_0),
        .out(out_mat_rows_channel_dout),
        .out_mat_rows_channel_empty_n(out_mat_rows_channel_empty_n),
        .out_mat_rows_channel_full_n(out_mat_rows_channel_full_n),
        .push(push_2));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0 start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_U
       (.ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in_mat_cols_c10_channel_empty_n(in_mat_cols_c10_channel_empty_n),
        .in_mat_rows_c9_channel_empty_n(in_mat_rows_c9_channel_empty_n),
        .\mOutPtr_reg[0]_0 (xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_n_7),
        .start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n(start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n),
        .start_once_reg(start_once_reg),
        .xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready),
        .xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0
       (.A(in_mat_rows_c_dout),
        .Block_entry1_proc_U0_ap_start(Block_entry1_proc_U0_ap_start),
        .D(in_mat_cols_c_dout),
        .E(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read),
        .Q(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_n_4),
        .\ap_CS_fsm_reg[0]_0 (xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_n_3),
        .\ap_CS_fsm_reg[4]_0 (xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_n_7),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter5_reg(push_7),
        .\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ({in_mat_data_U_n_3,in_mat_data_U_n_4,in_mat_data_U_n_5,in_mat_data_U_n_6,in_mat_data_U_n_7,in_mat_data_U_n_8,in_mat_data_U_n_9,in_mat_data_U_n_10,in_mat_data_U_n_11,in_mat_data_U_n_12,in_mat_data_U_n_13,in_mat_data_U_n_14,in_mat_data_U_n_15,in_mat_data_U_n_16,in_mat_data_U_n_17,in_mat_data_U_n_18,in_mat_data_U_n_19,in_mat_data_U_n_20,in_mat_data_U_n_21,in_mat_data_U_n_22,in_mat_data_U_n_23,in_mat_data_U_n_24,in_mat_data_U_n_25,in_mat_data_U_n_26,in_mat_data_U_n_27,in_mat_data_U_n_28,in_mat_data_U_n_29,in_mat_data_U_n_30,in_mat_data_U_n_31,in_mat_data_U_n_32}),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .empty_n_reg(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_n_2),
        .icmp_ln185_reg_1508(\grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/icmp_ln185_reg_1508 ),
        .icmp_ln199_reg_1519(\grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/icmp_ln199_reg_1519 ),
        .in_mat_cols_c_empty_n(in_mat_cols_c_empty_n),
        .in_mat_data_empty_n(in_mat_data_empty_n),
        .in_mat_rows_c_empty_n(in_mat_rows_c_empty_n),
        .int_ap_idle_reg(ColorMat2AXIvideo_16_1080_1920_1_2_U0_n_4),
        .int_ap_idle_reg_0(AXIVideo2ColorMat_20_1080_1920_1_2_U0_n_36),
        .\mOutPtr_reg[0] (mOutPtr),
        .out_mat_data_full_n(out_mat_data_full_n),
        .out_mat_rows_channel_empty_n(out_mat_rows_channel_empty_n),
        .pop__0(pop__0),
        .push(push),
        .\write_word_reg_1691_reg[23] (xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_out_mat_data_din),
        .xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready),
        .xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat
   (grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out,
    ap_loop_init,
    s_axis_video_TREADY_int_regslice__1,
    p_14_in,
    push,
    D,
    \j_fu_78_reg[30]_0 ,
    \ap_CS_fsm_reg[9] ,
    \last_reg_153_reg[0]_0 ,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg,
    \axi_data_fu_86_reg[29]_0 ,
    DI,
    S,
    icmp_ln62_fu_197_p2_carry__1_0,
    icmp_ln62_fu_197_p2_carry__1_1,
    icmp_ln62_fu_197_p2_carry__2_0,
    icmp_ln62_fu_197_p2_carry__2_1,
    ap_enable_reg_pp0_iter1_reg_0,
    ap_enable_reg_pp0_iter1_reg_1,
    \axi_last_3_fu_82_reg[0]_0 ,
    ap_clk,
    ap_rst_n_inv,
    ap_rst_n,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg,
    \B_V_data_1_state_reg[1] ,
    Q,
    in_mat_data_full_n,
    ap_done_cache_reg,
    \axi_last_3_fu_82_reg[0]_1 ,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg,
    ap_loop_init_int,
    cmp41_reg_351,
    axi_last_2_reg_148,
    select_ln81_reg_378,
    \axi_data_fu_86_reg[29]_1 );
  output grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out;
  output ap_loop_init;
  output s_axis_video_TREADY_int_regslice__1;
  output p_14_in;
  output push;
  output [1:0]D;
  output [30:0]\j_fu_78_reg[30]_0 ;
  output \ap_CS_fsm_reg[9] ;
  output \last_reg_153_reg[0]_0 ;
  output grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg;
  output [29:0]\axi_data_fu_86_reg[29]_0 ;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]icmp_ln62_fu_197_p2_carry__1_0;
  input [3:0]icmp_ln62_fu_197_p2_carry__1_1;
  input [3:0]icmp_ln62_fu_197_p2_carry__2_0;
  input [3:0]icmp_ln62_fu_197_p2_carry__2_1;
  input [3:0]ap_enable_reg_pp0_iter1_reg_0;
  input [3:0]ap_enable_reg_pp0_iter1_reg_1;
  input \axi_last_3_fu_82_reg[0]_0 ;
  input ap_clk;
  input ap_rst_n_inv;
  input ap_rst_n;
  input grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg;
  input \B_V_data_1_state_reg[1] ;
  input [3:0]Q;
  input in_mat_data_full_n;
  input ap_done_cache_reg;
  input \axi_last_3_fu_82_reg[0]_1 ;
  input grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg;
  input ap_loop_init_int;
  input cmp41_reg_351;
  input axi_last_2_reg_148;
  input select_ln81_reg_378;
  input [29:0]\axi_data_fu_86_reg[29]_1 ;

  wire \B_V_data_1_state_reg[1] ;
  wire [1:0]D;
  wire [3:0]DI;
  wire [3:0]Q;
  wire [3:0]S;
  wire [30:0]add_ln62_fu_203_p2;
  wire \ap_CS_fsm_reg[9] ;
  wire ap_clk;
  wire ap_done_cache_reg;
  wire ap_enable_reg_pp0_iter1;
  wire [3:0]ap_enable_reg_pp0_iter1_reg_0;
  wire [3:0]ap_enable_reg_pp0_iter1_reg_1;
  wire ap_loop_init;
  wire ap_loop_init_int;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [29:0]\axi_data_fu_86_reg[29]_0 ;
  wire [29:0]\axi_data_fu_86_reg[29]_1 ;
  wire axi_last_2_reg_148;
  wire axi_last_3_fu_823_out;
  wire \axi_last_3_fu_82_reg[0]_0 ;
  wire \axi_last_3_fu_82_reg[0]_1 ;
  wire \axi_last_3_fu_82_reg_n_0_[0] ;
  wire cmp41_reg_351;
  wire flow_control_loop_pipe_sequential_init_U_n_31;
  wire flow_control_loop_pipe_sequential_init_U_n_33;
  wire flow_control_loop_pipe_sequential_init_U_n_38;
  wire flow_control_loop_pipe_sequential_init_U_n_41;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg;
  wire icmp_ln62_fu_197_p2;
  wire icmp_ln62_fu_197_p2_carry__0_n_0;
  wire icmp_ln62_fu_197_p2_carry__0_n_1;
  wire icmp_ln62_fu_197_p2_carry__0_n_2;
  wire icmp_ln62_fu_197_p2_carry__0_n_3;
  wire [3:0]icmp_ln62_fu_197_p2_carry__1_0;
  wire [3:0]icmp_ln62_fu_197_p2_carry__1_1;
  wire icmp_ln62_fu_197_p2_carry__1_n_0;
  wire icmp_ln62_fu_197_p2_carry__1_n_1;
  wire icmp_ln62_fu_197_p2_carry__1_n_2;
  wire icmp_ln62_fu_197_p2_carry__1_n_3;
  wire [3:0]icmp_ln62_fu_197_p2_carry__2_0;
  wire [3:0]icmp_ln62_fu_197_p2_carry__2_1;
  wire icmp_ln62_fu_197_p2_carry__2_n_1;
  wire icmp_ln62_fu_197_p2_carry__2_n_2;
  wire icmp_ln62_fu_197_p2_carry__2_n_3;
  wire icmp_ln62_fu_197_p2_carry_n_0;
  wire icmp_ln62_fu_197_p2_carry_n_1;
  wire icmp_ln62_fu_197_p2_carry_n_2;
  wire icmp_ln62_fu_197_p2_carry_n_3;
  wire icmp_ln62_reg_275;
  wire in_mat_data_full_n;
  wire j_fu_78;
  wire [30:0]\j_fu_78_reg[30]_0 ;
  wire \last_reg_153_reg[0]_0 ;
  wire p_14_in;
  wire push;
  wire s_axis_video_TREADY_int_regslice__1;
  wire select_ln81_reg_378;
  wire [3:0]NLW_icmp_ln62_fu_197_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln62_fu_197_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln62_fu_197_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln62_fu_197_p2_carry__2_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_33),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \axi_data_2_fu_84[29]_i_4 
       (.I0(Q[3]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .I3(ap_loop_init_int),
        .O(\ap_CS_fsm_reg[9] ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[0] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [0]),
        .Q(\axi_data_fu_86_reg[29]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[10] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [10]),
        .Q(\axi_data_fu_86_reg[29]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[11] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [11]),
        .Q(\axi_data_fu_86_reg[29]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[12] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [12]),
        .Q(\axi_data_fu_86_reg[29]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[13] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [13]),
        .Q(\axi_data_fu_86_reg[29]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[14] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [14]),
        .Q(\axi_data_fu_86_reg[29]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[15] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [15]),
        .Q(\axi_data_fu_86_reg[29]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[16] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [16]),
        .Q(\axi_data_fu_86_reg[29]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[17] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [17]),
        .Q(\axi_data_fu_86_reg[29]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[18] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [18]),
        .Q(\axi_data_fu_86_reg[29]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[19] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [19]),
        .Q(\axi_data_fu_86_reg[29]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[1] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [1]),
        .Q(\axi_data_fu_86_reg[29]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[20] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [20]),
        .Q(\axi_data_fu_86_reg[29]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[21] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [21]),
        .Q(\axi_data_fu_86_reg[29]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[22] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [22]),
        .Q(\axi_data_fu_86_reg[29]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[23] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [23]),
        .Q(\axi_data_fu_86_reg[29]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[24] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [24]),
        .Q(\axi_data_fu_86_reg[29]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[25] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [25]),
        .Q(\axi_data_fu_86_reg[29]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[26] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [26]),
        .Q(\axi_data_fu_86_reg[29]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[27] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [27]),
        .Q(\axi_data_fu_86_reg[29]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[28] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [28]),
        .Q(\axi_data_fu_86_reg[29]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[29] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [29]),
        .Q(\axi_data_fu_86_reg[29]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[2] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [2]),
        .Q(\axi_data_fu_86_reg[29]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[3] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [3]),
        .Q(\axi_data_fu_86_reg[29]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[4] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [4]),
        .Q(\axi_data_fu_86_reg[29]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[5] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [5]),
        .Q(\axi_data_fu_86_reg[29]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[6] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [6]),
        .Q(\axi_data_fu_86_reg[29]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[7] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [7]),
        .Q(\axi_data_fu_86_reg[29]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[8] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [8]),
        .Q(\axi_data_fu_86_reg[29]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_data_fu_86_reg[9] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_data_fu_86_reg[29]_1 [9]),
        .Q(\axi_data_fu_86_reg[29]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_last_3_fu_82_reg[0] 
       (.C(ap_clk),
        .CE(axi_last_3_fu_823_out),
        .D(\axi_last_3_fu_82_reg[0]_0 ),
        .Q(\axi_last_3_fu_82_reg_n_0_[0] ),
        .R(1'b0));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_flow_control_loop_pipe_sequential_init_20 flow_control_loop_pipe_sequential_init_U
       (.\B_V_data_1_state_reg[1] (\B_V_data_1_state_reg[1] ),
        .CO(icmp_ln62_fu_197_p2),
        .D(add_ln62_fu_203_p2),
        .E(j_fu_78),
        .Q({Q[3],Q[1:0]}),
        .SR(flow_control_loop_pipe_sequential_init_U_n_38),
        .ap_clk(ap_clk),
        .ap_done_cache_reg_0(ap_done_cache_reg),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_reg(flow_control_loop_pipe_sequential_init_U_n_31),
        .ap_loop_init(ap_loop_init),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(flow_control_loop_pipe_sequential_init_U_n_33),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\axi_last_3_fu_82_reg[0] (\axi_last_3_fu_82_reg[0]_1 ),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg(D),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0(axi_last_3_fu_823_out),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg),
        .icmp_ln62_reg_275(icmp_ln62_reg_275),
        .\icmp_ln62_reg_275_reg[0] (flow_control_loop_pipe_sequential_init_U_n_41),
        .in_mat_data_full_n(in_mat_data_full_n),
        .\j_fu_78_reg[30] (\j_fu_78_reg[30]_0 ),
        .\last_reg_153_reg[0] (\axi_last_3_fu_82_reg_n_0_[0] ),
        .\last_reg_153_reg[0]_0 (grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out),
        .p_14_in(p_14_in),
        .push(push),
        .s_axis_video_TREADY_int_regslice__1(s_axis_video_TREADY_int_regslice__1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln62_fu_197_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln62_fu_197_p2_carry_n_0,icmp_ln62_fu_197_p2_carry_n_1,icmp_ln62_fu_197_p2_carry_n_2,icmp_ln62_fu_197_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_icmp_ln62_fu_197_p2_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln62_fu_197_p2_carry__0
       (.CI(icmp_ln62_fu_197_p2_carry_n_0),
        .CO({icmp_ln62_fu_197_p2_carry__0_n_0,icmp_ln62_fu_197_p2_carry__0_n_1,icmp_ln62_fu_197_p2_carry__0_n_2,icmp_ln62_fu_197_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(icmp_ln62_fu_197_p2_carry__1_0),
        .O(NLW_icmp_ln62_fu_197_p2_carry__0_O_UNCONNECTED[3:0]),
        .S(icmp_ln62_fu_197_p2_carry__1_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln62_fu_197_p2_carry__1
       (.CI(icmp_ln62_fu_197_p2_carry__0_n_0),
        .CO({icmp_ln62_fu_197_p2_carry__1_n_0,icmp_ln62_fu_197_p2_carry__1_n_1,icmp_ln62_fu_197_p2_carry__1_n_2,icmp_ln62_fu_197_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(icmp_ln62_fu_197_p2_carry__2_0),
        .O(NLW_icmp_ln62_fu_197_p2_carry__1_O_UNCONNECTED[3:0]),
        .S(icmp_ln62_fu_197_p2_carry__2_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln62_fu_197_p2_carry__2
       (.CI(icmp_ln62_fu_197_p2_carry__1_n_0),
        .CO({icmp_ln62_fu_197_p2,icmp_ln62_fu_197_p2_carry__2_n_1,icmp_ln62_fu_197_p2_carry__2_n_2,icmp_ln62_fu_197_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(ap_enable_reg_pp0_iter1_reg_0),
        .O(NLW_icmp_ln62_fu_197_p2_carry__2_O_UNCONNECTED[3:0]),
        .S(ap_enable_reg_pp0_iter1_reg_1));
  FDRE \icmp_ln62_reg_275_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_41),
        .Q(icmp_ln62_reg_275),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[0] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[0]),
        .Q(\j_fu_78_reg[30]_0 [0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[10] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[10]),
        .Q(\j_fu_78_reg[30]_0 [10]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[11] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[11]),
        .Q(\j_fu_78_reg[30]_0 [11]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[12] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[12]),
        .Q(\j_fu_78_reg[30]_0 [12]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[13] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[13]),
        .Q(\j_fu_78_reg[30]_0 [13]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[14] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[14]),
        .Q(\j_fu_78_reg[30]_0 [14]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[15] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[15]),
        .Q(\j_fu_78_reg[30]_0 [15]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[16] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[16]),
        .Q(\j_fu_78_reg[30]_0 [16]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[17] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[17]),
        .Q(\j_fu_78_reg[30]_0 [17]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[18] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[18]),
        .Q(\j_fu_78_reg[30]_0 [18]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[19] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[19]),
        .Q(\j_fu_78_reg[30]_0 [19]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[1] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[1]),
        .Q(\j_fu_78_reg[30]_0 [1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[20] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[20]),
        .Q(\j_fu_78_reg[30]_0 [20]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[21] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[21]),
        .Q(\j_fu_78_reg[30]_0 [21]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[22] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[22]),
        .Q(\j_fu_78_reg[30]_0 [22]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[23] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[23]),
        .Q(\j_fu_78_reg[30]_0 [23]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[24] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[24]),
        .Q(\j_fu_78_reg[30]_0 [24]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[25] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[25]),
        .Q(\j_fu_78_reg[30]_0 [25]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[26] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[26]),
        .Q(\j_fu_78_reg[30]_0 [26]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[27] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[27]),
        .Q(\j_fu_78_reg[30]_0 [27]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[28] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[28]),
        .Q(\j_fu_78_reg[30]_0 [28]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[29] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[29]),
        .Q(\j_fu_78_reg[30]_0 [29]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[2] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[2]),
        .Q(\j_fu_78_reg[30]_0 [2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[30] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[30]),
        .Q(\j_fu_78_reg[30]_0 [30]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[3] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[3]),
        .Q(\j_fu_78_reg[30]_0 [3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[4] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[4]),
        .Q(\j_fu_78_reg[30]_0 [4]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[5] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[5]),
        .Q(\j_fu_78_reg[30]_0 [5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[6] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[6]),
        .Q(\j_fu_78_reg[30]_0 [6]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[7] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[7]),
        .Q(\j_fu_78_reg[30]_0 [7]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[8] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[8]),
        .Q(\j_fu_78_reg[30]_0 [8]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_78_reg[9] 
       (.C(ap_clk),
        .CE(j_fu_78),
        .D(add_ln62_fu_203_p2[9]),
        .Q(\j_fu_78_reg[30]_0 [9]),
        .R(flow_control_loop_pipe_sequential_init_U_n_38));
  FDRE \last_reg_153_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_31),
        .Q(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \select_ln81_reg_378[0]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out),
        .I1(cmp41_reg_351),
        .I2(axi_last_2_reg_148),
        .I3(Q[2]),
        .I4(select_ln81_reg_378),
        .O(\last_reg_153_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt
   (ap_loop_init_int,
    axi_data_2_fu_841__0,
    D,
    ap_phi_mux_last_phi_fu_117_p40_in,
    \axi_last_reg_103_reg[0]_0 ,
    \ap_CS_fsm_reg[8] ,
    ap_rst_n_inv,
    ap_clk,
    Q,
    s_axis_video_TVALID_int_regslice,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out,
    ap_rst_n,
    s_axis_video_TLAST_int_regslice,
    select_ln81_reg_378,
    axi_last_4_loc_fu_92);
  output ap_loop_init_int;
  output axi_data_2_fu_841__0;
  output [1:0]D;
  output ap_phi_mux_last_phi_fu_117_p40_in;
  output \axi_last_reg_103_reg[0]_0 ;
  output \ap_CS_fsm_reg[8] ;
  input ap_rst_n_inv;
  input ap_clk;
  input [1:0]Q;
  input s_axis_video_TVALID_int_regslice;
  input grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg;
  input grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out;
  input ap_rst_n;
  input s_axis_video_TLAST_int_regslice;
  input select_ln81_reg_378;
  input axi_last_4_loc_fu_92;

  wire [1:0]D;
  wire [1:0]Q;
  wire \ap_CS_fsm_reg[8] ;
  wire ap_clk;
  wire ap_loop_init_int;
  wire ap_phi_mux_last_phi_fu_117_p40_in;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_data_2_fu_841__0;
  wire axi_last_4_loc_fu_92;
  wire \axi_last_reg_103_reg[0]_0 ;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg;
  wire last_reg_114;
  wire s_axis_video_TLAST_int_regslice;
  wire s_axis_video_TVALID_int_regslice;
  wire select_ln81_reg_378;

  FDRE \axi_last_reg_103_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_5),
        .Q(last_reg_114),
        .R(1'b0));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_flow_control_loop_pipe_sequential_init_19 flow_control_loop_pipe_sequential_init_U
       (.\B_V_data_1_state_reg[0] (flow_control_loop_pipe_sequential_init_U_n_5),
        .D(D),
        .Q(Q),
        .\ap_CS_fsm_reg[8] (\ap_CS_fsm_reg[8] ),
        .ap_clk(ap_clk),
        .ap_loop_init_int_reg_0(ap_loop_init_int),
        .ap_phi_mux_last_phi_fu_117_p40_in(ap_phi_mux_last_phi_fu_117_p40_in),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_data_2_fu_841__0(axi_data_2_fu_841__0),
        .axi_last_4_loc_fu_92(axi_last_4_loc_fu_92),
        .\axi_last_reg_103_reg[0] (\axi_last_reg_103_reg[0]_0 ),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .last_reg_114(last_reg_114),
        .s_axis_video_TLAST_int_regslice(s_axis_video_TLAST_int_regslice),
        .s_axis_video_TVALID_int_regslice(s_axis_video_TVALID_int_regslice),
        .select_ln81_reg_378(select_ln81_reg_378));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt
   (start_reg_83,
    D,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg_reg,
    ap_block_state1_pp0_stage0_iter0,
    E,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg,
    \axi_last_4_loc_fu_92_reg[0] ,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg_0,
    ap_rst_n_inv,
    ap_clk,
    \start_reg_83_reg[0]_0 ,
    ap_rst_n,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg,
    s_axis_video_TVALID_int_regslice,
    Q,
    ap_phi_mux_last_phi_fu_117_p40_in,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg,
    axi_data_2_fu_841__0,
    axi_last_4_loc_fu_92,
    axi_last_2_reg_148,
    s_axis_video_TLAST_int_regslice);
  output start_reg_83;
  output [1:0]D;
  output grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg_reg;
  output ap_block_state1_pp0_stage0_iter0;
  output [0:0]E;
  output grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg;
  output \axi_last_4_loc_fu_92_reg[0] ;
  output grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg_0;
  input ap_rst_n_inv;
  input ap_clk;
  input \start_reg_83_reg[0]_0 ;
  input ap_rst_n;
  input grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg;
  input s_axis_video_TVALID_int_regslice;
  input [5:0]Q;
  input ap_phi_mux_last_phi_fu_117_p40_in;
  input grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg;
  input axi_data_2_fu_841__0;
  input axi_last_4_loc_fu_92;
  input axi_last_2_reg_148;
  input s_axis_video_TLAST_int_regslice;

  wire [1:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire ap_block_state1_pp0_stage0_iter0;
  wire ap_clk;
  wire ap_phi_mux_last_phi_fu_117_p40_in;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_data_2_fu_841__0;
  wire axi_last_2_reg_148;
  wire axi_last_4_loc_fu_92;
  wire \axi_last_4_loc_fu_92_reg[0] ;
  wire flow_control_loop_pipe_sequential_init_U_n_6;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg_0;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_axi_last_out;
  wire s_axis_video_TLAST_int_regslice;
  wire s_axis_video_TVALID_int_regslice;
  wire start_reg_83;
  wire \start_reg_83_reg[0]_0 ;

  LUT5 #(
    .INIT(32'hACAFACA0)) 
    \axi_last_2_reg_148[0]_i_1 
       (.I0(axi_last_4_loc_fu_92),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_axi_last_out),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(axi_last_2_reg_148),
        .O(\axi_last_4_loc_fu_92_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_last_fu_54_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_6),
        .Q(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_axi_last_out),
        .R(1'b0));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_flow_control_loop_pipe_sequential_init_18 flow_control_loop_pipe_sequential_init_U
       (.\B_V_data_1_state_reg[0] (flow_control_loop_pipe_sequential_init_U_n_6),
        .D(D),
        .E(E),
        .Q({Q[4:3],Q[1:0]}),
        .\ap_CS_fsm_reg[3] (start_reg_83),
        .ap_block_state1_pp0_stage0_iter0(ap_block_state1_pp0_stage0_iter0),
        .ap_clk(ap_clk),
        .ap_phi_mux_last_phi_fu_117_p40_in(ap_phi_mux_last_phi_fu_117_p40_in),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_data_2_fu_841__0(axi_data_2_fu_841__0),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg_reg),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg_0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg_0),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_axi_last_out(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_axi_last_out),
        .s_axis_video_TLAST_int_regslice(s_axis_video_TLAST_int_regslice),
        .s_axis_video_TVALID_int_regslice(s_axis_video_TVALID_int_regslice));
  FDRE \start_reg_83_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\start_reg_83_reg[0]_0 ),
        .Q(start_reg_83),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_AXIVideo2ColorMat_20_1080_1920_1_2_s" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_AXIVideo2ColorMat_20_1080_1920_1_2_s
   (\B_V_data_1_state_reg[1] ,
    CO,
    start_once_reg,
    out,
    ap_loop_init,
    Q,
    push,
    \j_fu_78_reg[30] ,
    \axi_data_fu_86_reg[29] ,
    ap_rst_n_inv,
    ap_clk,
    DI,
    S,
    icmp_ln62_fu_197_p2_carry__1,
    icmp_ln62_fu_197_p2_carry__1_0,
    icmp_ln62_fu_197_p2_carry__2,
    icmp_ln62_fu_197_p2_carry__2_0,
    ap_enable_reg_pp0_iter1_reg,
    ap_enable_reg_pp0_iter1_reg_0,
    icmp_ln56_fu_255_p2_carry__0_0,
    icmp_ln56_fu_255_p2_carry__0_1,
    icmp_ln56_fu_255_p2_carry__1_0,
    icmp_ln56_fu_255_p2_carry__1_1,
    icmp_ln56_fu_255_p2_carry__2_0,
    icmp_ln56_fu_255_p2_carry__2_1,
    start_once_reg_reg_0,
    start_once_reg_reg_1,
    cmp41_fu_237_p2_carry__0_0,
    cmp41_fu_237_p2_carry__0_1,
    cmp41_fu_237_p2_carry__0_2,
    cmp41_fu_237_p2_carry__1_0,
    cmp41_fu_237_p2_carry__1_1,
    \xor_ln81_reg_356_reg[0]_0 ,
    \xor_ln81_reg_356_reg[0]_1 ,
    \xor_ln81_reg_356_reg[0]_2 ,
    \xor_ln81_reg_356_reg[0]_3 ,
    ap_rst_n,
    AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write,
    s_axis_video_TVALID,
    in_mat_data_full_n,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n,
    in_mat_cols_c10_channel_empty_n,
    in_mat_rows_c9_channel_empty_n,
    s_axis_video_TDATA,
    i_fu_880);
  output \B_V_data_1_state_reg[1] ;
  output [0:0]CO;
  output start_once_reg;
  output [30:0]out;
  output ap_loop_init;
  output [1:0]Q;
  output push;
  output [30:0]\j_fu_78_reg[30] ;
  output [29:0]\axi_data_fu_86_reg[29] ;
  input ap_rst_n_inv;
  input ap_clk;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]icmp_ln62_fu_197_p2_carry__1;
  input [3:0]icmp_ln62_fu_197_p2_carry__1_0;
  input [3:0]icmp_ln62_fu_197_p2_carry__2;
  input [3:0]icmp_ln62_fu_197_p2_carry__2_0;
  input [3:0]ap_enable_reg_pp0_iter1_reg;
  input [3:0]ap_enable_reg_pp0_iter1_reg_0;
  input [3:0]icmp_ln56_fu_255_p2_carry__0_0;
  input [3:0]icmp_ln56_fu_255_p2_carry__0_1;
  input [3:0]icmp_ln56_fu_255_p2_carry__1_0;
  input [3:0]icmp_ln56_fu_255_p2_carry__1_1;
  input [3:0]icmp_ln56_fu_255_p2_carry__2_0;
  input [3:0]icmp_ln56_fu_255_p2_carry__2_1;
  input [3:0]start_once_reg_reg_0;
  input [3:0]start_once_reg_reg_1;
  input cmp41_fu_237_p2_carry__0_0;
  input [3:0]cmp41_fu_237_p2_carry__0_1;
  input [3:0]cmp41_fu_237_p2_carry__0_2;
  input [3:0]cmp41_fu_237_p2_carry__1_0;
  input [3:0]cmp41_fu_237_p2_carry__1_1;
  input [3:0]\xor_ln81_reg_356_reg[0]_0 ;
  input [3:0]\xor_ln81_reg_356_reg[0]_1 ;
  input [2:0]\xor_ln81_reg_356_reg[0]_2 ;
  input [2:0]\xor_ln81_reg_356_reg[0]_3 ;
  input ap_rst_n;
  input AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write;
  input s_axis_video_TVALID;
  input in_mat_data_full_n;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n;
  input in_mat_cols_c10_channel_empty_n;
  input in_mat_rows_c9_channel_empty_n;
  input [29:0]s_axis_video_TDATA;
  input i_fu_880;

  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write;
  wire \B_V_data_1_state_reg[1] ;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [1:0]Q;
  wire [3:0]S;
  wire and_ln81_reg_364;
  wire \and_ln81_reg_364[0]_i_1_n_0 ;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire \ap_CS_fsm[4]_i_1__0_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[7] ;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state11;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state9;
  wire [10:0]ap_NS_fsm;
  wire ap_block_state1_pp0_stage0_iter0;
  wire ap_clk;
  wire [3:0]ap_enable_reg_pp0_iter1_reg;
  wire [3:0]ap_enable_reg_pp0_iter1_reg_0;
  wire ap_loop_init;
  wire ap_phi_mux_last_phi_fu_117_p40_in;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [29:0]axi_data_2_fu_84;
  wire axi_data_2_fu_841__0;
  wire [29:0]\axi_data_fu_86_reg[29] ;
  wire axi_last_2_reg_148;
  wire axi_last_4_loc_fu_92;
  wire cmp41_fu_237_p2;
  wire cmp41_fu_237_p2_carry__0_0;
  wire [3:0]cmp41_fu_237_p2_carry__0_1;
  wire [3:0]cmp41_fu_237_p2_carry__0_2;
  wire cmp41_fu_237_p2_carry__0_n_0;
  wire cmp41_fu_237_p2_carry__0_n_1;
  wire cmp41_fu_237_p2_carry__0_n_2;
  wire cmp41_fu_237_p2_carry__0_n_3;
  wire [3:0]cmp41_fu_237_p2_carry__1_0;
  wire [3:0]cmp41_fu_237_p2_carry__1_1;
  wire cmp41_fu_237_p2_carry__1_n_0;
  wire cmp41_fu_237_p2_carry__1_n_1;
  wire cmp41_fu_237_p2_carry__1_n_2;
  wire cmp41_fu_237_p2_carry__1_n_3;
  wire cmp41_fu_237_p2_carry__2_n_2;
  wire cmp41_fu_237_p2_carry__2_n_3;
  wire cmp41_fu_237_p2_carry_n_0;
  wire cmp41_fu_237_p2_carry_n_1;
  wire cmp41_fu_237_p2_carry_n_2;
  wire cmp41_fu_237_p2_carry_n_3;
  wire cmp41_reg_351;
  wire \cmp41_reg_351[0]_i_1_n_0 ;
  wire \flow_control_loop_pipe_sequential_init_U/ap_loop_init_int ;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_n_38;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_n_39;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_n_40;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_n_5;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_n_6;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_3;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_6;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_7;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_8;
  wire i_fu_880;
  wire \i_fu_88[0]_i_5_n_0 ;
  wire \i_fu_88_reg[0]_i_3_n_0 ;
  wire \i_fu_88_reg[0]_i_3_n_1 ;
  wire \i_fu_88_reg[0]_i_3_n_2 ;
  wire \i_fu_88_reg[0]_i_3_n_3 ;
  wire \i_fu_88_reg[0]_i_3_n_4 ;
  wire \i_fu_88_reg[0]_i_3_n_5 ;
  wire \i_fu_88_reg[0]_i_3_n_6 ;
  wire \i_fu_88_reg[0]_i_3_n_7 ;
  wire \i_fu_88_reg[12]_i_1_n_0 ;
  wire \i_fu_88_reg[12]_i_1_n_1 ;
  wire \i_fu_88_reg[12]_i_1_n_2 ;
  wire \i_fu_88_reg[12]_i_1_n_3 ;
  wire \i_fu_88_reg[12]_i_1_n_4 ;
  wire \i_fu_88_reg[12]_i_1_n_5 ;
  wire \i_fu_88_reg[12]_i_1_n_6 ;
  wire \i_fu_88_reg[12]_i_1_n_7 ;
  wire \i_fu_88_reg[16]_i_1_n_0 ;
  wire \i_fu_88_reg[16]_i_1_n_1 ;
  wire \i_fu_88_reg[16]_i_1_n_2 ;
  wire \i_fu_88_reg[16]_i_1_n_3 ;
  wire \i_fu_88_reg[16]_i_1_n_4 ;
  wire \i_fu_88_reg[16]_i_1_n_5 ;
  wire \i_fu_88_reg[16]_i_1_n_6 ;
  wire \i_fu_88_reg[16]_i_1_n_7 ;
  wire \i_fu_88_reg[20]_i_1_n_0 ;
  wire \i_fu_88_reg[20]_i_1_n_1 ;
  wire \i_fu_88_reg[20]_i_1_n_2 ;
  wire \i_fu_88_reg[20]_i_1_n_3 ;
  wire \i_fu_88_reg[20]_i_1_n_4 ;
  wire \i_fu_88_reg[20]_i_1_n_5 ;
  wire \i_fu_88_reg[20]_i_1_n_6 ;
  wire \i_fu_88_reg[20]_i_1_n_7 ;
  wire \i_fu_88_reg[24]_i_1_n_0 ;
  wire \i_fu_88_reg[24]_i_1_n_1 ;
  wire \i_fu_88_reg[24]_i_1_n_2 ;
  wire \i_fu_88_reg[24]_i_1_n_3 ;
  wire \i_fu_88_reg[24]_i_1_n_4 ;
  wire \i_fu_88_reg[24]_i_1_n_5 ;
  wire \i_fu_88_reg[24]_i_1_n_6 ;
  wire \i_fu_88_reg[24]_i_1_n_7 ;
  wire \i_fu_88_reg[28]_i_1_n_2 ;
  wire \i_fu_88_reg[28]_i_1_n_3 ;
  wire \i_fu_88_reg[28]_i_1_n_5 ;
  wire \i_fu_88_reg[28]_i_1_n_6 ;
  wire \i_fu_88_reg[28]_i_1_n_7 ;
  wire \i_fu_88_reg[4]_i_1_n_0 ;
  wire \i_fu_88_reg[4]_i_1_n_1 ;
  wire \i_fu_88_reg[4]_i_1_n_2 ;
  wire \i_fu_88_reg[4]_i_1_n_3 ;
  wire \i_fu_88_reg[4]_i_1_n_4 ;
  wire \i_fu_88_reg[4]_i_1_n_5 ;
  wire \i_fu_88_reg[4]_i_1_n_6 ;
  wire \i_fu_88_reg[4]_i_1_n_7 ;
  wire \i_fu_88_reg[8]_i_1_n_0 ;
  wire \i_fu_88_reg[8]_i_1_n_1 ;
  wire \i_fu_88_reg[8]_i_1_n_2 ;
  wire \i_fu_88_reg[8]_i_1_n_3 ;
  wire \i_fu_88_reg[8]_i_1_n_4 ;
  wire \i_fu_88_reg[8]_i_1_n_5 ;
  wire \i_fu_88_reg[8]_i_1_n_6 ;
  wire \i_fu_88_reg[8]_i_1_n_7 ;
  wire [3:0]icmp_ln56_fu_255_p2_carry__0_0;
  wire [3:0]icmp_ln56_fu_255_p2_carry__0_1;
  wire icmp_ln56_fu_255_p2_carry__0_n_0;
  wire icmp_ln56_fu_255_p2_carry__0_n_1;
  wire icmp_ln56_fu_255_p2_carry__0_n_2;
  wire icmp_ln56_fu_255_p2_carry__0_n_3;
  wire [3:0]icmp_ln56_fu_255_p2_carry__1_0;
  wire [3:0]icmp_ln56_fu_255_p2_carry__1_1;
  wire icmp_ln56_fu_255_p2_carry__1_n_0;
  wire icmp_ln56_fu_255_p2_carry__1_n_1;
  wire icmp_ln56_fu_255_p2_carry__1_n_2;
  wire icmp_ln56_fu_255_p2_carry__1_n_3;
  wire [3:0]icmp_ln56_fu_255_p2_carry__2_0;
  wire [3:0]icmp_ln56_fu_255_p2_carry__2_1;
  wire icmp_ln56_fu_255_p2_carry__2_n_1;
  wire icmp_ln56_fu_255_p2_carry__2_n_2;
  wire icmp_ln56_fu_255_p2_carry__2_n_3;
  wire icmp_ln56_fu_255_p2_carry_n_0;
  wire icmp_ln56_fu_255_p2_carry_n_1;
  wire icmp_ln56_fu_255_p2_carry_n_2;
  wire icmp_ln56_fu_255_p2_carry_n_3;
  wire [3:0]icmp_ln62_fu_197_p2_carry__1;
  wire [3:0]icmp_ln62_fu_197_p2_carry__1_0;
  wire [3:0]icmp_ln62_fu_197_p2_carry__2;
  wire [3:0]icmp_ln62_fu_197_p2_carry__2_0;
  wire in_mat_cols_c10_channel_empty_n;
  wire in_mat_data_full_n;
  wire in_mat_rows_c9_channel_empty_n;
  wire [30:0]\j_fu_78_reg[30] ;
  wire [30:0]out;
  wire [29:0]p_0_in;
  wire p_14_in;
  wire [29:0]p_1_in;
  wire push;
  wire regslice_both_s_axis_video_V_data_V_U_n_2;
  wire regslice_both_s_axis_video_V_last_V_U_n_1;
  wire regslice_both_s_axis_video_V_user_V_U_n_0;
  wire [29:0]s_axis_video_TDATA;
  wire [0:0]s_axis_video_TLAST;
  wire s_axis_video_TLAST_int_regslice;
  wire s_axis_video_TREADY_int_regslice__1;
  wire [0:0]s_axis_video_TUSER;
  wire s_axis_video_TVALID;
  wire s_axis_video_TVALID_int_regslice;
  wire select_ln81_reg_378;
  wire start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1_n_0;
  wire [3:0]start_once_reg_reg_0;
  wire [3:0]start_once_reg_reg_1;
  wire \start_reg_136[0]_i_1_n_0 ;
  wire \start_reg_136_reg_n_0_[0] ;
  wire start_reg_83;
  wire xor_ln81_fu_242_p2;
  wire xor_ln81_reg_356;
  wire [3:0]\xor_ln81_reg_356_reg[0]_0 ;
  wire [3:0]\xor_ln81_reg_356_reg[0]_1 ;
  wire [2:0]\xor_ln81_reg_356_reg[0]_2 ;
  wire [2:0]\xor_ln81_reg_356_reg[0]_3 ;
  wire [3:0]NLW_cmp41_fu_237_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_cmp41_fu_237_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_cmp41_fu_237_p2_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_cmp41_fu_237_p2_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_cmp41_fu_237_p2_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_i_fu_88_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_fu_88_reg[28]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_icmp_ln56_fu_255_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln56_fu_255_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln56_fu_255_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln56_fu_255_p2_carry__2_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h8F80)) 
    \and_ln81_reg_364[0]_i_1 
       (.I0(xor_ln81_reg_356),
        .I1(\start_reg_136_reg_n_0_[0] ),
        .I2(Q[1]),
        .I3(and_ln81_reg_364),
        .O(\and_ln81_reg_364[0]_i_1_n_0 ));
  FDRE \and_ln81_reg_364_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\and_ln81_reg_364[0]_i_1_n_0 ),
        .Q(and_ln81_reg_364),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4474)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(CO),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(ap_CS_fsm_state2),
        .I2(Q[1]),
        .I3(ap_CS_fsm_state4),
        .I4(\ap_CS_fsm[1]_i_2_n_0 ),
        .I5(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(ap_CS_fsm_state6),
        .I1(ap_CS_fsm_state7),
        .I2(\ap_CS_fsm_reg_n_0_[7] ),
        .I3(ap_CS_fsm_state9),
        .I4(ap_CS_fsm_state11),
        .I5(ap_CS_fsm_state10),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[4]_i_1__0 
       (.I0(ap_CS_fsm_state11),
        .I1(ap_CS_fsm_state4),
        .O(\ap_CS_fsm[4]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(Q[1]),
        .I1(CO),
        .O(ap_NS_fsm[5]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[10]),
        .Q(ap_CS_fsm_state11),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[4]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(\ap_CS_fsm_reg_n_0_[7] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[7] ),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[9]),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst_n_inv));
  FDRE \axi_data_2_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[0]),
        .Q(axi_data_2_fu_84[0]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[10] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[10]),
        .Q(axi_data_2_fu_84[10]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[11] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[11]),
        .Q(axi_data_2_fu_84[11]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[12] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[12]),
        .Q(axi_data_2_fu_84[12]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[13] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[13]),
        .Q(axi_data_2_fu_84[13]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[14] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[14]),
        .Q(axi_data_2_fu_84[14]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[15] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[15]),
        .Q(axi_data_2_fu_84[15]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[16] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[16]),
        .Q(axi_data_2_fu_84[16]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[17] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[17]),
        .Q(axi_data_2_fu_84[17]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[18] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[18]),
        .Q(axi_data_2_fu_84[18]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[19] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[19]),
        .Q(axi_data_2_fu_84[19]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[1]),
        .Q(axi_data_2_fu_84[1]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[20] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[20]),
        .Q(axi_data_2_fu_84[20]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[21] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[21]),
        .Q(axi_data_2_fu_84[21]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[22] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[22]),
        .Q(axi_data_2_fu_84[22]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[23] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[23]),
        .Q(axi_data_2_fu_84[23]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[24] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[24]),
        .Q(axi_data_2_fu_84[24]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[25] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[25]),
        .Q(axi_data_2_fu_84[25]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[26] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[26]),
        .Q(axi_data_2_fu_84[26]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[27] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[27]),
        .Q(axi_data_2_fu_84[27]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[28] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[28]),
        .Q(axi_data_2_fu_84[28]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[29] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[29]),
        .Q(axi_data_2_fu_84[29]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[2]),
        .Q(axi_data_2_fu_84[2]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[3]),
        .Q(axi_data_2_fu_84[3]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[4]),
        .Q(axi_data_2_fu_84[4]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[5]),
        .Q(axi_data_2_fu_84[5]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[6]),
        .Q(axi_data_2_fu_84[6]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[7]),
        .Q(axi_data_2_fu_84[7]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[8] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[8]),
        .Q(axi_data_2_fu_84[8]),
        .R(1'b0));
  FDRE \axi_data_2_fu_84_reg[9] 
       (.C(ap_clk),
        .CE(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .D(p_1_in[9]),
        .Q(axi_data_2_fu_84[9]),
        .R(1'b0));
  FDRE \axi_last_2_reg_148_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_7),
        .Q(axi_last_2_reg_148),
        .R(1'b0));
  FDRE \axi_last_4_loc_fu_92_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_n_5),
        .Q(axi_last_4_loc_fu_92),
        .R(1'b0));
  CARRY4 cmp41_fu_237_p2_carry
       (.CI(1'b0),
        .CO({cmp41_fu_237_p2_carry_n_0,cmp41_fu_237_p2_carry_n_1,cmp41_fu_237_p2_carry_n_2,cmp41_fu_237_p2_carry_n_3}),
        .CYINIT(cmp41_fu_237_p2_carry__0_0),
        .DI(cmp41_fu_237_p2_carry__0_1),
        .O(NLW_cmp41_fu_237_p2_carry_O_UNCONNECTED[3:0]),
        .S(cmp41_fu_237_p2_carry__0_2));
  CARRY4 cmp41_fu_237_p2_carry__0
       (.CI(cmp41_fu_237_p2_carry_n_0),
        .CO({cmp41_fu_237_p2_carry__0_n_0,cmp41_fu_237_p2_carry__0_n_1,cmp41_fu_237_p2_carry__0_n_2,cmp41_fu_237_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(cmp41_fu_237_p2_carry__1_0),
        .O(NLW_cmp41_fu_237_p2_carry__0_O_UNCONNECTED[3:0]),
        .S(cmp41_fu_237_p2_carry__1_1));
  CARRY4 cmp41_fu_237_p2_carry__1
       (.CI(cmp41_fu_237_p2_carry__0_n_0),
        .CO({cmp41_fu_237_p2_carry__1_n_0,cmp41_fu_237_p2_carry__1_n_1,cmp41_fu_237_p2_carry__1_n_2,cmp41_fu_237_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\xor_ln81_reg_356_reg[0]_0 ),
        .O(NLW_cmp41_fu_237_p2_carry__1_O_UNCONNECTED[3:0]),
        .S(\xor_ln81_reg_356_reg[0]_1 ));
  CARRY4 cmp41_fu_237_p2_carry__2
       (.CI(cmp41_fu_237_p2_carry__1_n_0),
        .CO({NLW_cmp41_fu_237_p2_carry__2_CO_UNCONNECTED[3],cmp41_fu_237_p2,cmp41_fu_237_p2_carry__2_n_2,cmp41_fu_237_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\xor_ln81_reg_356_reg[0]_2 }),
        .O({xor_ln81_fu_242_p2,NLW_cmp41_fu_237_p2_carry__2_O_UNCONNECTED[2:0]}),
        .S({1'b1,\xor_ln81_reg_356_reg[0]_3 }));
  LUT3 #(
    .INIT(8'hB8)) 
    \cmp41_reg_351[0]_i_1 
       (.I0(cmp41_fu_237_p2),
        .I1(ap_CS_fsm_state4),
        .I2(cmp41_reg_351),
        .O(\cmp41_reg_351[0]_i_1_n_0 ));
  FDRE \cmp41_reg_351_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\cmp41_reg_351[0]_i_1_n_0 ),
        .Q(cmp41_reg_351),
        .R(1'b0));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178
       (.\B_V_data_1_state_reg[1] (grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_3),
        .D(ap_NS_fsm[7:6]),
        .DI(DI),
        .Q({ap_CS_fsm_state10,ap_CS_fsm_state9,ap_CS_fsm_state7,ap_CS_fsm_state6}),
        .S(S),
        .\ap_CS_fsm_reg[9] (grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_n_38),
        .ap_clk(ap_clk),
        .ap_done_cache_reg(regslice_both_s_axis_video_V_data_V_U_n_2),
        .ap_enable_reg_pp0_iter1_reg_0(ap_enable_reg_pp0_iter1_reg),
        .ap_enable_reg_pp0_iter1_reg_1(ap_enable_reg_pp0_iter1_reg_0),
        .ap_loop_init(ap_loop_init),
        .ap_loop_init_int(\flow_control_loop_pipe_sequential_init_U/ap_loop_init_int ),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\axi_data_fu_86_reg[29]_0 (\axi_data_fu_86_reg[29] ),
        .\axi_data_fu_86_reg[29]_1 (p_0_in),
        .axi_last_2_reg_148(axi_last_2_reg_148),
        .\axi_last_3_fu_82_reg[0]_0 (regslice_both_s_axis_video_V_last_V_U_n_1),
        .\axi_last_3_fu_82_reg[0]_1 (\start_reg_136_reg_n_0_[0] ),
        .cmp41_reg_351(cmp41_reg_351),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_n_40),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .icmp_ln62_fu_197_p2_carry__1_0(icmp_ln62_fu_197_p2_carry__1),
        .icmp_ln62_fu_197_p2_carry__1_1(icmp_ln62_fu_197_p2_carry__1_0),
        .icmp_ln62_fu_197_p2_carry__2_0(icmp_ln62_fu_197_p2_carry__2),
        .icmp_ln62_fu_197_p2_carry__2_1(icmp_ln62_fu_197_p2_carry__2_0),
        .in_mat_data_full_n(in_mat_data_full_n),
        .\j_fu_78_reg[30]_0 (\j_fu_78_reg[30] ),
        .\last_reg_153_reg[0]_0 (grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_n_39),
        .p_14_in(p_14_in),
        .push(push),
        .s_axis_video_TREADY_int_regslice__1(s_axis_video_TREADY_int_regslice__1),
        .select_ln81_reg_378(select_ln81_reg_378));
  FDRE #(
    .INIT(1'b0)) 
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_n_40),
        .Q(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .R(ap_rst_n_inv));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206
       (.D(ap_NS_fsm[10:9]),
        .Q({ap_CS_fsm_state10,ap_CS_fsm_state9}),
        .\ap_CS_fsm_reg[8] (grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_n_6),
        .ap_clk(ap_clk),
        .ap_loop_init_int(\flow_control_loop_pipe_sequential_init_U/ap_loop_init_int ),
        .ap_phi_mux_last_phi_fu_117_p40_in(ap_phi_mux_last_phi_fu_117_p40_in),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_data_2_fu_841__0(axi_data_2_fu_841__0),
        .axi_last_4_loc_fu_92(axi_last_4_loc_fu_92),
        .\axi_last_reg_103_reg[0]_0 (grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_n_5),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .s_axis_video_TLAST_int_regslice(s_axis_video_TLAST_int_regslice),
        .s_axis_video_TVALID_int_regslice(s_axis_video_TVALID_int_regslice),
        .select_ln81_reg_378(select_ln81_reg_378));
  FDRE #(
    .INIT(1'b0)) 
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_n_6),
        .Q(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .R(ap_rst_n_inv));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158
       (.D(ap_NS_fsm[3:2]),
        .E(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_5),
        .Q({ap_CS_fsm_state11,ap_CS_fsm_state10,ap_CS_fsm_state7,ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .ap_block_state1_pp0_stage0_iter0(ap_block_state1_pp0_stage0_iter0),
        .ap_clk(ap_clk),
        .ap_phi_mux_last_phi_fu_117_p40_in(ap_phi_mux_last_phi_fu_117_p40_in),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_data_2_fu_841__0(axi_data_2_fu_841__0),
        .axi_last_2_reg_148(axi_last_2_reg_148),
        .axi_last_4_loc_fu_92(axi_last_4_loc_fu_92),
        .\axi_last_4_loc_fu_92_reg[0] (grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_7),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_3),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_6),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg_0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_8),
        .s_axis_video_TLAST_int_regslice(s_axis_video_TLAST_int_regslice),
        .s_axis_video_TVALID_int_regslice(s_axis_video_TVALID_int_regslice),
        .start_reg_83(start_reg_83),
        .\start_reg_83_reg[0]_0 (regslice_both_s_axis_video_V_user_V_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_8),
        .Q(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \i_fu_88[0]_i_5 
       (.I0(out[0]),
        .O(\i_fu_88[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[0]_i_3_n_7 ),
        .Q(out[0]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_88_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\i_fu_88_reg[0]_i_3_n_0 ,\i_fu_88_reg[0]_i_3_n_1 ,\i_fu_88_reg[0]_i_3_n_2 ,\i_fu_88_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_fu_88_reg[0]_i_3_n_4 ,\i_fu_88_reg[0]_i_3_n_5 ,\i_fu_88_reg[0]_i_3_n_6 ,\i_fu_88_reg[0]_i_3_n_7 }),
        .S({out[3:1],\i_fu_88[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[10] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[8]_i_1_n_5 ),
        .Q(out[10]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[11] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[8]_i_1_n_4 ),
        .Q(out[11]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[12] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[12]_i_1_n_7 ),
        .Q(out[12]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_88_reg[12]_i_1 
       (.CI(\i_fu_88_reg[8]_i_1_n_0 ),
        .CO({\i_fu_88_reg[12]_i_1_n_0 ,\i_fu_88_reg[12]_i_1_n_1 ,\i_fu_88_reg[12]_i_1_n_2 ,\i_fu_88_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_fu_88_reg[12]_i_1_n_4 ,\i_fu_88_reg[12]_i_1_n_5 ,\i_fu_88_reg[12]_i_1_n_6 ,\i_fu_88_reg[12]_i_1_n_7 }),
        .S(out[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[13] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[12]_i_1_n_6 ),
        .Q(out[13]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[14] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[12]_i_1_n_5 ),
        .Q(out[14]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[15] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[12]_i_1_n_4 ),
        .Q(out[15]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[16] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[16]_i_1_n_7 ),
        .Q(out[16]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_88_reg[16]_i_1 
       (.CI(\i_fu_88_reg[12]_i_1_n_0 ),
        .CO({\i_fu_88_reg[16]_i_1_n_0 ,\i_fu_88_reg[16]_i_1_n_1 ,\i_fu_88_reg[16]_i_1_n_2 ,\i_fu_88_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_fu_88_reg[16]_i_1_n_4 ,\i_fu_88_reg[16]_i_1_n_5 ,\i_fu_88_reg[16]_i_1_n_6 ,\i_fu_88_reg[16]_i_1_n_7 }),
        .S(out[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[17] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[16]_i_1_n_6 ),
        .Q(out[17]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[18] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[16]_i_1_n_5 ),
        .Q(out[18]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[19] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[16]_i_1_n_4 ),
        .Q(out[19]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[0]_i_3_n_6 ),
        .Q(out[1]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[20] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[20]_i_1_n_7 ),
        .Q(out[20]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_88_reg[20]_i_1 
       (.CI(\i_fu_88_reg[16]_i_1_n_0 ),
        .CO({\i_fu_88_reg[20]_i_1_n_0 ,\i_fu_88_reg[20]_i_1_n_1 ,\i_fu_88_reg[20]_i_1_n_2 ,\i_fu_88_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_fu_88_reg[20]_i_1_n_4 ,\i_fu_88_reg[20]_i_1_n_5 ,\i_fu_88_reg[20]_i_1_n_6 ,\i_fu_88_reg[20]_i_1_n_7 }),
        .S(out[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[21] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[20]_i_1_n_6 ),
        .Q(out[21]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[22] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[20]_i_1_n_5 ),
        .Q(out[22]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[23] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[20]_i_1_n_4 ),
        .Q(out[23]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[24] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[24]_i_1_n_7 ),
        .Q(out[24]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_88_reg[24]_i_1 
       (.CI(\i_fu_88_reg[20]_i_1_n_0 ),
        .CO({\i_fu_88_reg[24]_i_1_n_0 ,\i_fu_88_reg[24]_i_1_n_1 ,\i_fu_88_reg[24]_i_1_n_2 ,\i_fu_88_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_fu_88_reg[24]_i_1_n_4 ,\i_fu_88_reg[24]_i_1_n_5 ,\i_fu_88_reg[24]_i_1_n_6 ,\i_fu_88_reg[24]_i_1_n_7 }),
        .S(out[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[25] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[24]_i_1_n_6 ),
        .Q(out[25]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[26] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[24]_i_1_n_5 ),
        .Q(out[26]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[27] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[24]_i_1_n_4 ),
        .Q(out[27]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[28] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[28]_i_1_n_7 ),
        .Q(out[28]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_88_reg[28]_i_1 
       (.CI(\i_fu_88_reg[24]_i_1_n_0 ),
        .CO({\NLW_i_fu_88_reg[28]_i_1_CO_UNCONNECTED [3:2],\i_fu_88_reg[28]_i_1_n_2 ,\i_fu_88_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_fu_88_reg[28]_i_1_O_UNCONNECTED [3],\i_fu_88_reg[28]_i_1_n_5 ,\i_fu_88_reg[28]_i_1_n_6 ,\i_fu_88_reg[28]_i_1_n_7 }),
        .S({1'b0,out[30:28]}));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[29] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[28]_i_1_n_6 ),
        .Q(out[29]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[0]_i_3_n_5 ),
        .Q(out[2]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[30] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[28]_i_1_n_5 ),
        .Q(out[30]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[3] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[0]_i_3_n_4 ),
        .Q(out[3]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[4] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[4]_i_1_n_7 ),
        .Q(out[4]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_88_reg[4]_i_1 
       (.CI(\i_fu_88_reg[0]_i_3_n_0 ),
        .CO({\i_fu_88_reg[4]_i_1_n_0 ,\i_fu_88_reg[4]_i_1_n_1 ,\i_fu_88_reg[4]_i_1_n_2 ,\i_fu_88_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_fu_88_reg[4]_i_1_n_4 ,\i_fu_88_reg[4]_i_1_n_5 ,\i_fu_88_reg[4]_i_1_n_6 ,\i_fu_88_reg[4]_i_1_n_7 }),
        .S(out[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[5] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[4]_i_1_n_6 ),
        .Q(out[5]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[6] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[4]_i_1_n_5 ),
        .Q(out[6]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[7] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[4]_i_1_n_4 ),
        .Q(out[7]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[8] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[8]_i_1_n_7 ),
        .Q(out[8]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_88_reg[8]_i_1 
       (.CI(\i_fu_88_reg[4]_i_1_n_0 ),
        .CO({\i_fu_88_reg[8]_i_1_n_0 ,\i_fu_88_reg[8]_i_1_n_1 ,\i_fu_88_reg[8]_i_1_n_2 ,\i_fu_88_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_fu_88_reg[8]_i_1_n_4 ,\i_fu_88_reg[8]_i_1_n_5 ,\i_fu_88_reg[8]_i_1_n_6 ,\i_fu_88_reg[8]_i_1_n_7 }),
        .S(out[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_88_reg[9] 
       (.C(ap_clk),
        .CE(i_fu_880),
        .D(\i_fu_88_reg[8]_i_1_n_6 ),
        .Q(out[9]),
        .R(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln56_fu_255_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln56_fu_255_p2_carry_n_0,icmp_ln56_fu_255_p2_carry_n_1,icmp_ln56_fu_255_p2_carry_n_2,icmp_ln56_fu_255_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(icmp_ln56_fu_255_p2_carry__0_0),
        .O(NLW_icmp_ln56_fu_255_p2_carry_O_UNCONNECTED[3:0]),
        .S(icmp_ln56_fu_255_p2_carry__0_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln56_fu_255_p2_carry__0
       (.CI(icmp_ln56_fu_255_p2_carry_n_0),
        .CO({icmp_ln56_fu_255_p2_carry__0_n_0,icmp_ln56_fu_255_p2_carry__0_n_1,icmp_ln56_fu_255_p2_carry__0_n_2,icmp_ln56_fu_255_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(icmp_ln56_fu_255_p2_carry__1_0),
        .O(NLW_icmp_ln56_fu_255_p2_carry__0_O_UNCONNECTED[3:0]),
        .S(icmp_ln56_fu_255_p2_carry__1_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln56_fu_255_p2_carry__1
       (.CI(icmp_ln56_fu_255_p2_carry__0_n_0),
        .CO({icmp_ln56_fu_255_p2_carry__1_n_0,icmp_ln56_fu_255_p2_carry__1_n_1,icmp_ln56_fu_255_p2_carry__1_n_2,icmp_ln56_fu_255_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(icmp_ln56_fu_255_p2_carry__2_0),
        .O(NLW_icmp_ln56_fu_255_p2_carry__1_O_UNCONNECTED[3:0]),
        .S(icmp_ln56_fu_255_p2_carry__2_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln56_fu_255_p2_carry__2
       (.CI(icmp_ln56_fu_255_p2_carry__1_n_0),
        .CO({CO,icmp_ln56_fu_255_p2_carry__2_n_1,icmp_ln56_fu_255_p2_carry__2_n_2,icmp_ln56_fu_255_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(start_once_reg_reg_0),
        .O(NLW_icmp_ln56_fu_255_p2_carry__2_O_UNCONNECTED[3:0]),
        .S(start_once_reg_reg_1));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_regslice_both regslice_both_s_axis_video_V_data_V_U
       (.\B_V_data_1_state_reg[1]_0 (\B_V_data_1_state_reg[1] ),
        .D(p_1_in),
        .Q(axi_data_2_fu_84),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\axi_data_2_fu_84_reg[0] (grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_n_38),
        .\axi_data_2_fu_84_reg[29] (\axi_data_fu_86_reg[29] ),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg(regslice_both_s_axis_video_V_data_V_U_n_2),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0(p_0_in),
        .p_14_in(p_14_in),
        .s_axis_video_TDATA(s_axis_video_TDATA),
        .s_axis_video_TREADY_int_regslice__1(s_axis_video_TREADY_int_regslice__1),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .s_axis_video_TVALID_int_regslice(s_axis_video_TVALID_int_regslice));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_regslice_both__parameterized1_16 regslice_both_s_axis_video_V_last_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_last_2_reg_148(axi_last_2_reg_148),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg(regslice_both_s_axis_video_V_last_V_U_n_1),
        .p_14_in(p_14_in),
        .s_axis_video_TLAST(s_axis_video_TLAST),
        .s_axis_video_TLAST_int_regslice(s_axis_video_TLAST_int_regslice),
        .s_axis_video_TREADY_int_regslice__1(s_axis_video_TREADY_int_regslice__1),
        .s_axis_video_TVALID(s_axis_video_TVALID));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_regslice_both__parameterized1_17 regslice_both_s_axis_video_V_user_V_U
       (.\B_V_data_1_payload_B_reg[0]_0 (regslice_both_s_axis_video_V_user_V_U_n_0),
        .ap_block_state1_pp0_stage0_iter0(ap_block_state1_pp0_stage0_iter0),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .s_axis_video_TREADY_int_regslice__1(s_axis_video_TREADY_int_regslice__1),
        .s_axis_video_TUSER(s_axis_video_TUSER),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .start_reg_83(start_reg_83),
        .\start_reg_83_reg[0] (grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_n_6));
  FDRE \select_ln81_reg_378_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_n_39),
        .Q(select_ln81_reg_378),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hECCCECCC0000ECCC)) 
    start_once_reg_i_1
       (.I0(start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n),
        .I1(start_once_reg),
        .I2(in_mat_cols_c10_channel_empty_n),
        .I3(in_mat_rows_c9_channel_empty_n),
        .I4(Q[1]),
        .I5(CO),
        .O(start_once_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1_n_0),
        .Q(start_once_reg),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFE0E)) 
    \start_reg_136[0]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(\start_reg_136_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state11),
        .I3(and_ln81_reg_364),
        .O(\start_reg_136[0]_i_1_n_0 ));
  FDRE \start_reg_136_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\start_reg_136[0]_i_1_n_0 ),
        .Q(\start_reg_136_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \xor_ln81_reg_356_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(xor_ln81_fu_242_p2),
        .Q(xor_ln81_reg_356),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_Block_entry1_proc" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_Block_entry1_proc
   (ap_return_2_preg,
    ap_return_3_preg,
    ap_done_reg,
    ap_rst_n_inv,
    Block_entry1_proc_U0_ap_ready,
    Q,
    ap_clk,
    \ap_return_3_preg_reg[31]_0 ,
    ap_done_reg_reg_0);
  output [31:0]ap_return_2_preg;
  output [31:0]ap_return_3_preg;
  output ap_done_reg;
  input ap_rst_n_inv;
  input Block_entry1_proc_U0_ap_ready;
  input [31:0]Q;
  input ap_clk;
  input [31:0]\ap_return_3_preg_reg[31]_0 ;
  input ap_done_reg_reg_0;

  wire Block_entry1_proc_U0_ap_ready;
  wire [31:0]Q;
  wire ap_clk;
  wire ap_done_reg;
  wire ap_done_reg_reg_0;
  wire [31:0]ap_return_2_preg;
  wire [31:0]ap_return_3_preg;
  wire [31:0]\ap_return_3_preg_reg[31]_0 ;
  wire ap_rst_n_inv;

  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_reg_0),
        .Q(ap_done_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[0] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[0]),
        .Q(ap_return_2_preg[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[10] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[10]),
        .Q(ap_return_2_preg[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[11] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[11]),
        .Q(ap_return_2_preg[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[12] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[12]),
        .Q(ap_return_2_preg[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[13] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[13]),
        .Q(ap_return_2_preg[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[14] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[14]),
        .Q(ap_return_2_preg[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[15] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[15]),
        .Q(ap_return_2_preg[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[16] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[16]),
        .Q(ap_return_2_preg[16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[17] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[17]),
        .Q(ap_return_2_preg[17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[18] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[18]),
        .Q(ap_return_2_preg[18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[19] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[19]),
        .Q(ap_return_2_preg[19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[1] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[1]),
        .Q(ap_return_2_preg[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[20] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[20]),
        .Q(ap_return_2_preg[20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[21] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[21]),
        .Q(ap_return_2_preg[21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[22] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[22]),
        .Q(ap_return_2_preg[22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[23] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[23]),
        .Q(ap_return_2_preg[23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[24] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[24]),
        .Q(ap_return_2_preg[24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[25] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[25]),
        .Q(ap_return_2_preg[25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[26] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[26]),
        .Q(ap_return_2_preg[26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[27] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[27]),
        .Q(ap_return_2_preg[27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[28] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[28]),
        .Q(ap_return_2_preg[28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[29] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[29]),
        .Q(ap_return_2_preg[29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[2] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[2]),
        .Q(ap_return_2_preg[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[30] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[30]),
        .Q(ap_return_2_preg[30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[31] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[31]),
        .Q(ap_return_2_preg[31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[3] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[3]),
        .Q(ap_return_2_preg[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[4] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[4]),
        .Q(ap_return_2_preg[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[5] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[5]),
        .Q(ap_return_2_preg[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[6] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[6]),
        .Q(ap_return_2_preg[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[7] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[7]),
        .Q(ap_return_2_preg[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[8] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[8]),
        .Q(ap_return_2_preg[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_2_preg_reg[9] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(Q[9]),
        .Q(ap_return_2_preg[9]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[0] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [0]),
        .Q(ap_return_3_preg[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[10] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [10]),
        .Q(ap_return_3_preg[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[11] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [11]),
        .Q(ap_return_3_preg[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[12] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [12]),
        .Q(ap_return_3_preg[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[13] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [13]),
        .Q(ap_return_3_preg[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[14] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [14]),
        .Q(ap_return_3_preg[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[15] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [15]),
        .Q(ap_return_3_preg[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[16] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [16]),
        .Q(ap_return_3_preg[16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[17] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [17]),
        .Q(ap_return_3_preg[17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[18] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [18]),
        .Q(ap_return_3_preg[18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[19] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [19]),
        .Q(ap_return_3_preg[19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[1] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [1]),
        .Q(ap_return_3_preg[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[20] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [20]),
        .Q(ap_return_3_preg[20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[21] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [21]),
        .Q(ap_return_3_preg[21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[22] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [22]),
        .Q(ap_return_3_preg[22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[23] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [23]),
        .Q(ap_return_3_preg[23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[24] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [24]),
        .Q(ap_return_3_preg[24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[25] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [25]),
        .Q(ap_return_3_preg[25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[26] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [26]),
        .Q(ap_return_3_preg[26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[27] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [27]),
        .Q(ap_return_3_preg[27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[28] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [28]),
        .Q(ap_return_3_preg[28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[29] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [29]),
        .Q(ap_return_3_preg[29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[2] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [2]),
        .Q(ap_return_3_preg[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[30] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [30]),
        .Q(ap_return_3_preg[30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[31] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [31]),
        .Q(ap_return_3_preg[31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[3] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [3]),
        .Q(ap_return_3_preg[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[4] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [4]),
        .Q(ap_return_3_preg[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[5] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [5]),
        .Q(ap_return_3_preg[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[6] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [6]),
        .Q(ap_return_3_preg[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[7] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [7]),
        .Q(ap_return_3_preg[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[8] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [8]),
        .Q(ap_return_3_preg[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_3_preg_reg[9] 
       (.C(ap_clk),
        .CE(Block_entry1_proc_U0_ap_ready),
        .D(\ap_return_3_preg_reg[31]_0 [9]),
        .Q(ap_return_3_preg[9]),
        .R(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi
   (icmp_ln121_reg_191,
    ap_enable_reg_pp0_iter1,
    \sof_2_reg_132_reg[0]_0 ,
    axi_last_reg_195,
    empty_n_reg,
    \ap_CS_fsm_reg[3] ,
    \ap_CS_fsm_reg[0] ,
    mOutPtr16_out_1,
    \ap_CS_fsm_reg[3]_0 ,
    D,
    grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg,
    ap_rst_n_inv,
    ap_clk,
    out_mat_data_empty_n,
    Q,
    push,
    mOutPtr,
    out_mat_cols_channel_empty_n,
    out_mat_rows_channel_empty_n,
    \sof_2_reg_132_reg[0]_1 ,
    and_ln116_reg_189,
    grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg,
    m_axis_video_TREADY_int_regslice,
    clear,
    ap_rst_n,
    axi_last_fu_168_p2_carry__1_0,
    out);
  output icmp_ln121_reg_191;
  output ap_enable_reg_pp0_iter1;
  output \sof_2_reg_132_reg[0]_0 ;
  output axi_last_reg_195;
  output empty_n_reg;
  output \ap_CS_fsm_reg[3] ;
  output \ap_CS_fsm_reg[0] ;
  output mOutPtr16_out_1;
  output \ap_CS_fsm_reg[3]_0 ;
  output [1:0]D;
  output grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg;
  input ap_rst_n_inv;
  input ap_clk;
  input out_mat_data_empty_n;
  input [2:0]Q;
  input push;
  input [0:0]mOutPtr;
  input out_mat_cols_channel_empty_n;
  input out_mat_rows_channel_empty_n;
  input \sof_2_reg_132_reg[0]_1 ;
  input and_ln116_reg_189;
  input grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg;
  input m_axis_video_TREADY_int_regslice;
  input clear;
  input ap_rst_n;
  input [31:0]axi_last_fu_168_p2_carry__1_0;
  input [31:0]out;

  wire [1:0]D;
  wire [2:0]Q;
  wire and_ln116_reg_189;
  wire \ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[3] ;
  wire \ap_CS_fsm_reg[3]_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1__1_n_0;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_last_fu_168_p2;
  wire axi_last_fu_168_p2_carry__0_n_0;
  wire axi_last_fu_168_p2_carry__0_n_1;
  wire axi_last_fu_168_p2_carry__0_n_2;
  wire axi_last_fu_168_p2_carry__0_n_3;
  wire [31:0]axi_last_fu_168_p2_carry__1_0;
  wire axi_last_fu_168_p2_carry__1_n_2;
  wire axi_last_fu_168_p2_carry__1_n_3;
  wire axi_last_fu_168_p2_carry_n_0;
  wire axi_last_fu_168_p2_carry_n_1;
  wire axi_last_fu_168_p2_carry_n_2;
  wire axi_last_fu_168_p2_carry_n_3;
  wire axi_last_reg_195;
  wire clear;
  wire empty_n_reg;
  wire flow_control_loop_pipe_sequential_init_U_n_32;
  wire flow_control_loop_pipe_sequential_init_U_n_33;
  wire flow_control_loop_pipe_sequential_init_U_n_37;
  wire flow_control_loop_pipe_sequential_init_U_n_38;
  wire flow_control_loop_pipe_sequential_init_U_n_39;
  wire flow_control_loop_pipe_sequential_init_U_n_40;
  wire flow_control_loop_pipe_sequential_init_U_n_41;
  wire flow_control_loop_pipe_sequential_init_U_n_42;
  wire flow_control_loop_pipe_sequential_init_U_n_43;
  wire flow_control_loop_pipe_sequential_init_U_n_44;
  wire flow_control_loop_pipe_sequential_init_U_n_45;
  wire flow_control_loop_pipe_sequential_init_U_n_46;
  wire flow_control_loop_pipe_sequential_init_U_n_47;
  wire flow_control_loop_pipe_sequential_init_U_n_48;
  wire flow_control_loop_pipe_sequential_init_U_n_49;
  wire flow_control_loop_pipe_sequential_init_U_n_50;
  wire flow_control_loop_pipe_sequential_init_U_n_51;
  wire flow_control_loop_pipe_sequential_init_U_n_52;
  wire flow_control_loop_pipe_sequential_init_U_n_53;
  wire flow_control_loop_pipe_sequential_init_U_n_54;
  wire flow_control_loop_pipe_sequential_init_U_n_55;
  wire flow_control_loop_pipe_sequential_init_U_n_56;
  wire flow_control_loop_pipe_sequential_init_U_n_57;
  wire flow_control_loop_pipe_sequential_init_U_n_58;
  wire flow_control_loop_pipe_sequential_init_U_n_59;
  wire flow_control_loop_pipe_sequential_init_U_n_60;
  wire flow_control_loop_pipe_sequential_init_U_n_61;
  wire flow_control_loop_pipe_sequential_init_U_n_62;
  wire flow_control_loop_pipe_sequential_init_U_n_63;
  wire flow_control_loop_pipe_sequential_init_U_n_64;
  wire flow_control_loop_pipe_sequential_init_U_n_65;
  wire flow_control_loop_pipe_sequential_init_U_n_66;
  wire flow_control_loop_pipe_sequential_init_U_n_67;
  wire flow_control_loop_pipe_sequential_init_U_n_68;
  wire flow_control_loop_pipe_sequential_init_U_n_69;
  wire flow_control_loop_pipe_sequential_init_U_n_70;
  wire flow_control_loop_pipe_sequential_init_U_n_71;
  wire flow_control_loop_pipe_sequential_init_U_n_72;
  wire flow_control_loop_pipe_sequential_init_U_n_73;
  wire flow_control_loop_pipe_sequential_init_U_n_74;
  wire flow_control_loop_pipe_sequential_init_U_n_75;
  wire flow_control_loop_pipe_sequential_init_U_n_76;
  wire flow_control_loop_pipe_sequential_init_U_n_77;
  wire flow_control_loop_pipe_sequential_init_U_n_78;
  wire flow_control_loop_pipe_sequential_init_U_n_79;
  wire flow_control_loop_pipe_sequential_init_U_n_80;
  wire flow_control_loop_pipe_sequential_init_U_n_82;
  wire flow_control_loop_pipe_sequential_init_U_n_83;
  wire grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg;
  wire grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg;
  wire icmp_ln121_fu_156_p2;
  wire icmp_ln121_fu_156_p2_carry__0_n_0;
  wire icmp_ln121_fu_156_p2_carry__0_n_1;
  wire icmp_ln121_fu_156_p2_carry__0_n_2;
  wire icmp_ln121_fu_156_p2_carry__0_n_3;
  wire icmp_ln121_fu_156_p2_carry__1_n_0;
  wire icmp_ln121_fu_156_p2_carry__1_n_1;
  wire icmp_ln121_fu_156_p2_carry__1_n_2;
  wire icmp_ln121_fu_156_p2_carry__1_n_3;
  wire icmp_ln121_fu_156_p2_carry__2_n_1;
  wire icmp_ln121_fu_156_p2_carry__2_n_2;
  wire icmp_ln121_fu_156_p2_carry__2_n_3;
  wire icmp_ln121_fu_156_p2_carry_n_0;
  wire icmp_ln121_fu_156_p2_carry_n_1;
  wire icmp_ln121_fu_156_p2_carry_n_2;
  wire icmp_ln121_fu_156_p2_carry_n_3;
  wire icmp_ln121_reg_191;
  wire [30:0]j_2_fu_162_p2;
  wire j_fu_74;
  wire \j_fu_74_reg_n_0_[0] ;
  wire \j_fu_74_reg_n_0_[10] ;
  wire \j_fu_74_reg_n_0_[11] ;
  wire \j_fu_74_reg_n_0_[12] ;
  wire \j_fu_74_reg_n_0_[13] ;
  wire \j_fu_74_reg_n_0_[14] ;
  wire \j_fu_74_reg_n_0_[15] ;
  wire \j_fu_74_reg_n_0_[16] ;
  wire \j_fu_74_reg_n_0_[17] ;
  wire \j_fu_74_reg_n_0_[18] ;
  wire \j_fu_74_reg_n_0_[19] ;
  wire \j_fu_74_reg_n_0_[1] ;
  wire \j_fu_74_reg_n_0_[20] ;
  wire \j_fu_74_reg_n_0_[21] ;
  wire \j_fu_74_reg_n_0_[22] ;
  wire \j_fu_74_reg_n_0_[23] ;
  wire \j_fu_74_reg_n_0_[24] ;
  wire \j_fu_74_reg_n_0_[25] ;
  wire \j_fu_74_reg_n_0_[26] ;
  wire \j_fu_74_reg_n_0_[27] ;
  wire \j_fu_74_reg_n_0_[28] ;
  wire \j_fu_74_reg_n_0_[29] ;
  wire \j_fu_74_reg_n_0_[2] ;
  wire \j_fu_74_reg_n_0_[30] ;
  wire \j_fu_74_reg_n_0_[3] ;
  wire \j_fu_74_reg_n_0_[4] ;
  wire \j_fu_74_reg_n_0_[5] ;
  wire \j_fu_74_reg_n_0_[6] ;
  wire \j_fu_74_reg_n_0_[7] ;
  wire \j_fu_74_reg_n_0_[8] ;
  wire \j_fu_74_reg_n_0_[9] ;
  wire [0:0]mOutPtr;
  wire mOutPtr16_out_1;
  wire m_axis_video_TREADY_int_regslice;
  wire [31:0]out;
  wire out_mat_cols_channel_empty_n;
  wire out_mat_data_empty_n;
  wire out_mat_rows_channel_empty_n;
  wire push;
  wire \sof_2_reg_132_reg[0]_0 ;
  wire \sof_2_reg_132_reg[0]_1 ;
  wire [3:0]NLW_axi_last_fu_168_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_axi_last_fu_168_p2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_axi_last_fu_168_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_axi_last_fu_168_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln121_fu_156_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln121_fu_156_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln121_fu_156_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln121_fu_156_p2_carry__2_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h80000000)) 
    \B_V_data_1_state[0]_i_2 
       (.I0(Q[2]),
        .I1(m_axis_video_TREADY_int_regslice),
        .I2(out_mat_data_empty_n),
        .I3(icmp_ln121_reg_191),
        .I4(ap_enable_reg_pp0_iter1),
        .O(\ap_CS_fsm_reg[3] ));
  LUT6 #(
    .INIT(64'hAAEAEAEAEAEAEAEA)) 
    ap_enable_reg_pp0_iter1_i_1__1
       (.I0(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I1(icmp_ln121_reg_191),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(out_mat_data_empty_n),
        .I4(m_axis_video_TREADY_int_regslice),
        .I5(Q[2]),
        .O(ap_enable_reg_pp0_iter1_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  FDRE ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_32),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  CARRY4 axi_last_fu_168_p2_carry
       (.CI(1'b0),
        .CO({axi_last_fu_168_p2_carry_n_0,axi_last_fu_168_p2_carry_n_1,axi_last_fu_168_p2_carry_n_2,axi_last_fu_168_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axi_last_fu_168_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_38,flow_control_loop_pipe_sequential_init_U_n_39,flow_control_loop_pipe_sequential_init_U_n_40,flow_control_loop_pipe_sequential_init_U_n_41}));
  CARRY4 axi_last_fu_168_p2_carry__0
       (.CI(axi_last_fu_168_p2_carry_n_0),
        .CO({axi_last_fu_168_p2_carry__0_n_0,axi_last_fu_168_p2_carry__0_n_1,axi_last_fu_168_p2_carry__0_n_2,axi_last_fu_168_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axi_last_fu_168_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_58,flow_control_loop_pipe_sequential_init_U_n_59,flow_control_loop_pipe_sequential_init_U_n_60,flow_control_loop_pipe_sequential_init_U_n_61}));
  CARRY4 axi_last_fu_168_p2_carry__1
       (.CI(axi_last_fu_168_p2_carry__0_n_0),
        .CO({NLW_axi_last_fu_168_p2_carry__1_CO_UNCONNECTED[3],axi_last_fu_168_p2,axi_last_fu_168_p2_carry__1_n_2,axi_last_fu_168_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axi_last_fu_168_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,flow_control_loop_pipe_sequential_init_U_n_70,flow_control_loop_pipe_sequential_init_U_n_71,flow_control_loop_pipe_sequential_init_U_n_72}));
  FDRE \axi_last_reg_195_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_82),
        .Q(axi_last_reg_195),
        .R(1'b0));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_flow_control_loop_pipe_sequential_init_15 flow_control_loop_pipe_sequential_init_U
       (.CO(icmp_ln121_fu_156_p2),
        .D(j_2_fu_162_p2),
        .DI({flow_control_loop_pipe_sequential_init_U_n_46,flow_control_loop_pipe_sequential_init_U_n_47,flow_control_loop_pipe_sequential_init_U_n_48,flow_control_loop_pipe_sequential_init_U_n_49}),
        .E(j_fu_74),
        .Q(Q),
        .S({flow_control_loop_pipe_sequential_init_U_n_38,flow_control_loop_pipe_sequential_init_U_n_39,flow_control_loop_pipe_sequential_init_U_n_40,flow_control_loop_pipe_sequential_init_U_n_41}),
        .SR(flow_control_loop_pipe_sequential_init_U_n_37),
        .and_ln116_reg_189(and_ln116_reg_189),
        .\ap_CS_fsm_reg[0] (\ap_CS_fsm_reg[0] ),
        .ap_clk(ap_clk),
        .ap_done_cache_reg_0(D),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_loop_init_int_reg_0({flow_control_loop_pipe_sequential_init_U_n_54,flow_control_loop_pipe_sequential_init_U_n_55,flow_control_loop_pipe_sequential_init_U_n_56,flow_control_loop_pipe_sequential_init_U_n_57}),
        .ap_loop_init_int_reg_1({flow_control_loop_pipe_sequential_init_U_n_66,flow_control_loop_pipe_sequential_init_U_n_67,flow_control_loop_pipe_sequential_init_U_n_68,flow_control_loop_pipe_sequential_init_U_n_69}),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_last_fu_168_p2_carry__1(axi_last_fu_168_p2_carry__1_0),
        .axi_last_reg_195(axi_last_reg_195),
        .\axi_last_reg_195_reg[0] (flow_control_loop_pipe_sequential_init_U_n_82),
        .\axi_last_reg_195_reg[0]_0 (axi_last_fu_168_p2),
        .clear(clear),
        .grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_32),
        .grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_0({flow_control_loop_pipe_sequential_init_U_n_70,flow_control_loop_pipe_sequential_init_U_n_71,flow_control_loop_pipe_sequential_init_U_n_72}),
        .grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_1({flow_control_loop_pipe_sequential_init_U_n_73,flow_control_loop_pipe_sequential_init_U_n_74,flow_control_loop_pipe_sequential_init_U_n_75,flow_control_loop_pipe_sequential_init_U_n_76}),
        .grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg),
        .\icmp_ln121_reg_191_reg[0] (flow_control_loop_pipe_sequential_init_U_n_83),
        .\icmp_ln121_reg_191_reg[0]_0 (ap_enable_reg_pp0_iter1),
        .\icmp_ln121_reg_191_reg[0]_1 (icmp_ln121_reg_191),
        .\j_fu_74_reg[14] ({flow_control_loop_pipe_sequential_init_U_n_50,flow_control_loop_pipe_sequential_init_U_n_51,flow_control_loop_pipe_sequential_init_U_n_52,flow_control_loop_pipe_sequential_init_U_n_53}),
        .\j_fu_74_reg[22] ({flow_control_loop_pipe_sequential_init_U_n_62,flow_control_loop_pipe_sequential_init_U_n_63,flow_control_loop_pipe_sequential_init_U_n_64,flow_control_loop_pipe_sequential_init_U_n_65}),
        .\j_fu_74_reg[23] ({flow_control_loop_pipe_sequential_init_U_n_58,flow_control_loop_pipe_sequential_init_U_n_59,flow_control_loop_pipe_sequential_init_U_n_60,flow_control_loop_pipe_sequential_init_U_n_61}),
        .\j_fu_74_reg[30] ({flow_control_loop_pipe_sequential_init_U_n_77,flow_control_loop_pipe_sequential_init_U_n_78,flow_control_loop_pipe_sequential_init_U_n_79,flow_control_loop_pipe_sequential_init_U_n_80}),
        .\j_fu_74_reg[30]_0 ({\j_fu_74_reg_n_0_[30] ,\j_fu_74_reg_n_0_[29] ,\j_fu_74_reg_n_0_[28] ,\j_fu_74_reg_n_0_[27] ,\j_fu_74_reg_n_0_[26] ,\j_fu_74_reg_n_0_[25] ,\j_fu_74_reg_n_0_[24] ,\j_fu_74_reg_n_0_[23] ,\j_fu_74_reg_n_0_[22] ,\j_fu_74_reg_n_0_[21] ,\j_fu_74_reg_n_0_[20] ,\j_fu_74_reg_n_0_[19] ,\j_fu_74_reg_n_0_[18] ,\j_fu_74_reg_n_0_[17] ,\j_fu_74_reg_n_0_[16] ,\j_fu_74_reg_n_0_[15] ,\j_fu_74_reg_n_0_[14] ,\j_fu_74_reg_n_0_[13] ,\j_fu_74_reg_n_0_[12] ,\j_fu_74_reg_n_0_[11] ,\j_fu_74_reg_n_0_[10] ,\j_fu_74_reg_n_0_[9] ,\j_fu_74_reg_n_0_[8] ,\j_fu_74_reg_n_0_[7] ,\j_fu_74_reg_n_0_[6] ,\j_fu_74_reg_n_0_[5] ,\j_fu_74_reg_n_0_[4] ,\j_fu_74_reg_n_0_[3] ,\j_fu_74_reg_n_0_[2] ,\j_fu_74_reg_n_0_[1] ,\j_fu_74_reg_n_0_[0] }),
        .\j_fu_74_reg[7] ({flow_control_loop_pipe_sequential_init_U_n_42,flow_control_loop_pipe_sequential_init_U_n_43,flow_control_loop_pipe_sequential_init_U_n_44,flow_control_loop_pipe_sequential_init_U_n_45}),
        .m_axis_video_TREADY_int_regslice(m_axis_video_TREADY_int_regslice),
        .out(out),
        .out_mat_cols_channel_empty_n(out_mat_cols_channel_empty_n),
        .out_mat_data_empty_n(out_mat_data_empty_n),
        .out_mat_rows_channel_empty_n(out_mat_rows_channel_empty_n),
        .\sof_2_reg_132_reg[0] (flow_control_loop_pipe_sequential_init_U_n_33),
        .\sof_2_reg_132_reg[0]_0 (\sof_2_reg_132_reg[0]_1 ),
        .\sof_2_reg_132_reg[0]_1 (\sof_2_reg_132_reg[0]_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln121_fu_156_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln121_fu_156_p2_carry_n_0,icmp_ln121_fu_156_p2_carry_n_1,icmp_ln121_fu_156_p2_carry_n_2,icmp_ln121_fu_156_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_46,flow_control_loop_pipe_sequential_init_U_n_47,flow_control_loop_pipe_sequential_init_U_n_48,flow_control_loop_pipe_sequential_init_U_n_49}),
        .O(NLW_icmp_ln121_fu_156_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_42,flow_control_loop_pipe_sequential_init_U_n_43,flow_control_loop_pipe_sequential_init_U_n_44,flow_control_loop_pipe_sequential_init_U_n_45}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln121_fu_156_p2_carry__0
       (.CI(icmp_ln121_fu_156_p2_carry_n_0),
        .CO({icmp_ln121_fu_156_p2_carry__0_n_0,icmp_ln121_fu_156_p2_carry__0_n_1,icmp_ln121_fu_156_p2_carry__0_n_2,icmp_ln121_fu_156_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_50,flow_control_loop_pipe_sequential_init_U_n_51,flow_control_loop_pipe_sequential_init_U_n_52,flow_control_loop_pipe_sequential_init_U_n_53}),
        .O(NLW_icmp_ln121_fu_156_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_54,flow_control_loop_pipe_sequential_init_U_n_55,flow_control_loop_pipe_sequential_init_U_n_56,flow_control_loop_pipe_sequential_init_U_n_57}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln121_fu_156_p2_carry__1
       (.CI(icmp_ln121_fu_156_p2_carry__0_n_0),
        .CO({icmp_ln121_fu_156_p2_carry__1_n_0,icmp_ln121_fu_156_p2_carry__1_n_1,icmp_ln121_fu_156_p2_carry__1_n_2,icmp_ln121_fu_156_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_62,flow_control_loop_pipe_sequential_init_U_n_63,flow_control_loop_pipe_sequential_init_U_n_64,flow_control_loop_pipe_sequential_init_U_n_65}),
        .O(NLW_icmp_ln121_fu_156_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_66,flow_control_loop_pipe_sequential_init_U_n_67,flow_control_loop_pipe_sequential_init_U_n_68,flow_control_loop_pipe_sequential_init_U_n_69}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln121_fu_156_p2_carry__2
       (.CI(icmp_ln121_fu_156_p2_carry__1_n_0),
        .CO({icmp_ln121_fu_156_p2,icmp_ln121_fu_156_p2_carry__2_n_1,icmp_ln121_fu_156_p2_carry__2_n_2,icmp_ln121_fu_156_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_77,flow_control_loop_pipe_sequential_init_U_n_78,flow_control_loop_pipe_sequential_init_U_n_79,flow_control_loop_pipe_sequential_init_U_n_80}),
        .O(NLW_icmp_ln121_fu_156_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_73,flow_control_loop_pipe_sequential_init_U_n_74,flow_control_loop_pipe_sequential_init_U_n_75,flow_control_loop_pipe_sequential_init_U_n_76}));
  FDRE \icmp_ln121_reg_191_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_83),
        .Q(icmp_ln121_reg_191),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[0] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[0]),
        .Q(\j_fu_74_reg_n_0_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[10] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[10]),
        .Q(\j_fu_74_reg_n_0_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[11] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[11]),
        .Q(\j_fu_74_reg_n_0_[11] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[12] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[12]),
        .Q(\j_fu_74_reg_n_0_[12] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[13] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[13]),
        .Q(\j_fu_74_reg_n_0_[13] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[14] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[14]),
        .Q(\j_fu_74_reg_n_0_[14] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[15] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[15]),
        .Q(\j_fu_74_reg_n_0_[15] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[16] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[16]),
        .Q(\j_fu_74_reg_n_0_[16] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[17] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[17]),
        .Q(\j_fu_74_reg_n_0_[17] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[18] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[18]),
        .Q(\j_fu_74_reg_n_0_[18] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[19] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[19]),
        .Q(\j_fu_74_reg_n_0_[19] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[1] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[1]),
        .Q(\j_fu_74_reg_n_0_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[20] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[20]),
        .Q(\j_fu_74_reg_n_0_[20] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[21] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[21]),
        .Q(\j_fu_74_reg_n_0_[21] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[22] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[22]),
        .Q(\j_fu_74_reg_n_0_[22] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[23] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[23]),
        .Q(\j_fu_74_reg_n_0_[23] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[24] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[24]),
        .Q(\j_fu_74_reg_n_0_[24] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[25] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[25]),
        .Q(\j_fu_74_reg_n_0_[25] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[26] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[26]),
        .Q(\j_fu_74_reg_n_0_[26] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[27] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[27]),
        .Q(\j_fu_74_reg_n_0_[27] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[28] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[28]),
        .Q(\j_fu_74_reg_n_0_[28] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[29] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[29]),
        .Q(\j_fu_74_reg_n_0_[29] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[2] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[2]),
        .Q(\j_fu_74_reg_n_0_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[30] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[30]),
        .Q(\j_fu_74_reg_n_0_[30] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[3] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[3]),
        .Q(\j_fu_74_reg_n_0_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[4] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[4]),
        .Q(\j_fu_74_reg_n_0_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[5] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[5]),
        .Q(\j_fu_74_reg_n_0_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[6] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[6]),
        .Q(\j_fu_74_reg_n_0_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[7] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[7]),
        .Q(\j_fu_74_reg_n_0_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[8] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[8]),
        .Q(\j_fu_74_reg_n_0_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \j_fu_74_reg[9] 
       (.C(ap_clk),
        .CE(j_fu_74),
        .D(j_2_fu_162_p2[9]),
        .Q(\j_fu_74_reg_n_0_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_37));
  LUT5 #(
    .INIT(32'h807F7F80)) 
    \mOutPtr[0]_i_1__4 
       (.I0(\ap_CS_fsm_reg[3] ),
        .I1(out_mat_data_empty_n),
        .I2(Q[2]),
        .I3(push),
        .I4(mOutPtr),
        .O(empty_n_reg));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \mOutPtr[2]_i_2__3 
       (.I0(Q[2]),
        .I1(m_axis_video_TREADY_int_regslice),
        .I2(out_mat_data_empty_n),
        .I3(icmp_ln121_reg_191),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(push),
        .O(\ap_CS_fsm_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \mOutPtr[2]_i_3__1 
       (.I0(Q[2]),
        .I1(m_axis_video_TREADY_int_regslice),
        .I2(out_mat_data_empty_n),
        .I3(icmp_ln121_reg_191),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(push),
        .O(mOutPtr16_out_1));
  FDRE \sof_2_reg_132_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_33),
        .Q(\sof_2_reg_132_reg[0]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_ColorMat2AXIvideo_16_1080_1920_1_2_s" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_ColorMat2AXIvideo_16_1080_1920_1_2_s
   (\B_V_data_1_state_reg[0] ,
    empty_n_reg,
    \ap_CS_fsm_reg[3]_0 ,
    Q,
    \i_fu_62_reg[30]_0 ,
    ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready,
    empty_n_reg_0,
    mOutPtr16_out,
    empty_n_reg_1,
    mOutPtr16_out_0,
    mOutPtr16_out_1,
    \ap_CS_fsm_reg[3]_1 ,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TDATA,
    ap_rst_n_inv,
    ap_clk,
    DI,
    S,
    icmp_ln116_1_fu_138_p2_carry__1_0,
    icmp_ln116_1_fu_138_p2_carry__2_0,
    \ap_CS_fsm_reg[4]_0 ,
    \ap_CS_fsm_reg[4]_1 ,
    icmp_ln116_fu_120_p2_carry__0_0,
    icmp_ln116_fu_120_p2_carry__0_1,
    icmp_ln116_fu_120_p2_carry__1_0,
    \icmp_ln116_reg_181_reg[0]_0 ,
    out,
    \icmp_ln116_reg_181_reg[0]_1 ,
    out_mat_data_empty_n,
    push,
    mOutPtr,
    out_mat_cols_channel_empty_n,
    out_mat_rows_channel_empty_n,
    m_axis_video_TREADY,
    push_2,
    push_3,
    ap_rst_n,
    icmp_ln116_1_fu_138_p2_carry__2_1,
    D,
    \sub_reg_176_reg[31]_0 );
  output \B_V_data_1_state_reg[0] ;
  output empty_n_reg;
  output \ap_CS_fsm_reg[3]_0 ;
  output [1:0]Q;
  output [30:0]\i_fu_62_reg[30]_0 ;
  output ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready;
  output empty_n_reg_0;
  output mOutPtr16_out;
  output empty_n_reg_1;
  output mOutPtr16_out_0;
  output mOutPtr16_out_1;
  output \ap_CS_fsm_reg[3]_1 ;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [23:0]m_axis_video_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input [3:0]DI;
  input [0:0]S;
  input [3:0]icmp_ln116_1_fu_138_p2_carry__1_0;
  input [3:0]icmp_ln116_1_fu_138_p2_carry__2_0;
  input [3:0]\ap_CS_fsm_reg[4]_0 ;
  input [0:0]\ap_CS_fsm_reg[4]_1 ;
  input [0:0]icmp_ln116_fu_120_p2_carry__0_0;
  input [3:0]icmp_ln116_fu_120_p2_carry__0_1;
  input [3:0]icmp_ln116_fu_120_p2_carry__1_0;
  input [3:0]\icmp_ln116_reg_181_reg[0]_0 ;
  input [31:0]out;
  input [3:0]\icmp_ln116_reg_181_reg[0]_1 ;
  input out_mat_data_empty_n;
  input push;
  input [0:0]mOutPtr;
  input out_mat_cols_channel_empty_n;
  input out_mat_rows_channel_empty_n;
  input m_axis_video_TREADY;
  input push_2;
  input push_3;
  input ap_rst_n;
  input [27:0]icmp_ln116_1_fu_138_p2_carry__2_1;
  input [23:0]D;
  input [31:0]\sub_reg_176_reg[31]_0 ;

  wire \B_V_data_1_state_reg[0] ;
  wire ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready;
  wire [23:0]D;
  wire [3:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire and_ln116_reg_189;
  wire \and_ln116_reg_189[0]_i_1_n_0 ;
  wire \ap_CS_fsm_reg[3]_0 ;
  wire \ap_CS_fsm_reg[3]_1 ;
  wire [3:0]\ap_CS_fsm_reg[4]_0 ;
  wire [0:0]\ap_CS_fsm_reg[4]_1 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state5;
  wire [4:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_last_reg_195;
  wire empty_n_reg;
  wire empty_n_reg_0;
  wire empty_n_reg_1;
  wire grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg;
  wire grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_n_11;
  wire grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_n_2;
  wire grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_n_6;
  wire \i_fu_62[0]_i_2_n_0 ;
  wire \i_fu_62_reg[0]_i_1_n_0 ;
  wire \i_fu_62_reg[0]_i_1_n_1 ;
  wire \i_fu_62_reg[0]_i_1_n_2 ;
  wire \i_fu_62_reg[0]_i_1_n_3 ;
  wire \i_fu_62_reg[0]_i_1_n_4 ;
  wire \i_fu_62_reg[0]_i_1_n_5 ;
  wire \i_fu_62_reg[0]_i_1_n_6 ;
  wire \i_fu_62_reg[0]_i_1_n_7 ;
  wire \i_fu_62_reg[12]_i_1_n_0 ;
  wire \i_fu_62_reg[12]_i_1_n_1 ;
  wire \i_fu_62_reg[12]_i_1_n_2 ;
  wire \i_fu_62_reg[12]_i_1_n_3 ;
  wire \i_fu_62_reg[12]_i_1_n_4 ;
  wire \i_fu_62_reg[12]_i_1_n_5 ;
  wire \i_fu_62_reg[12]_i_1_n_6 ;
  wire \i_fu_62_reg[12]_i_1_n_7 ;
  wire \i_fu_62_reg[16]_i_1_n_0 ;
  wire \i_fu_62_reg[16]_i_1_n_1 ;
  wire \i_fu_62_reg[16]_i_1_n_2 ;
  wire \i_fu_62_reg[16]_i_1_n_3 ;
  wire \i_fu_62_reg[16]_i_1_n_4 ;
  wire \i_fu_62_reg[16]_i_1_n_5 ;
  wire \i_fu_62_reg[16]_i_1_n_6 ;
  wire \i_fu_62_reg[16]_i_1_n_7 ;
  wire \i_fu_62_reg[20]_i_1_n_0 ;
  wire \i_fu_62_reg[20]_i_1_n_1 ;
  wire \i_fu_62_reg[20]_i_1_n_2 ;
  wire \i_fu_62_reg[20]_i_1_n_3 ;
  wire \i_fu_62_reg[20]_i_1_n_4 ;
  wire \i_fu_62_reg[20]_i_1_n_5 ;
  wire \i_fu_62_reg[20]_i_1_n_6 ;
  wire \i_fu_62_reg[20]_i_1_n_7 ;
  wire \i_fu_62_reg[24]_i_1_n_0 ;
  wire \i_fu_62_reg[24]_i_1_n_1 ;
  wire \i_fu_62_reg[24]_i_1_n_2 ;
  wire \i_fu_62_reg[24]_i_1_n_3 ;
  wire \i_fu_62_reg[24]_i_1_n_4 ;
  wire \i_fu_62_reg[24]_i_1_n_5 ;
  wire \i_fu_62_reg[24]_i_1_n_6 ;
  wire \i_fu_62_reg[24]_i_1_n_7 ;
  wire \i_fu_62_reg[28]_i_1_n_2 ;
  wire \i_fu_62_reg[28]_i_1_n_3 ;
  wire \i_fu_62_reg[28]_i_1_n_5 ;
  wire \i_fu_62_reg[28]_i_1_n_6 ;
  wire \i_fu_62_reg[28]_i_1_n_7 ;
  wire [30:0]\i_fu_62_reg[30]_0 ;
  wire \i_fu_62_reg[4]_i_1_n_0 ;
  wire \i_fu_62_reg[4]_i_1_n_1 ;
  wire \i_fu_62_reg[4]_i_1_n_2 ;
  wire \i_fu_62_reg[4]_i_1_n_3 ;
  wire \i_fu_62_reg[4]_i_1_n_4 ;
  wire \i_fu_62_reg[4]_i_1_n_5 ;
  wire \i_fu_62_reg[4]_i_1_n_6 ;
  wire \i_fu_62_reg[4]_i_1_n_7 ;
  wire \i_fu_62_reg[8]_i_1_n_0 ;
  wire \i_fu_62_reg[8]_i_1_n_1 ;
  wire \i_fu_62_reg[8]_i_1_n_2 ;
  wire \i_fu_62_reg[8]_i_1_n_3 ;
  wire \i_fu_62_reg[8]_i_1_n_4 ;
  wire \i_fu_62_reg[8]_i_1_n_5 ;
  wire \i_fu_62_reg[8]_i_1_n_6 ;
  wire \i_fu_62_reg[8]_i_1_n_7 ;
  wire icmp_ln116_1_fu_138_p2;
  wire icmp_ln116_1_fu_138_p2_carry__0_i_5_n_0;
  wire icmp_ln116_1_fu_138_p2_carry__0_i_6_n_0;
  wire icmp_ln116_1_fu_138_p2_carry__0_i_7_n_0;
  wire icmp_ln116_1_fu_138_p2_carry__0_i_8_n_0;
  wire icmp_ln116_1_fu_138_p2_carry__0_n_0;
  wire icmp_ln116_1_fu_138_p2_carry__0_n_1;
  wire icmp_ln116_1_fu_138_p2_carry__0_n_2;
  wire icmp_ln116_1_fu_138_p2_carry__0_n_3;
  wire [3:0]icmp_ln116_1_fu_138_p2_carry__1_0;
  wire icmp_ln116_1_fu_138_p2_carry__1_i_5_n_0;
  wire icmp_ln116_1_fu_138_p2_carry__1_i_6_n_0;
  wire icmp_ln116_1_fu_138_p2_carry__1_i_7_n_0;
  wire icmp_ln116_1_fu_138_p2_carry__1_i_8_n_0;
  wire icmp_ln116_1_fu_138_p2_carry__1_n_0;
  wire icmp_ln116_1_fu_138_p2_carry__1_n_1;
  wire icmp_ln116_1_fu_138_p2_carry__1_n_2;
  wire icmp_ln116_1_fu_138_p2_carry__1_n_3;
  wire [3:0]icmp_ln116_1_fu_138_p2_carry__2_0;
  wire [27:0]icmp_ln116_1_fu_138_p2_carry__2_1;
  wire icmp_ln116_1_fu_138_p2_carry__2_i_6_n_0;
  wire icmp_ln116_1_fu_138_p2_carry__2_i_7_n_0;
  wire icmp_ln116_1_fu_138_p2_carry__2_i_8_n_0;
  wire icmp_ln116_1_fu_138_p2_carry__2_n_1;
  wire icmp_ln116_1_fu_138_p2_carry__2_n_2;
  wire icmp_ln116_1_fu_138_p2_carry__2_n_3;
  wire icmp_ln116_1_fu_138_p2_carry_i_5_n_0;
  wire icmp_ln116_1_fu_138_p2_carry_i_6_n_0;
  wire icmp_ln116_1_fu_138_p2_carry_i_7_n_0;
  wire icmp_ln116_1_fu_138_p2_carry_n_0;
  wire icmp_ln116_1_fu_138_p2_carry_n_1;
  wire icmp_ln116_1_fu_138_p2_carry_n_2;
  wire icmp_ln116_1_fu_138_p2_carry_n_3;
  wire icmp_ln116_fu_120_p2;
  wire [0:0]icmp_ln116_fu_120_p2_carry__0_0;
  wire [3:0]icmp_ln116_fu_120_p2_carry__0_1;
  wire icmp_ln116_fu_120_p2_carry__0_n_0;
  wire icmp_ln116_fu_120_p2_carry__0_n_1;
  wire icmp_ln116_fu_120_p2_carry__0_n_2;
  wire icmp_ln116_fu_120_p2_carry__0_n_3;
  wire [3:0]icmp_ln116_fu_120_p2_carry__1_0;
  wire icmp_ln116_fu_120_p2_carry__1_n_0;
  wire icmp_ln116_fu_120_p2_carry__1_n_1;
  wire icmp_ln116_fu_120_p2_carry__1_n_2;
  wire icmp_ln116_fu_120_p2_carry__1_n_3;
  wire icmp_ln116_fu_120_p2_carry__2_n_1;
  wire icmp_ln116_fu_120_p2_carry__2_n_2;
  wire icmp_ln116_fu_120_p2_carry__2_n_3;
  wire icmp_ln116_fu_120_p2_carry_n_0;
  wire icmp_ln116_fu_120_p2_carry_n_1;
  wire icmp_ln116_fu_120_p2_carry_n_2;
  wire icmp_ln116_fu_120_p2_carry_n_3;
  wire icmp_ln116_reg_181;
  wire [3:0]\icmp_ln116_reg_181_reg[0]_0 ;
  wire [3:0]\icmp_ln116_reg_181_reg[0]_1 ;
  wire icmp_ln121_reg_191;
  wire [0:0]mOutPtr;
  wire mOutPtr16_out;
  wire mOutPtr16_out_0;
  wire mOutPtr16_out_1;
  wire [23:0]m_axis_video_TDATA;
  wire [0:0]m_axis_video_TLAST;
  wire m_axis_video_TREADY;
  wire m_axis_video_TREADY_int_regslice;
  wire [0:0]m_axis_video_TUSER;
  wire [31:0]out;
  wire out_mat_cols_channel_empty_n;
  wire out_mat_data_empty_n;
  wire out_mat_rows_channel_empty_n;
  wire p_1_in;
  wire push;
  wire push_2;
  wire push_3;
  wire \sof_reg_78_reg_n_0_[0] ;
  wire [31:0]sub_reg_176;
  wire [31:0]\sub_reg_176_reg[31]_0 ;
  wire [3:2]\NLW_i_fu_62_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_fu_62_reg[28]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_icmp_ln116_1_fu_138_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln116_1_fu_138_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln116_1_fu_138_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln116_1_fu_138_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln116_fu_120_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln116_fu_120_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln116_fu_120_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln116_fu_120_p2_carry__2_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h8F80)) 
    \and_ln116_reg_189[0]_i_1 
       (.I0(\sof_reg_78_reg_n_0_[0] ),
        .I1(icmp_ln116_reg_181),
        .I2(ap_CS_fsm_state2),
        .I3(and_ln116_reg_189),
        .O(\and_ln116_reg_189[0]_i_1_n_0 ));
  FDRE \and_ln116_reg_189_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\and_ln116_reg_189[0]_i_1_n_0 ),
        .Q(and_ln116_reg_189),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[2]_i_1__1 
       (.I0(ap_CS_fsm_state2),
        .I1(icmp_ln116_1_fu_138_p2),
        .O(ap_NS_fsm[2]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90
       (.D({ap_NS_fsm[3],ap_NS_fsm[1]}),
        .Q({Q[1],ap_CS_fsm_state3,Q[0]}),
        .and_ln116_reg_189(and_ln116_reg_189),
        .\ap_CS_fsm_reg[0] (grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_n_6),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3]_0 ),
        .\ap_CS_fsm_reg[3]_0 (\ap_CS_fsm_reg[3]_1 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_last_fu_168_p2_carry__1_0(sub_reg_176),
        .axi_last_reg_195(axi_last_reg_195),
        .clear(p_1_in),
        .empty_n_reg(empty_n_reg),
        .grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_n_11),
        .icmp_ln121_reg_191(icmp_ln121_reg_191),
        .mOutPtr(mOutPtr),
        .mOutPtr16_out_1(mOutPtr16_out_1),
        .m_axis_video_TREADY_int_regslice(m_axis_video_TREADY_int_regslice),
        .out(out),
        .out_mat_cols_channel_empty_n(out_mat_cols_channel_empty_n),
        .out_mat_data_empty_n(out_mat_data_empty_n),
        .out_mat_rows_channel_empty_n(out_mat_rows_channel_empty_n),
        .push(push),
        .\sof_2_reg_132_reg[0]_0 (grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_n_2),
        .\sof_2_reg_132_reg[0]_1 (\sof_reg_78_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_n_11),
        .Q(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \i_fu_62[0]_i_2 
       (.I0(\i_fu_62_reg[30]_0 [0]),
        .O(\i_fu_62[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[0]_i_1_n_7 ),
        .Q(\i_fu_62_reg[30]_0 [0]),
        .R(p_1_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_62_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\i_fu_62_reg[0]_i_1_n_0 ,\i_fu_62_reg[0]_i_1_n_1 ,\i_fu_62_reg[0]_i_1_n_2 ,\i_fu_62_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_fu_62_reg[0]_i_1_n_4 ,\i_fu_62_reg[0]_i_1_n_5 ,\i_fu_62_reg[0]_i_1_n_6 ,\i_fu_62_reg[0]_i_1_n_7 }),
        .S({\i_fu_62_reg[30]_0 [3:1],\i_fu_62[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[8]_i_1_n_5 ),
        .Q(\i_fu_62_reg[30]_0 [10]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[8]_i_1_n_4 ),
        .Q(\i_fu_62_reg[30]_0 [11]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[12]_i_1_n_7 ),
        .Q(\i_fu_62_reg[30]_0 [12]),
        .R(p_1_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_62_reg[12]_i_1 
       (.CI(\i_fu_62_reg[8]_i_1_n_0 ),
        .CO({\i_fu_62_reg[12]_i_1_n_0 ,\i_fu_62_reg[12]_i_1_n_1 ,\i_fu_62_reg[12]_i_1_n_2 ,\i_fu_62_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_fu_62_reg[12]_i_1_n_4 ,\i_fu_62_reg[12]_i_1_n_5 ,\i_fu_62_reg[12]_i_1_n_6 ,\i_fu_62_reg[12]_i_1_n_7 }),
        .S(\i_fu_62_reg[30]_0 [15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[12]_i_1_n_6 ),
        .Q(\i_fu_62_reg[30]_0 [13]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[12]_i_1_n_5 ),
        .Q(\i_fu_62_reg[30]_0 [14]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[12]_i_1_n_4 ),
        .Q(\i_fu_62_reg[30]_0 [15]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[16] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[16]_i_1_n_7 ),
        .Q(\i_fu_62_reg[30]_0 [16]),
        .R(p_1_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_62_reg[16]_i_1 
       (.CI(\i_fu_62_reg[12]_i_1_n_0 ),
        .CO({\i_fu_62_reg[16]_i_1_n_0 ,\i_fu_62_reg[16]_i_1_n_1 ,\i_fu_62_reg[16]_i_1_n_2 ,\i_fu_62_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_fu_62_reg[16]_i_1_n_4 ,\i_fu_62_reg[16]_i_1_n_5 ,\i_fu_62_reg[16]_i_1_n_6 ,\i_fu_62_reg[16]_i_1_n_7 }),
        .S(\i_fu_62_reg[30]_0 [19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[17] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[16]_i_1_n_6 ),
        .Q(\i_fu_62_reg[30]_0 [17]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[18] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[16]_i_1_n_5 ),
        .Q(\i_fu_62_reg[30]_0 [18]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[19] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[16]_i_1_n_4 ),
        .Q(\i_fu_62_reg[30]_0 [19]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[0]_i_1_n_6 ),
        .Q(\i_fu_62_reg[30]_0 [1]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[20] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[20]_i_1_n_7 ),
        .Q(\i_fu_62_reg[30]_0 [20]),
        .R(p_1_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_62_reg[20]_i_1 
       (.CI(\i_fu_62_reg[16]_i_1_n_0 ),
        .CO({\i_fu_62_reg[20]_i_1_n_0 ,\i_fu_62_reg[20]_i_1_n_1 ,\i_fu_62_reg[20]_i_1_n_2 ,\i_fu_62_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_fu_62_reg[20]_i_1_n_4 ,\i_fu_62_reg[20]_i_1_n_5 ,\i_fu_62_reg[20]_i_1_n_6 ,\i_fu_62_reg[20]_i_1_n_7 }),
        .S(\i_fu_62_reg[30]_0 [23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[21] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[20]_i_1_n_6 ),
        .Q(\i_fu_62_reg[30]_0 [21]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[22] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[20]_i_1_n_5 ),
        .Q(\i_fu_62_reg[30]_0 [22]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[23] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[20]_i_1_n_4 ),
        .Q(\i_fu_62_reg[30]_0 [23]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[24] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[24]_i_1_n_7 ),
        .Q(\i_fu_62_reg[30]_0 [24]),
        .R(p_1_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_62_reg[24]_i_1 
       (.CI(\i_fu_62_reg[20]_i_1_n_0 ),
        .CO({\i_fu_62_reg[24]_i_1_n_0 ,\i_fu_62_reg[24]_i_1_n_1 ,\i_fu_62_reg[24]_i_1_n_2 ,\i_fu_62_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_fu_62_reg[24]_i_1_n_4 ,\i_fu_62_reg[24]_i_1_n_5 ,\i_fu_62_reg[24]_i_1_n_6 ,\i_fu_62_reg[24]_i_1_n_7 }),
        .S(\i_fu_62_reg[30]_0 [27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[25] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[24]_i_1_n_6 ),
        .Q(\i_fu_62_reg[30]_0 [25]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[26] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[24]_i_1_n_5 ),
        .Q(\i_fu_62_reg[30]_0 [26]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[27] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[24]_i_1_n_4 ),
        .Q(\i_fu_62_reg[30]_0 [27]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[28] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[28]_i_1_n_7 ),
        .Q(\i_fu_62_reg[30]_0 [28]),
        .R(p_1_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_62_reg[28]_i_1 
       (.CI(\i_fu_62_reg[24]_i_1_n_0 ),
        .CO({\NLW_i_fu_62_reg[28]_i_1_CO_UNCONNECTED [3:2],\i_fu_62_reg[28]_i_1_n_2 ,\i_fu_62_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_fu_62_reg[28]_i_1_O_UNCONNECTED [3],\i_fu_62_reg[28]_i_1_n_5 ,\i_fu_62_reg[28]_i_1_n_6 ,\i_fu_62_reg[28]_i_1_n_7 }),
        .S({1'b0,\i_fu_62_reg[30]_0 [30:28]}));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[29] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[28]_i_1_n_6 ),
        .Q(\i_fu_62_reg[30]_0 [29]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[0]_i_1_n_5 ),
        .Q(\i_fu_62_reg[30]_0 [2]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[30] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[28]_i_1_n_5 ),
        .Q(\i_fu_62_reg[30]_0 [30]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[0]_i_1_n_4 ),
        .Q(\i_fu_62_reg[30]_0 [3]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[4]_i_1_n_7 ),
        .Q(\i_fu_62_reg[30]_0 [4]),
        .R(p_1_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_62_reg[4]_i_1 
       (.CI(\i_fu_62_reg[0]_i_1_n_0 ),
        .CO({\i_fu_62_reg[4]_i_1_n_0 ,\i_fu_62_reg[4]_i_1_n_1 ,\i_fu_62_reg[4]_i_1_n_2 ,\i_fu_62_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_fu_62_reg[4]_i_1_n_4 ,\i_fu_62_reg[4]_i_1_n_5 ,\i_fu_62_reg[4]_i_1_n_6 ,\i_fu_62_reg[4]_i_1_n_7 }),
        .S(\i_fu_62_reg[30]_0 [7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[4]_i_1_n_6 ),
        .Q(\i_fu_62_reg[30]_0 [5]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[4]_i_1_n_5 ),
        .Q(\i_fu_62_reg[30]_0 [6]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[4]_i_1_n_4 ),
        .Q(\i_fu_62_reg[30]_0 [7]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[8]_i_1_n_7 ),
        .Q(\i_fu_62_reg[30]_0 [8]),
        .R(p_1_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_fu_62_reg[8]_i_1 
       (.CI(\i_fu_62_reg[4]_i_1_n_0 ),
        .CO({\i_fu_62_reg[8]_i_1_n_0 ,\i_fu_62_reg[8]_i_1_n_1 ,\i_fu_62_reg[8]_i_1_n_2 ,\i_fu_62_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_fu_62_reg[8]_i_1_n_4 ,\i_fu_62_reg[8]_i_1_n_5 ,\i_fu_62_reg[8]_i_1_n_6 ,\i_fu_62_reg[8]_i_1_n_7 }),
        .S(\i_fu_62_reg[30]_0 [11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\i_fu_62_reg[8]_i_1_n_6 ),
        .Q(\i_fu_62_reg[30]_0 [9]),
        .R(p_1_in));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln116_1_fu_138_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln116_1_fu_138_p2_carry_n_0,icmp_ln116_1_fu_138_p2_carry_n_1,icmp_ln116_1_fu_138_p2_carry_n_2,icmp_ln116_1_fu_138_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_icmp_ln116_1_fu_138_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln116_1_fu_138_p2_carry_i_5_n_0,icmp_ln116_1_fu_138_p2_carry_i_6_n_0,icmp_ln116_1_fu_138_p2_carry_i_7_n_0,S}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln116_1_fu_138_p2_carry__0
       (.CI(icmp_ln116_1_fu_138_p2_carry_n_0),
        .CO({icmp_ln116_1_fu_138_p2_carry__0_n_0,icmp_ln116_1_fu_138_p2_carry__0_n_1,icmp_ln116_1_fu_138_p2_carry__0_n_2,icmp_ln116_1_fu_138_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(icmp_ln116_1_fu_138_p2_carry__1_0),
        .O(NLW_icmp_ln116_1_fu_138_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln116_1_fu_138_p2_carry__0_i_5_n_0,icmp_ln116_1_fu_138_p2_carry__0_i_6_n_0,icmp_ln116_1_fu_138_p2_carry__0_i_7_n_0,icmp_ln116_1_fu_138_p2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry__0_i_5
       (.I0(\i_fu_62_reg[30]_0 [15]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2_1[13]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2_1[12]),
        .I3(\i_fu_62_reg[30]_0 [14]),
        .O(icmp_ln116_1_fu_138_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry__0_i_6
       (.I0(\i_fu_62_reg[30]_0 [13]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2_1[11]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2_1[10]),
        .I3(\i_fu_62_reg[30]_0 [12]),
        .O(icmp_ln116_1_fu_138_p2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry__0_i_7
       (.I0(\i_fu_62_reg[30]_0 [11]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2_1[9]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2_1[8]),
        .I3(\i_fu_62_reg[30]_0 [10]),
        .O(icmp_ln116_1_fu_138_p2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry__0_i_8
       (.I0(\i_fu_62_reg[30]_0 [9]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2_1[7]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2_1[6]),
        .I3(\i_fu_62_reg[30]_0 [8]),
        .O(icmp_ln116_1_fu_138_p2_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln116_1_fu_138_p2_carry__1
       (.CI(icmp_ln116_1_fu_138_p2_carry__0_n_0),
        .CO({icmp_ln116_1_fu_138_p2_carry__1_n_0,icmp_ln116_1_fu_138_p2_carry__1_n_1,icmp_ln116_1_fu_138_p2_carry__1_n_2,icmp_ln116_1_fu_138_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(icmp_ln116_1_fu_138_p2_carry__2_0),
        .O(NLW_icmp_ln116_1_fu_138_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({icmp_ln116_1_fu_138_p2_carry__1_i_5_n_0,icmp_ln116_1_fu_138_p2_carry__1_i_6_n_0,icmp_ln116_1_fu_138_p2_carry__1_i_7_n_0,icmp_ln116_1_fu_138_p2_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry__1_i_5
       (.I0(\i_fu_62_reg[30]_0 [23]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2_1[21]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2_1[20]),
        .I3(\i_fu_62_reg[30]_0 [22]),
        .O(icmp_ln116_1_fu_138_p2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry__1_i_6
       (.I0(\i_fu_62_reg[30]_0 [21]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2_1[19]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2_1[18]),
        .I3(\i_fu_62_reg[30]_0 [20]),
        .O(icmp_ln116_1_fu_138_p2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry__1_i_7
       (.I0(\i_fu_62_reg[30]_0 [19]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2_1[17]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2_1[16]),
        .I3(\i_fu_62_reg[30]_0 [18]),
        .O(icmp_ln116_1_fu_138_p2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry__1_i_8
       (.I0(\i_fu_62_reg[30]_0 [17]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2_1[15]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2_1[14]),
        .I3(\i_fu_62_reg[30]_0 [16]),
        .O(icmp_ln116_1_fu_138_p2_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln116_1_fu_138_p2_carry__2
       (.CI(icmp_ln116_1_fu_138_p2_carry__1_n_0),
        .CO({icmp_ln116_1_fu_138_p2,icmp_ln116_1_fu_138_p2_carry__2_n_1,icmp_ln116_1_fu_138_p2_carry__2_n_2,icmp_ln116_1_fu_138_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\ap_CS_fsm_reg[4]_0 ),
        .O(NLW_icmp_ln116_1_fu_138_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({\ap_CS_fsm_reg[4]_1 ,icmp_ln116_1_fu_138_p2_carry__2_i_6_n_0,icmp_ln116_1_fu_138_p2_carry__2_i_7_n_0,icmp_ln116_1_fu_138_p2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry__2_i_6
       (.I0(\i_fu_62_reg[30]_0 [29]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2_1[27]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2_1[26]),
        .I3(\i_fu_62_reg[30]_0 [28]),
        .O(icmp_ln116_1_fu_138_p2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry__2_i_7
       (.I0(\i_fu_62_reg[30]_0 [27]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2_1[25]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2_1[24]),
        .I3(\i_fu_62_reg[30]_0 [26]),
        .O(icmp_ln116_1_fu_138_p2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry__2_i_8
       (.I0(\i_fu_62_reg[30]_0 [25]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2_1[23]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2_1[22]),
        .I3(\i_fu_62_reg[30]_0 [24]),
        .O(icmp_ln116_1_fu_138_p2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry_i_5
       (.I0(\i_fu_62_reg[30]_0 [7]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2_1[5]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2_1[4]),
        .I3(\i_fu_62_reg[30]_0 [6]),
        .O(icmp_ln116_1_fu_138_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry_i_6
       (.I0(\i_fu_62_reg[30]_0 [5]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2_1[3]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2_1[2]),
        .I3(\i_fu_62_reg[30]_0 [4]),
        .O(icmp_ln116_1_fu_138_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry_i_7
       (.I0(\i_fu_62_reg[30]_0 [3]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2_1[1]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2_1[0]),
        .I3(\i_fu_62_reg[30]_0 [2]),
        .O(icmp_ln116_1_fu_138_p2_carry_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln116_fu_120_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln116_fu_120_p2_carry_n_0,icmp_ln116_fu_120_p2_carry_n_1,icmp_ln116_fu_120_p2_carry_n_2,icmp_ln116_fu_120_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,icmp_ln116_fu_120_p2_carry__0_0}),
        .O(NLW_icmp_ln116_fu_120_p2_carry_O_UNCONNECTED[3:0]),
        .S(icmp_ln116_fu_120_p2_carry__0_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln116_fu_120_p2_carry__0
       (.CI(icmp_ln116_fu_120_p2_carry_n_0),
        .CO({icmp_ln116_fu_120_p2_carry__0_n_0,icmp_ln116_fu_120_p2_carry__0_n_1,icmp_ln116_fu_120_p2_carry__0_n_2,icmp_ln116_fu_120_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln116_fu_120_p2_carry__0_O_UNCONNECTED[3:0]),
        .S(icmp_ln116_fu_120_p2_carry__1_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln116_fu_120_p2_carry__1
       (.CI(icmp_ln116_fu_120_p2_carry__0_n_0),
        .CO({icmp_ln116_fu_120_p2_carry__1_n_0,icmp_ln116_fu_120_p2_carry__1_n_1,icmp_ln116_fu_120_p2_carry__1_n_2,icmp_ln116_fu_120_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln116_fu_120_p2_carry__1_O_UNCONNECTED[3:0]),
        .S(\icmp_ln116_reg_181_reg[0]_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln116_fu_120_p2_carry__2
       (.CI(icmp_ln116_fu_120_p2_carry__1_n_0),
        .CO({icmp_ln116_fu_120_p2,icmp_ln116_fu_120_p2_carry__2_n_1,icmp_ln116_fu_120_p2_carry__2_n_2,icmp_ln116_fu_120_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({out[31],1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln116_fu_120_p2_carry__2_O_UNCONNECTED[3:0]),
        .S(\icmp_ln116_reg_181_reg[0]_1 ));
  FDRE \icmp_ln116_reg_181_reg[0] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(icmp_ln116_fu_120_p2),
        .Q(icmp_ln116_reg_181),
        .R(1'b0));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_regslice_both__parameterized2 regslice_both_m_axis_video_V_data_V_U
       (.\B_V_data_1_payload_B_reg[23]_0 (D),
        .\B_V_data_1_state_reg[0]_0 (\B_V_data_1_state_reg[0] ),
        .\B_V_data_1_state_reg[1]_0 (\ap_CS_fsm_reg[3]_0 ),
        .CO(icmp_ln116_1_fu_138_p2),
        .ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .D({ap_NS_fsm[4],ap_NS_fsm[0]}),
        .Q({ap_CS_fsm_state5,Q[1],ap_CS_fsm_state2,Q[0]}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .empty_n_reg(empty_n_reg_0),
        .empty_n_reg_0(empty_n_reg_1),
        .icmp_ln121_reg_191(icmp_ln121_reg_191),
        .mOutPtr16_out(mOutPtr16_out),
        .mOutPtr16_out_0(mOutPtr16_out_0),
        .m_axis_video_TDATA(m_axis_video_TDATA),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TREADY_int_regslice(m_axis_video_TREADY_int_regslice),
        .out_mat_cols_channel_empty_n(out_mat_cols_channel_empty_n),
        .out_mat_data_empty_n(out_mat_data_empty_n),
        .out_mat_rows_channel_empty_n(out_mat_rows_channel_empty_n),
        .push_2(push_2),
        .push_3(push_3));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_regslice_both__parameterized1 regslice_both_m_axis_video_V_last_V_U
       (.B_V_data_1_sel_wr_reg_0(\ap_CS_fsm_reg[3]_0 ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_last_reg_195(axi_last_reg_195),
        .m_axis_video_TLAST(m_axis_video_TLAST),
        .m_axis_video_TREADY(m_axis_video_TREADY));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_regslice_both__parameterized1_14 regslice_both_m_axis_video_V_user_V_U
       (.\B_V_data_1_payload_A_reg[0]_0 (grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_n_2),
        .B_V_data_1_sel_wr_reg_0(\ap_CS_fsm_reg[3]_0 ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TUSER(m_axis_video_TUSER));
  FDRE \sof_reg_78_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_n_6),
        .Q(\sof_reg_78_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \sub_reg_176[31]_i_1 
       (.I0(Q[0]),
        .I1(out_mat_cols_channel_empty_n),
        .I2(out_mat_rows_channel_empty_n),
        .O(p_1_in));
  FDRE \sub_reg_176_reg[0] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [0]),
        .Q(sub_reg_176[0]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[10] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [10]),
        .Q(sub_reg_176[10]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[11] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [11]),
        .Q(sub_reg_176[11]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[12] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [12]),
        .Q(sub_reg_176[12]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[13] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [13]),
        .Q(sub_reg_176[13]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[14] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [14]),
        .Q(sub_reg_176[14]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[15] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [15]),
        .Q(sub_reg_176[15]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[16] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [16]),
        .Q(sub_reg_176[16]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[17] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [17]),
        .Q(sub_reg_176[17]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[18] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [18]),
        .Q(sub_reg_176[18]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[19] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [19]),
        .Q(sub_reg_176[19]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[1] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [1]),
        .Q(sub_reg_176[1]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[20] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [20]),
        .Q(sub_reg_176[20]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[21] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [21]),
        .Q(sub_reg_176[21]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[22] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [22]),
        .Q(sub_reg_176[22]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[23] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [23]),
        .Q(sub_reg_176[23]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[24] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [24]),
        .Q(sub_reg_176[24]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[25] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [25]),
        .Q(sub_reg_176[25]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[26] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [26]),
        .Q(sub_reg_176[26]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[27] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [27]),
        .Q(sub_reg_176[27]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[28] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [28]),
        .Q(sub_reg_176[28]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[29] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [29]),
        .Q(sub_reg_176[29]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[2] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [2]),
        .Q(sub_reg_176[2]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[30] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [30]),
        .Q(sub_reg_176[30]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[31] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [31]),
        .Q(sub_reg_176[31]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[3] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [3]),
        .Q(sub_reg_176[3]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[4] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [4]),
        .Q(sub_reg_176[4]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[5] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [5]),
        .Q(sub_reg_176[5]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[6] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [6]),
        .Q(sub_reg_176[6]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[7] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [7]),
        .Q(sub_reg_176[7]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[8] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [8]),
        .Q(sub_reg_176[8]),
        .R(1'b0));
  FDRE \sub_reg_176_reg[9] 
       (.C(ap_clk),
        .CE(p_1_in),
        .D(\sub_reg_176_reg[31]_0 [9]),
        .Q(sub_reg_176[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_control_s_axi" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_control_s_axi
   (Block_entry1_proc_U0_ap_start,
    ap_rst_n_inv,
    interrupt,
    s_axi_control_RVALID,
    \FSM_onehot_rstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[2]_0 ,
    Q,
    \int_rows_in_reg[31]_0 ,
    push,
    push_0,
    ap_sync_channel_write_out_mat_cols_channel,
    Block_entry1_proc_U0_ap_ready,
    s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[1]_0 ,
    in,
    int_ap_start_reg_0,
    push_1,
    push_2,
    ap_sync_channel_write_out_mat_rows_channel,
    ap_sync_channel_write_in_mat_rows_c9_channel,
    ap_sync_channel_write_in_mat_cols_c10_channel,
    int_ap_start_reg_1,
    ap_sync_reg_channel_write_out_mat_rows_channel,
    s_axi_control_RDATA,
    ap_clk,
    ap_idle,
    s_axi_control_ARADDR,
    s_axi_control_RREADY,
    s_axi_control_ARVALID,
    s_axi_control_WSTRB,
    s_axi_control_WDATA,
    s_axi_control_WVALID,
    ap_sync_reg_channel_write_in_mat_cols_c10_channel,
    ap_sync_reg_channel_write_in_mat_rows_c9_channel,
    ap_done_reg,
    ap_rst_n,
    s_axi_control_BREADY,
    s_axi_control_AWVALID,
    ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready,
    ap_return_3_preg,
    ap_return_2_preg,
    ap_sync_reg_channel_write_out_mat_cols_channel,
    out_mat_cols_channel_full_n,
    ap_sync_reg_channel_write_out_mat_rows_channel_reg,
    out_mat_rows_channel_full_n,
    in_mat_rows_c9_channel_full_n,
    in_mat_cols_c10_channel_full_n,
    s_axi_control_AWADDR);
  output Block_entry1_proc_U0_ap_start;
  output ap_rst_n_inv;
  output interrupt;
  output s_axi_control_RVALID;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output [31:0]Q;
  output [31:0]\int_rows_in_reg[31]_0 ;
  output push;
  output push_0;
  output ap_sync_channel_write_out_mat_cols_channel;
  output Block_entry1_proc_U0_ap_ready;
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output [31:0]in;
  output [31:0]int_ap_start_reg_0;
  output push_1;
  output push_2;
  output ap_sync_channel_write_out_mat_rows_channel;
  output ap_sync_channel_write_in_mat_rows_c9_channel;
  output ap_sync_channel_write_in_mat_cols_c10_channel;
  output int_ap_start_reg_1;
  output ap_sync_reg_channel_write_out_mat_rows_channel;
  output [31:0]s_axi_control_RDATA;
  input ap_clk;
  input ap_idle;
  input [4:0]s_axi_control_ARADDR;
  input s_axi_control_RREADY;
  input s_axi_control_ARVALID;
  input [3:0]s_axi_control_WSTRB;
  input [31:0]s_axi_control_WDATA;
  input s_axi_control_WVALID;
  input ap_sync_reg_channel_write_in_mat_cols_c10_channel;
  input ap_sync_reg_channel_write_in_mat_rows_c9_channel;
  input ap_done_reg;
  input ap_rst_n;
  input s_axi_control_BREADY;
  input s_axi_control_AWVALID;
  input ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready;
  input [31:0]ap_return_3_preg;
  input [31:0]ap_return_2_preg;
  input ap_sync_reg_channel_write_out_mat_cols_channel;
  input out_mat_cols_channel_full_n;
  input ap_sync_reg_channel_write_out_mat_rows_channel_reg;
  input out_mat_rows_channel_full_n;
  input in_mat_rows_c9_channel_full_n;
  input in_mat_cols_c10_channel_full_n;
  input [4:0]s_axi_control_AWADDR;

  wire Block_entry1_proc_U0_ap_ready;
  wire Block_entry1_proc_U0_ap_start;
  wire ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [31:0]Q;
  wire ap_clk;
  wire ap_done_reg;
  wire ap_idle;
  wire [31:0]ap_return_2_preg;
  wire [31:0]ap_return_3_preg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_sync_channel_write_in_mat_cols_c10_channel;
  wire ap_sync_channel_write_in_mat_rows_c9_channel;
  wire ap_sync_channel_write_out_mat_cols_channel;
  wire ap_sync_channel_write_out_mat_rows_channel;
  wire ap_sync_reg_channel_write_in_mat_cols_c10_channel;
  wire ap_sync_reg_channel_write_in_mat_rows_c9_channel;
  wire ap_sync_reg_channel_write_out_mat_cols_channel;
  wire ap_sync_reg_channel_write_out_mat_cols_channel_i_3_n_0;
  wire ap_sync_reg_channel_write_out_mat_cols_channel_i_4_n_0;
  wire ap_sync_reg_channel_write_out_mat_rows_channel;
  wire ap_sync_reg_channel_write_out_mat_rows_channel_reg;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire [31:0]in;
  wire in_mat_cols_c10_channel_full_n;
  wire in_mat_rows_c9_channel_full_n;
  wire int_ap_ready__0;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire [31:0]int_ap_start_reg_0;
  wire int_ap_start_reg_1;
  wire int_auto_restart_i_1_n_0;
  wire [31:0]int_cols_in0;
  wire \int_cols_in[31]_i_1_n_0 ;
  wire int_gie_i_1_n_0;
  wire int_gie_i_2_n_0;
  wire int_gie_i_3_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_interrupt0;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire [31:0]int_rows_in0;
  wire \int_rows_in[31]_i_1_n_0 ;
  wire [31:0]\int_rows_in_reg[31]_0 ;
  wire int_task_ap_done__0;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_2_n_0;
  wire interrupt;
  wire out_mat_cols_channel_full_n;
  wire out_mat_rows_channel_full_n;
  wire p_0_in;
  wire [7:2]p_2_in;
  wire push;
  wire push_0;
  wire push_1;
  wire push_2;
  wire [31:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF727)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(s_axi_control_RVALID),
        .I3(s_axi_control_RREADY),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_control_RREADY),
        .I1(s_axi_control_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_control_ARVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_control_RVALID),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hC0FFD1D1)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_control_BVALID),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_AWVALID),
        .I4(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_AWVALID),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h0E00)) 
    \SRL_SIG[0][31]_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(ap_sync_reg_channel_write_in_mat_rows_c9_channel),
        .I3(in_mat_rows_c9_channel_full_n),
        .O(push_0));
  LUT4 #(
    .INIT(16'h0E00)) 
    \SRL_SIG[0][31]_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(ap_sync_reg_channel_write_in_mat_cols_c10_channel),
        .I3(in_mat_cols_c10_channel_full_n),
        .O(push));
  LUT4 #(
    .INIT(16'h0E00)) 
    \SRL_SIG_reg[3][0]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(ap_sync_reg_channel_write_out_mat_cols_channel),
        .I3(out_mat_cols_channel_full_n),
        .O(push_1));
  LUT4 #(
    .INIT(16'h0E00)) 
    \SRL_SIG_reg[3][0]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(ap_sync_reg_channel_write_out_mat_rows_channel_reg),
        .I3(out_mat_rows_channel_full_n),
        .O(push_2));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][0]_srl4_i_2 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[0]),
        .I3(ap_return_3_preg[0]),
        .O(in[0]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][0]_srl4_i_2__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [0]),
        .I3(ap_return_2_preg[0]),
        .O(int_ap_start_reg_0[0]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][10]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[10]),
        .I3(ap_return_3_preg[10]),
        .O(in[10]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][10]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [10]),
        .I3(ap_return_2_preg[10]),
        .O(int_ap_start_reg_0[10]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][11]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[11]),
        .I3(ap_return_3_preg[11]),
        .O(in[11]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][11]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [11]),
        .I3(ap_return_2_preg[11]),
        .O(int_ap_start_reg_0[11]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][12]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[12]),
        .I3(ap_return_3_preg[12]),
        .O(in[12]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][12]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [12]),
        .I3(ap_return_2_preg[12]),
        .O(int_ap_start_reg_0[12]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][13]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[13]),
        .I3(ap_return_3_preg[13]),
        .O(in[13]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][13]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [13]),
        .I3(ap_return_2_preg[13]),
        .O(int_ap_start_reg_0[13]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][14]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[14]),
        .I3(ap_return_3_preg[14]),
        .O(in[14]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][14]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [14]),
        .I3(ap_return_2_preg[14]),
        .O(int_ap_start_reg_0[14]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][15]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[15]),
        .I3(ap_return_3_preg[15]),
        .O(in[15]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][15]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [15]),
        .I3(ap_return_2_preg[15]),
        .O(int_ap_start_reg_0[15]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][16]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[16]),
        .I3(ap_return_3_preg[16]),
        .O(in[16]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][16]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [16]),
        .I3(ap_return_2_preg[16]),
        .O(int_ap_start_reg_0[16]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][17]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[17]),
        .I3(ap_return_3_preg[17]),
        .O(in[17]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][17]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [17]),
        .I3(ap_return_2_preg[17]),
        .O(int_ap_start_reg_0[17]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][18]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[18]),
        .I3(ap_return_3_preg[18]),
        .O(in[18]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][18]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [18]),
        .I3(ap_return_2_preg[18]),
        .O(int_ap_start_reg_0[18]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][19]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[19]),
        .I3(ap_return_3_preg[19]),
        .O(in[19]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][19]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [19]),
        .I3(ap_return_2_preg[19]),
        .O(int_ap_start_reg_0[19]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][1]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[1]),
        .I3(ap_return_3_preg[1]),
        .O(in[1]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][1]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [1]),
        .I3(ap_return_2_preg[1]),
        .O(int_ap_start_reg_0[1]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][20]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[20]),
        .I3(ap_return_3_preg[20]),
        .O(in[20]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][20]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [20]),
        .I3(ap_return_2_preg[20]),
        .O(int_ap_start_reg_0[20]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][21]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[21]),
        .I3(ap_return_3_preg[21]),
        .O(in[21]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][21]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [21]),
        .I3(ap_return_2_preg[21]),
        .O(int_ap_start_reg_0[21]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][22]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[22]),
        .I3(ap_return_3_preg[22]),
        .O(in[22]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][22]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [22]),
        .I3(ap_return_2_preg[22]),
        .O(int_ap_start_reg_0[22]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][23]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[23]),
        .I3(ap_return_3_preg[23]),
        .O(in[23]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][23]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [23]),
        .I3(ap_return_2_preg[23]),
        .O(int_ap_start_reg_0[23]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][24]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[24]),
        .I3(ap_return_3_preg[24]),
        .O(in[24]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][24]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [24]),
        .I3(ap_return_2_preg[24]),
        .O(int_ap_start_reg_0[24]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][25]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[25]),
        .I3(ap_return_3_preg[25]),
        .O(in[25]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][25]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [25]),
        .I3(ap_return_2_preg[25]),
        .O(int_ap_start_reg_0[25]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][26]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[26]),
        .I3(ap_return_3_preg[26]),
        .O(in[26]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][26]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [26]),
        .I3(ap_return_2_preg[26]),
        .O(int_ap_start_reg_0[26]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][27]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[27]),
        .I3(ap_return_3_preg[27]),
        .O(in[27]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][27]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [27]),
        .I3(ap_return_2_preg[27]),
        .O(int_ap_start_reg_0[27]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][28]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[28]),
        .I3(ap_return_3_preg[28]),
        .O(in[28]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][28]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [28]),
        .I3(ap_return_2_preg[28]),
        .O(int_ap_start_reg_0[28]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][29]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[29]),
        .I3(ap_return_3_preg[29]),
        .O(in[29]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][29]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [29]),
        .I3(ap_return_2_preg[29]),
        .O(int_ap_start_reg_0[29]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][2]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[2]),
        .I3(ap_return_3_preg[2]),
        .O(in[2]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][2]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [2]),
        .I3(ap_return_2_preg[2]),
        .O(int_ap_start_reg_0[2]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][30]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[30]),
        .I3(ap_return_3_preg[30]),
        .O(in[30]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][30]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [30]),
        .I3(ap_return_2_preg[30]),
        .O(int_ap_start_reg_0[30]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][31]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[31]),
        .I3(ap_return_3_preg[31]),
        .O(in[31]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][31]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [31]),
        .I3(ap_return_2_preg[31]),
        .O(int_ap_start_reg_0[31]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][3]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[3]),
        .I3(ap_return_3_preg[3]),
        .O(in[3]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][3]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [3]),
        .I3(ap_return_2_preg[3]),
        .O(int_ap_start_reg_0[3]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][4]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[4]),
        .I3(ap_return_3_preg[4]),
        .O(in[4]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][4]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [4]),
        .I3(ap_return_2_preg[4]),
        .O(int_ap_start_reg_0[4]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][5]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[5]),
        .I3(ap_return_3_preg[5]),
        .O(in[5]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][5]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [5]),
        .I3(ap_return_2_preg[5]),
        .O(int_ap_start_reg_0[5]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][6]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[6]),
        .I3(ap_return_3_preg[6]),
        .O(in[6]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][6]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [6]),
        .I3(ap_return_2_preg[6]),
        .O(int_ap_start_reg_0[6]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][7]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[7]),
        .I3(ap_return_3_preg[7]),
        .O(in[7]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][7]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [7]),
        .I3(ap_return_2_preg[7]),
        .O(int_ap_start_reg_0[7]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][8]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[8]),
        .I3(ap_return_3_preg[8]),
        .O(in[8]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][8]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [8]),
        .I3(ap_return_2_preg[8]),
        .O(int_ap_start_reg_0[8]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][9]_srl4_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(Q[9]),
        .I3(ap_return_3_preg[9]),
        .O(in[9]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \SRL_SIG_reg[3][9]_srl4_i_1__0 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(\int_rows_in_reg[31]_0 [9]),
        .I3(ap_return_2_preg[9]),
        .O(int_ap_start_reg_0[9]));
  LUT4 #(
    .INIT(16'hE000)) 
    ap_done_reg_i_1
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(ap_rst_n),
        .I3(ap_sync_reg_channel_write_out_mat_cols_channel_i_3_n_0),
        .O(int_ap_start_reg_1));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_return_2_preg[0]_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .O(Block_entry1_proc_U0_ap_ready));
  LUT4 #(
    .INIT(16'hFEF0)) 
    ap_sync_reg_channel_write_in_mat_cols_c10_channel_i_1
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(ap_sync_reg_channel_write_in_mat_cols_c10_channel),
        .I3(in_mat_cols_c10_channel_full_n),
        .O(ap_sync_channel_write_in_mat_cols_c10_channel));
  LUT4 #(
    .INIT(16'hFEF0)) 
    ap_sync_reg_channel_write_in_mat_rows_c9_channel_i_1
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(ap_sync_reg_channel_write_in_mat_rows_c9_channel),
        .I3(in_mat_rows_c9_channel_full_n),
        .O(ap_sync_channel_write_in_mat_rows_c9_channel));
  LUT4 #(
    .INIT(16'h0EFF)) 
    ap_sync_reg_channel_write_out_mat_cols_channel_i_1
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(ap_sync_reg_channel_write_out_mat_cols_channel_i_3_n_0),
        .I3(ap_rst_n),
        .O(ap_sync_reg_channel_write_out_mat_rows_channel));
  LUT4 #(
    .INIT(16'hFFE0)) 
    ap_sync_reg_channel_write_out_mat_cols_channel_i_2
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(out_mat_cols_channel_full_n),
        .I3(ap_sync_reg_channel_write_out_mat_cols_channel),
        .O(ap_sync_channel_write_out_mat_cols_channel));
  LUT6 #(
    .INIT(64'hABABABFFFFFFFFFF)) 
    ap_sync_reg_channel_write_out_mat_cols_channel_i_3
       (.I0(ap_sync_reg_channel_write_out_mat_cols_channel_i_4_n_0),
        .I1(ap_sync_reg_channel_write_in_mat_cols_c10_channel),
        .I2(push),
        .I3(ap_sync_reg_channel_write_in_mat_rows_c9_channel),
        .I4(push_0),
        .I5(ap_sync_channel_write_out_mat_cols_channel),
        .O(ap_sync_reg_channel_write_out_mat_cols_channel_i_3_n_0));
  LUT4 #(
    .INIT(16'h001F)) 
    ap_sync_reg_channel_write_out_mat_cols_channel_i_4
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(out_mat_rows_channel_full_n),
        .I3(ap_sync_reg_channel_write_out_mat_rows_channel_reg),
        .O(ap_sync_reg_channel_write_out_mat_cols_channel_i_4_n_0));
  LUT4 #(
    .INIT(16'hFEF0)) 
    ap_sync_reg_channel_write_out_mat_rows_channel_i_1
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(ap_sync_reg_channel_write_out_mat_rows_channel_reg),
        .I3(out_mat_rows_channel_full_n),
        .O(ap_sync_channel_write_out_mat_rows_channel));
  LUT3 #(
    .INIT(8'hBA)) 
    auto_restart_status_i_1
       (.I0(p_2_in[7]),
        .I1(ap_idle),
        .I2(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(ap_rst_n_inv));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_2_in[2]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h02FF0202)) 
    int_ap_ready_i_1
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(p_2_in[7]),
        .I3(int_task_ap_done_i_2_n_0),
        .I4(int_ap_ready__0),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready__0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFFA8)) 
    int_ap_start_i_1
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(p_2_in[7]),
        .I3(int_ap_start5_out),
        .O(int_ap_start_i_1_n_0));
  LUT5 #(
    .INIT(32'h00200000)) 
    int_ap_start_i_2
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(s_axi_control_WDATA[0]),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .O(int_ap_start5_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(Block_entry1_proc_U0_ap_start),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(p_2_in[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_2_in[7]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[0]),
        .O(int_cols_in0[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[10]),
        .O(int_cols_in0[10]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[11]),
        .O(int_cols_in0[11]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[12]),
        .O(int_cols_in0[12]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[13]),
        .O(int_cols_in0[13]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[14]),
        .O(int_cols_in0[14]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[15]),
        .O(int_cols_in0[15]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[16]),
        .O(int_cols_in0[16]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[17]),
        .O(int_cols_in0[17]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[18]),
        .O(int_cols_in0[18]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[19]),
        .O(int_cols_in0[19]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[1]),
        .O(int_cols_in0[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[20]),
        .O(int_cols_in0[20]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[21]),
        .O(int_cols_in0[21]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[22]),
        .O(int_cols_in0[22]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[23]),
        .O(int_cols_in0[23]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[24]),
        .O(int_cols_in0[24]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[25]),
        .O(int_cols_in0[25]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[26]),
        .O(int_cols_in0[26]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[27]),
        .O(int_cols_in0[27]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[28]),
        .O(int_cols_in0[28]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[29]),
        .O(int_cols_in0[29]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[2]),
        .O(int_cols_in0[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[30]),
        .O(int_cols_in0[30]));
  LUT3 #(
    .INIT(8'h80)) 
    \int_cols_in[31]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_ier[1]_i_2_n_0 ),
        .O(\int_cols_in[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[31]),
        .O(int_cols_in0[31]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[3]),
        .O(int_cols_in0[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[4]),
        .O(int_cols_in0[4]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[5]),
        .O(int_cols_in0[5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[6]),
        .O(int_cols_in0[6]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[7]),
        .O(int_cols_in0[7]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[8]),
        .O(int_cols_in0[8]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_cols_in[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[9]),
        .O(int_cols_in0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[0] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[0]),
        .Q(Q[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[10] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[10]),
        .Q(Q[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[11] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[11]),
        .Q(Q[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[12] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[12]),
        .Q(Q[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[13] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[13]),
        .Q(Q[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[14] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[14]),
        .Q(Q[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[15] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[15]),
        .Q(Q[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[16] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[16]),
        .Q(Q[16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[17] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[17]),
        .Q(Q[17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[18] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[18]),
        .Q(Q[18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[19] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[19]),
        .Q(Q[19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[1] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[1]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[20] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[20]),
        .Q(Q[20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[21] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[21]),
        .Q(Q[21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[22] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[22]),
        .Q(Q[22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[23] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[23]),
        .Q(Q[23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[24] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[24]),
        .Q(Q[24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[25] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[25]),
        .Q(Q[25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[26] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[26]),
        .Q(Q[26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[27] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[27]),
        .Q(Q[27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[28] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[28]),
        .Q(Q[28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[29] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[29]),
        .Q(Q[29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[2] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[2]),
        .Q(Q[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[30] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[30]),
        .Q(Q[30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[31] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[31]),
        .Q(Q[31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[3] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[3]),
        .Q(Q[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[4] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[4]),
        .Q(Q[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[5] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[5]),
        .Q(Q[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[6] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[6]),
        .Q(Q[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[7] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[7]),
        .Q(Q[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[8] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[8]),
        .Q(Q[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_cols_in_reg[9] 
       (.C(ap_clk),
        .CE(\int_cols_in[31]_i_1_n_0 ),
        .D(int_cols_in0[9]),
        .Q(Q[9]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_gie_i_2_n_0),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(int_gie_i_3_n_0),
        .I5(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_gie_i_2
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\waddr_reg_n_0_[4] ),
        .O(int_gie_i_2_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    int_gie_i_3
       (.I0(\waddr_reg_n_0_[1] ),
        .I1(\waddr_reg_n_0_[0] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_WVALID),
        .O(int_gie_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(p_0_in),
        .O(\int_ier[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \int_ier[1]_i_2 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(\waddr_reg_n_0_[0] ),
        .I3(\waddr_reg_n_0_[1] ),
        .I4(\waddr_reg_n_0_[2] ),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hE0)) 
    int_interrupt_i_1
       (.I0(\int_isr_reg_n_0_[1] ),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(int_gie_reg_n_0),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr7_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \int_isr[0]_i_2 
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(int_gie_i_3_n_0),
        .O(int_isr7_out));
  LUT6 #(
    .INIT(64'h2FFF0FFFF222F000)) 
    \int_isr[1]_i_1 
       (.I0(Block_entry1_proc_U0_ap_start),
        .I1(ap_done_reg),
        .I2(s_axi_control_WDATA[1]),
        .I3(int_isr7_out),
        .I4(p_0_in),
        .I5(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_rows_in_reg[31]_0 [0]),
        .O(int_rows_in0[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_rows_in_reg[31]_0 [10]),
        .O(int_rows_in0[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_rows_in_reg[31]_0 [11]),
        .O(int_rows_in0[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_rows_in_reg[31]_0 [12]),
        .O(int_rows_in0[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_rows_in_reg[31]_0 [13]),
        .O(int_rows_in0[13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_rows_in_reg[31]_0 [14]),
        .O(int_rows_in0[14]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_rows_in_reg[31]_0 [15]),
        .O(int_rows_in0[15]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_rows_in_reg[31]_0 [16]),
        .O(int_rows_in0[16]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_rows_in_reg[31]_0 [17]),
        .O(int_rows_in0[17]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_rows_in_reg[31]_0 [18]),
        .O(int_rows_in0[18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_rows_in_reg[31]_0 [19]),
        .O(int_rows_in0[19]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_rows_in_reg[31]_0 [1]),
        .O(int_rows_in0[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_rows_in_reg[31]_0 [20]),
        .O(int_rows_in0[20]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_rows_in_reg[31]_0 [21]),
        .O(int_rows_in0[21]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_rows_in_reg[31]_0 [22]),
        .O(int_rows_in0[22]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_rows_in_reg[31]_0 [23]),
        .O(int_rows_in0[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_rows_in_reg[31]_0 [24]),
        .O(int_rows_in0[24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_rows_in_reg[31]_0 [25]),
        .O(int_rows_in0[25]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_rows_in_reg[31]_0 [26]),
        .O(int_rows_in0[26]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_rows_in_reg[31]_0 [27]),
        .O(int_rows_in0[27]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_rows_in_reg[31]_0 [28]),
        .O(int_rows_in0[28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_rows_in_reg[31]_0 [29]),
        .O(int_rows_in0[29]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_rows_in_reg[31]_0 [2]),
        .O(int_rows_in0[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_rows_in_reg[31]_0 [30]),
        .O(int_rows_in0[30]));
  LUT3 #(
    .INIT(8'h40)) 
    \int_rows_in[31]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\int_ier[1]_i_2_n_0 ),
        .O(\int_rows_in[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_rows_in_reg[31]_0 [31]),
        .O(int_rows_in0[31]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_rows_in_reg[31]_0 [3]),
        .O(int_rows_in0[3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_rows_in_reg[31]_0 [4]),
        .O(int_rows_in0[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_rows_in_reg[31]_0 [5]),
        .O(int_rows_in0[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_rows_in_reg[31]_0 [6]),
        .O(int_rows_in0[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_rows_in_reg[31]_0 [7]),
        .O(int_rows_in0[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_rows_in_reg[31]_0 [8]),
        .O(int_rows_in0[8]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_rows_in[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_rows_in_reg[31]_0 [9]),
        .O(int_rows_in0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[0] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[0]),
        .Q(\int_rows_in_reg[31]_0 [0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[10] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[10]),
        .Q(\int_rows_in_reg[31]_0 [10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[11] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[11]),
        .Q(\int_rows_in_reg[31]_0 [11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[12] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[12]),
        .Q(\int_rows_in_reg[31]_0 [12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[13] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[13]),
        .Q(\int_rows_in_reg[31]_0 [13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[14] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[14]),
        .Q(\int_rows_in_reg[31]_0 [14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[15] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[15]),
        .Q(\int_rows_in_reg[31]_0 [15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[16] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[16]),
        .Q(\int_rows_in_reg[31]_0 [16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[17] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[17]),
        .Q(\int_rows_in_reg[31]_0 [17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[18] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[18]),
        .Q(\int_rows_in_reg[31]_0 [18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[19] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[19]),
        .Q(\int_rows_in_reg[31]_0 [19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[1] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[1]),
        .Q(\int_rows_in_reg[31]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[20] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[20]),
        .Q(\int_rows_in_reg[31]_0 [20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[21] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[21]),
        .Q(\int_rows_in_reg[31]_0 [21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[22] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[22]),
        .Q(\int_rows_in_reg[31]_0 [22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[23] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[23]),
        .Q(\int_rows_in_reg[31]_0 [23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[24] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[24]),
        .Q(\int_rows_in_reg[31]_0 [24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[25] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[25]),
        .Q(\int_rows_in_reg[31]_0 [25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[26] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[26]),
        .Q(\int_rows_in_reg[31]_0 [26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[27] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[27]),
        .Q(\int_rows_in_reg[31]_0 [27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[28] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[28]),
        .Q(\int_rows_in_reg[31]_0 [28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[29] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[29]),
        .Q(\int_rows_in_reg[31]_0 [29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[2] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[2]),
        .Q(\int_rows_in_reg[31]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[30] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[30]),
        .Q(\int_rows_in_reg[31]_0 [30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[31] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[31]),
        .Q(\int_rows_in_reg[31]_0 [31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[3] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[3]),
        .Q(\int_rows_in_reg[31]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[4] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[4]),
        .Q(\int_rows_in_reg[31]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[5] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[5]),
        .Q(\int_rows_in_reg[31]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[6] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[6]),
        .Q(\int_rows_in_reg[31]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[7] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[7]),
        .Q(\int_rows_in_reg[31]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[8] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[8]),
        .Q(\int_rows_in_reg[31]_0 [8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_rows_in_reg[9] 
       (.C(ap_clk),
        .CE(\int_rows_in[31]_i_1_n_0 ),
        .D(int_rows_in0[9]),
        .Q(\int_rows_in_reg[31]_0 [9]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h5DFD5D5D0CFC0C0C)) 
    int_task_ap_done_i_1
       (.I0(int_task_ap_done_i_2_n_0),
        .I1(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .I2(auto_restart_status_reg_n_0),
        .I3(p_2_in[2]),
        .I4(ap_idle),
        .I5(int_task_ap_done__0),
        .O(int_task_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    int_task_ap_done_i_2
       (.I0(ar_hs),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(s_axi_control_ARADDR[4]),
        .O(int_task_ap_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done__0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(Block_entry1_proc_U0_ap_start),
        .I3(\rdata[9]_i_2_n_0 ),
        .I4(\rdata[0]_i_2_n_0 ),
        .I5(\rdata[0]_i_3_n_0 ),
        .O(rdata[0]));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \rdata[0]_i_2 
       (.I0(\rdata[1]_i_3_n_0 ),
        .I1(\int_ier_reg_n_0_[0] ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(\int_rows_in_reg[31]_0 [0]),
        .I4(\rdata[31]_i_3_n_0 ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC8000800)) 
    \rdata[0]_i_3 
       (.I0(int_gie_reg_n_0),
        .I1(\rdata[0]_i_4_n_0 ),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\rdata[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \rdata[0]_i_4 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[4]),
        .O(\rdata[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[10]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [10]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[10]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[11]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [11]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[11]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[12]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [12]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[12]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[13]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [13]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[13]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[14]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [14]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[14]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[15]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [15]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[15]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[16]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [16]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[16]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[17]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [17]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[17]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[18]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [18]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[18]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[19]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [19]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[19]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[19]));
  LUT5 #(
    .INIT(32'hFEAABAAA)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(s_axi_control_ARADDR[2]),
        .I2(p_0_in),
        .I3(\rdata[1]_i_3_n_0 ),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(rdata[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[1]_i_2 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(Q[1]),
        .I2(\rdata[31]_i_3_n_0 ),
        .I3(\int_rows_in_reg[31]_0 [1]),
        .I4(int_task_ap_done__0),
        .I5(\rdata[9]_i_2_n_0 ),
        .O(\rdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \rdata[1]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[3]),
        .O(\rdata[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[20]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [20]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[20]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[21]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [21]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[21]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[22]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [22]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[22]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[22]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[23]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [23]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[23]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[23]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[24]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [24]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[24]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[24]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[25]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [25]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[25]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[25]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[26]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [26]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[26]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[26]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[27]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [27]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[27]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[27]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[28]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [28]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[28]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[28]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[29]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [29]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[29]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[2]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\rdata[31]_i_3_n_0 ),
        .I3(\int_rows_in_reg[31]_0 [2]),
        .I4(p_2_in[2]),
        .I5(\rdata[9]_i_2_n_0 ),
        .O(rdata[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[30]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [30]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[30]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[31]_i_2 
       (.I0(\int_rows_in_reg[31]_0 [31]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[31]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[31]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \rdata[31]_i_3 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \rdata[31]_i_4 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[3]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(Q[3]),
        .I2(\rdata[31]_i_3_n_0 ),
        .I3(\int_rows_in_reg[31]_0 [3]),
        .I4(int_ap_ready__0),
        .I5(\rdata[9]_i_2_n_0 ),
        .O(rdata[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[4]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [4]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[4]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[5]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [5]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[5]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[6]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [6]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[6]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[7]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(Q[7]),
        .I2(\rdata[31]_i_3_n_0 ),
        .I3(\int_rows_in_reg[31]_0 [7]),
        .I4(p_2_in[7]),
        .I5(\rdata[9]_i_2_n_0 ),
        .O(rdata[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[8]_i_1 
       (.I0(\int_rows_in_reg[31]_0 [8]),
        .I1(\rdata[31]_i_3_n_0 ),
        .I2(Q[8]),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(rdata[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[9]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(Q[9]),
        .I2(\rdata[31]_i_3_n_0 ),
        .I3(\int_rows_in_reg[31]_0 [9]),
        .I4(interrupt),
        .I5(\rdata[9]_i_2_n_0 ),
        .O(rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \rdata[9]_i_2 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .O(\rdata[9]_i_2_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[10]),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[11]),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[12]),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[13]),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[14]),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[15]),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[16]),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[17]),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[18]),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[19]),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[20]),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[21]),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[22]),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[23]),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[24]),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[25]),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[26]),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[27]),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[28]),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[29]),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[30]),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[31]),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[4]),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[5]),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[6]),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[8]),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[9]),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[4]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_control_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w24_d2_S" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w24_d2_S
   (\mOutPtr_reg[0]_0 ,
    out_mat_data_empty_n,
    out_mat_data_full_n,
    D,
    ap_rst_n_inv,
    ap_clk,
    \mOutPtr_reg[0]_1 ,
    \mOutPtr_reg[2]_0 ,
    mOutPtr16_out,
    E,
    Q,
    \mOutPtr_reg[1]_0 ,
    \SRL_SIG_reg[0][23] );
  output [0:0]\mOutPtr_reg[0]_0 ;
  output out_mat_data_empty_n;
  output out_mat_data_full_n;
  output [23:0]D;
  input ap_rst_n_inv;
  input ap_clk;
  input \mOutPtr_reg[0]_1 ;
  input \mOutPtr_reg[2]_0 ;
  input mOutPtr16_out;
  input [0:0]E;
  input [0:0]Q;
  input \mOutPtr_reg[1]_0 ;
  input [23:0]\SRL_SIG_reg[0][23] ;

  wire [23:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [23:0]\SRL_SIG_reg[0][23] ;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire empty_n_i_1__4_n_0;
  wire full_n_i_1__4_n_0;
  wire [2:1]mOutPtr;
  wire mOutPtr16_out;
  wire \mOutPtr[1]_i_1__4_n_0 ;
  wire \mOutPtr[2]_i_1__4_n_0 ;
  wire [0:0]\mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[0]_1 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[2]_0 ;
  wire out_mat_data_empty_n;
  wire out_mat_data_full_n;

  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w24_d2_S_ShiftReg U_quantizationdithering_accel_fifo_w24_d2_S_ShiftReg
       (.\B_V_data_1_payload_B_reg[23] (\mOutPtr_reg[0]_0 ),
        .D(D),
        .E(E),
        .\SRL_SIG_reg[0][23]_0 (\SRL_SIG_reg[0][23] ),
        .ap_clk(ap_clk),
        .mOutPtr(mOutPtr[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFF0000)) 
    empty_n_i_1__4
       (.I0(\mOutPtr_reg[2]_0 ),
        .I1(\mOutPtr_reg[0]_0 ),
        .I2(mOutPtr[1]),
        .I3(mOutPtr[2]),
        .I4(mOutPtr16_out),
        .I5(out_mat_data_empty_n),
        .O(empty_n_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__4_n_0),
        .Q(out_mat_data_empty_n),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFF3AAAAAAA2)) 
    full_n_i_1__4
       (.I0(\mOutPtr_reg[2]_0 ),
        .I1(mOutPtr16_out),
        .I2(\mOutPtr_reg[0]_0 ),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[2]),
        .I5(out_mat_data_full_n),
        .O(full_n_i_1__4_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__4_n_0),
        .Q(out_mat_data_full_n),
        .S(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hE777777718888888)) 
    \mOutPtr[1]_i_1__4 
       (.I0(\mOutPtr_reg[0]_0 ),
        .I1(E),
        .I2(Q),
        .I3(out_mat_data_empty_n),
        .I4(\mOutPtr_reg[1]_0 ),
        .I5(mOutPtr[1]),
        .O(\mOutPtr[1]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h77EF8810)) 
    \mOutPtr[2]_i_1__4 
       (.I0(\mOutPtr_reg[0]_0 ),
        .I1(mOutPtr[1]),
        .I2(\mOutPtr_reg[2]_0 ),
        .I3(mOutPtr16_out),
        .I4(mOutPtr[2]),
        .O(\mOutPtr[2]_i_1__4_n_0 ));
  FDSE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr_reg[0]_1 ),
        .Q(\mOutPtr_reg[0]_0 ),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__4_n_0 ),
        .Q(mOutPtr[1]),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[2]_i_1__4_n_0 ),
        .Q(mOutPtr[2]),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w24_d2_S_ShiftReg" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w24_d2_S_ShiftReg
   (D,
    \B_V_data_1_payload_B_reg[23] ,
    mOutPtr,
    E,
    \SRL_SIG_reg[0][23]_0 ,
    ap_clk);
  output [23:0]D;
  input \B_V_data_1_payload_B_reg[23] ;
  input [0:0]mOutPtr;
  input [0:0]E;
  input [23:0]\SRL_SIG_reg[0][23]_0 ;
  input ap_clk;

  wire \B_V_data_1_payload_B_reg[23] ;
  wire [23:0]D;
  wire [0:0]E;
  wire [23:0]\SRL_SIG_reg[0][23]_0 ;
  wire [23:0]\SRL_SIG_reg[0]_0 ;
  wire [23:0]\SRL_SIG_reg[1]_1 ;
  wire ap_clk;
  wire [0:0]mOutPtr;

  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[0]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [0]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[10]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [10]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[11]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [11]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[12]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [12]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[13]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [13]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[14]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [14]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[15]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [15]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [15]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[16]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [16]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [16]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[17]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [17]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [17]),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[18]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [18]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [18]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[19]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [19]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [19]),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[1]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [1]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[20]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [20]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [20]),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[21]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [21]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [21]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[22]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [22]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [22]),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[23]_i_2 
       (.I0(\SRL_SIG_reg[1]_1 [23]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [23]),
        .O(D[23]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[2]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [2]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[3]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [3]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[4]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [4]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[5]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [5]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[6]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [6]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[7]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [7]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[8]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [8]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \B_V_data_1_payload_A[9]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [9]),
        .I1(\B_V_data_1_payload_B_reg[23] ),
        .I2(mOutPtr),
        .I3(\SRL_SIG_reg[0]_0 [9]),
        .O(D[9]));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [0]),
        .Q(\SRL_SIG_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [10]),
        .Q(\SRL_SIG_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [11]),
        .Q(\SRL_SIG_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [12]),
        .Q(\SRL_SIG_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [13]),
        .Q(\SRL_SIG_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [14]),
        .Q(\SRL_SIG_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [15]),
        .Q(\SRL_SIG_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][16] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [16]),
        .Q(\SRL_SIG_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][17] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [17]),
        .Q(\SRL_SIG_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][18] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [18]),
        .Q(\SRL_SIG_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][19] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [19]),
        .Q(\SRL_SIG_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [1]),
        .Q(\SRL_SIG_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][20] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [20]),
        .Q(\SRL_SIG_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][21] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [21]),
        .Q(\SRL_SIG_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][22] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [22]),
        .Q(\SRL_SIG_reg[0]_0 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][23] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [23]),
        .Q(\SRL_SIG_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [2]),
        .Q(\SRL_SIG_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [3]),
        .Q(\SRL_SIG_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [4]),
        .Q(\SRL_SIG_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [5]),
        .Q(\SRL_SIG_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [6]),
        .Q(\SRL_SIG_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [7]),
        .Q(\SRL_SIG_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [8]),
        .Q(\SRL_SIG_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][23]_0 [9]),
        .Q(\SRL_SIG_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [0]),
        .Q(\SRL_SIG_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [10]),
        .Q(\SRL_SIG_reg[1]_1 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [11]),
        .Q(\SRL_SIG_reg[1]_1 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [12]),
        .Q(\SRL_SIG_reg[1]_1 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [13]),
        .Q(\SRL_SIG_reg[1]_1 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [14]),
        .Q(\SRL_SIG_reg[1]_1 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [15]),
        .Q(\SRL_SIG_reg[1]_1 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][16] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [16]),
        .Q(\SRL_SIG_reg[1]_1 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][17] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [17]),
        .Q(\SRL_SIG_reg[1]_1 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][18] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [18]),
        .Q(\SRL_SIG_reg[1]_1 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][19] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [19]),
        .Q(\SRL_SIG_reg[1]_1 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [1]),
        .Q(\SRL_SIG_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][20] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [20]),
        .Q(\SRL_SIG_reg[1]_1 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][21] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [21]),
        .Q(\SRL_SIG_reg[1]_1 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][22] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [22]),
        .Q(\SRL_SIG_reg[1]_1 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][23] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [23]),
        .Q(\SRL_SIG_reg[1]_1 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [2]),
        .Q(\SRL_SIG_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [3]),
        .Q(\SRL_SIG_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [4]),
        .Q(\SRL_SIG_reg[1]_1 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [5]),
        .Q(\SRL_SIG_reg[1]_1 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [6]),
        .Q(\SRL_SIG_reg[1]_1 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [7]),
        .Q(\SRL_SIG_reg[1]_1 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [8]),
        .Q(\SRL_SIG_reg[1]_1 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [9]),
        .Q(\SRL_SIG_reg[1]_1 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w30_d2_S" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w30_d2_S
   (\mOutPtr_reg[0]_0 ,
    in_mat_data_empty_n,
    in_mat_data_full_n,
    D,
    ap_rst_n_inv,
    ap_clk,
    \mOutPtr_reg[0]_1 ,
    push,
    pop__0,
    icmp_ln185_reg_1508,
    icmp_ln199_reg_1519,
    \SRL_SIG_reg[0][29] );
  output [0:0]\mOutPtr_reg[0]_0 ;
  output in_mat_data_empty_n;
  output in_mat_data_full_n;
  output [29:0]D;
  input ap_rst_n_inv;
  input ap_clk;
  input \mOutPtr_reg[0]_1 ;
  input push;
  input pop__0;
  input icmp_ln185_reg_1508;
  input icmp_ln199_reg_1519;
  input [29:0]\SRL_SIG_reg[0][29] ;

  wire [29:0]D;
  wire [29:0]\SRL_SIG_reg[0][29] ;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire empty_n_i_1__1_n_0;
  wire full_n_i_1__1_n_0;
  wire icmp_ln185_reg_1508;
  wire icmp_ln199_reg_1519;
  wire in_mat_data_empty_n;
  wire in_mat_data_full_n;
  wire [2:1]mOutPtr;
  wire \mOutPtr[1]_i_1__1_n_0 ;
  wire \mOutPtr[2]_i_1__1_n_0 ;
  wire [0:0]\mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[0]_1 ;
  wire pop__0;
  wire push;

  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w30_d2_S_ShiftReg U_quantizationdithering_accel_fifo_w30_d2_S_ShiftReg
       (.D(D),
        .\SRL_SIG_reg[0][29]_0 (\SRL_SIG_reg[0][29] ),
        .ap_clk(ap_clk),
        .\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] (\mOutPtr_reg[0]_0 ),
        .icmp_ln185_reg_1508(icmp_ln185_reg_1508),
        .icmp_ln199_reg_1519(icmp_ln199_reg_1519),
        .mOutPtr(mOutPtr[2]),
        .push(push));
  LUT6 #(
    .INIT(64'hFFFEFFFF0000FF00)) 
    empty_n_i_1__1
       (.I0(\mOutPtr_reg[0]_0 ),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[2]),
        .I3(push),
        .I4(pop__0),
        .I5(in_mat_data_empty_n),
        .O(empty_n_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__1_n_0),
        .Q(in_mat_data_empty_n),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFEFF00FF0000)) 
    full_n_i_1__1
       (.I0(\mOutPtr_reg[0]_0 ),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[2]),
        .I3(push),
        .I4(pop__0),
        .I5(in_mat_data_full_n),
        .O(full_n_i_1__1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__1_n_0),
        .Q(in_mat_data_full_n),
        .S(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hE718)) 
    \mOutPtr[1]_i_1__1 
       (.I0(\mOutPtr_reg[0]_0 ),
        .I1(push),
        .I2(pop__0),
        .I3(mOutPtr[1]),
        .O(\mOutPtr[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFE7F0180)) 
    \mOutPtr[2]_i_1__1 
       (.I0(\mOutPtr_reg[0]_0 ),
        .I1(mOutPtr[1]),
        .I2(push),
        .I3(pop__0),
        .I4(mOutPtr[2]),
        .O(\mOutPtr[2]_i_1__1_n_0 ));
  FDSE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr_reg[0]_1 ),
        .Q(\mOutPtr_reg[0]_0 ),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__1_n_0 ),
        .Q(mOutPtr[1]),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[2]_i_1__1_n_0 ),
        .Q(mOutPtr[2]),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w30_d2_S_ShiftReg" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w30_d2_S_ShiftReg
   (D,
    mOutPtr,
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ,
    icmp_ln185_reg_1508,
    icmp_ln199_reg_1519,
    push,
    \SRL_SIG_reg[0][29]_0 ,
    ap_clk);
  output [29:0]D;
  input [0:0]mOutPtr;
  input \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ;
  input icmp_ln185_reg_1508;
  input icmp_ln199_reg_1519;
  input push;
  input [29:0]\SRL_SIG_reg[0][29]_0 ;
  input ap_clk;

  wire [29:0]D;
  wire [29:0]\SRL_SIG_reg[0][29]_0 ;
  wire [29:0]\SRL_SIG_reg[0]_0 ;
  wire [29:0]\SRL_SIG_reg[1]_1 ;
  wire ap_clk;
  wire \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ;
  wire icmp_ln185_reg_1508;
  wire icmp_ln199_reg_1519;
  wire [0:0]mOutPtr;
  wire push;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [0]),
        .Q(\SRL_SIG_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [10]),
        .Q(\SRL_SIG_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [11]),
        .Q(\SRL_SIG_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [12]),
        .Q(\SRL_SIG_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [13]),
        .Q(\SRL_SIG_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [14]),
        .Q(\SRL_SIG_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [15]),
        .Q(\SRL_SIG_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][16] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [16]),
        .Q(\SRL_SIG_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][17] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [17]),
        .Q(\SRL_SIG_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][18] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [18]),
        .Q(\SRL_SIG_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][19] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [19]),
        .Q(\SRL_SIG_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [1]),
        .Q(\SRL_SIG_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][20] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [20]),
        .Q(\SRL_SIG_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][21] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [21]),
        .Q(\SRL_SIG_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][22] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [22]),
        .Q(\SRL_SIG_reg[0]_0 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][23] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [23]),
        .Q(\SRL_SIG_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][24] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [24]),
        .Q(\SRL_SIG_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][25] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [25]),
        .Q(\SRL_SIG_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][26] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [26]),
        .Q(\SRL_SIG_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][27] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [27]),
        .Q(\SRL_SIG_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][28] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [28]),
        .Q(\SRL_SIG_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][29] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [29]),
        .Q(\SRL_SIG_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [2]),
        .Q(\SRL_SIG_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [3]),
        .Q(\SRL_SIG_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [4]),
        .Q(\SRL_SIG_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [5]),
        .Q(\SRL_SIG_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [6]),
        .Q(\SRL_SIG_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [7]),
        .Q(\SRL_SIG_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [8]),
        .Q(\SRL_SIG_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][29]_0 [9]),
        .Q(\SRL_SIG_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [0]),
        .Q(\SRL_SIG_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [10]),
        .Q(\SRL_SIG_reg[1]_1 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [11]),
        .Q(\SRL_SIG_reg[1]_1 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [12]),
        .Q(\SRL_SIG_reg[1]_1 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [13]),
        .Q(\SRL_SIG_reg[1]_1 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [14]),
        .Q(\SRL_SIG_reg[1]_1 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [15]),
        .Q(\SRL_SIG_reg[1]_1 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][16] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [16]),
        .Q(\SRL_SIG_reg[1]_1 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][17] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [17]),
        .Q(\SRL_SIG_reg[1]_1 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][18] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [18]),
        .Q(\SRL_SIG_reg[1]_1 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][19] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [19]),
        .Q(\SRL_SIG_reg[1]_1 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [1]),
        .Q(\SRL_SIG_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][20] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [20]),
        .Q(\SRL_SIG_reg[1]_1 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][21] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [21]),
        .Q(\SRL_SIG_reg[1]_1 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][22] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [22]),
        .Q(\SRL_SIG_reg[1]_1 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][23] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [23]),
        .Q(\SRL_SIG_reg[1]_1 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][24] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [24]),
        .Q(\SRL_SIG_reg[1]_1 [24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][25] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [25]),
        .Q(\SRL_SIG_reg[1]_1 [25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][26] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [26]),
        .Q(\SRL_SIG_reg[1]_1 [26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][27] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [27]),
        .Q(\SRL_SIG_reg[1]_1 [27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][28] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [28]),
        .Q(\SRL_SIG_reg[1]_1 [28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][29] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [29]),
        .Q(\SRL_SIG_reg[1]_1 [29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [2]),
        .Q(\SRL_SIG_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [3]),
        .Q(\SRL_SIG_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [4]),
        .Q(\SRL_SIG_reg[1]_1 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [5]),
        .Q(\SRL_SIG_reg[1]_1 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [6]),
        .Q(\SRL_SIG_reg[1]_1 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [7]),
        .Q(\SRL_SIG_reg[1]_1 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [8]),
        .Q(\SRL_SIG_reg[1]_1 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [9]),
        .Q(\SRL_SIG_reg[1]_1 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[0]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [0]),
        .I1(\SRL_SIG_reg[1]_1 [0]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[10]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [10]),
        .I1(\SRL_SIG_reg[1]_1 [10]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[11]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [11]),
        .I1(\SRL_SIG_reg[1]_1 [11]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[12]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [12]),
        .I1(\SRL_SIG_reg[1]_1 [12]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[13]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [13]),
        .I1(\SRL_SIG_reg[1]_1 [13]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[14]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [14]),
        .I1(\SRL_SIG_reg[1]_1 [14]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[15]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [15]),
        .I1(\SRL_SIG_reg[1]_1 [15]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[16]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [16]),
        .I1(\SRL_SIG_reg[1]_1 [16]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[17]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [17]),
        .I1(\SRL_SIG_reg[1]_1 [17]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[18]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [18]),
        .I1(\SRL_SIG_reg[1]_1 [18]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[19]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [19]),
        .I1(\SRL_SIG_reg[1]_1 [19]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[1]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [1]),
        .I1(\SRL_SIG_reg[1]_1 [1]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[20]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [20]),
        .I1(\SRL_SIG_reg[1]_1 [20]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[21]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [21]),
        .I1(\SRL_SIG_reg[1]_1 [21]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[22]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [22]),
        .I1(\SRL_SIG_reg[1]_1 [22]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[23]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [23]),
        .I1(\SRL_SIG_reg[1]_1 [23]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[24]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [24]),
        .I1(\SRL_SIG_reg[1]_1 [24]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[25]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [25]),
        .I1(\SRL_SIG_reg[1]_1 [25]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[26]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [26]),
        .I1(\SRL_SIG_reg[1]_1 [26]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[27]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [27]),
        .I1(\SRL_SIG_reg[1]_1 [27]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[28]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [28]),
        .I1(\SRL_SIG_reg[1]_1 [28]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[29]_i_2 
       (.I0(\SRL_SIG_reg[0]_0 [29]),
        .I1(\SRL_SIG_reg[1]_1 [29]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[2]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [2]),
        .I1(\SRL_SIG_reg[1]_1 [2]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[3]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [3]),
        .I1(\SRL_SIG_reg[1]_1 [3]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[4]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [4]),
        .I1(\SRL_SIG_reg[1]_1 [4]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[5]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [5]),
        .I1(\SRL_SIG_reg[1]_1 [5]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[6]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [6]),
        .I1(\SRL_SIG_reg[1]_1 [6]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[7]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [7]),
        .I1(\SRL_SIG_reg[1]_1 [7]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[8]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [8]),
        .I1(\SRL_SIG_reg[1]_1 [8]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000ACAA00000000)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[9]_i_1 
       (.I0(\SRL_SIG_reg[0]_0 [9]),
        .I1(\SRL_SIG_reg[1]_1 [9]),
        .I2(mOutPtr),
        .I3(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .I4(icmp_ln185_reg_1508),
        .I5(icmp_ln199_reg_1519),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w32_d2_S" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S
   (in_mat_cols_c10_channel_empty_n,
    in_mat_cols_c10_channel_full_n,
    \SRL_SIG_reg[1][25] ,
    \SRL_SIG_reg[0][24] ,
    \SRL_SIG_reg[0][30] ,
    \j_fu_78_reg[30] ,
    \SRL_SIG_reg[0][31] ,
    \SRL_SIG_reg[0][30]_0 ,
    \SRL_SIG_reg[1][17] ,
    \SRL_SIG_reg[0][16] ,
    \SRL_SIG_reg[0][22] ,
    \SRL_SIG_reg[0][23] ,
    \SRL_SIG_reg[0][15] ,
    \SRL_SIG_reg[0][14] ,
    DI,
    S,
    \SRL_SIG_reg[1][8] ,
    \SRL_SIG_reg[0][9] ,
    D,
    \SRL_SIG_reg[0][1] ,
    ap_rst_n_inv,
    ap_clk,
    icmp_ln62_fu_197_p2_carry__2,
    ap_loop_init,
    CO,
    Q,
    push,
    \mOutPtr_reg[2]_0 ,
    in);
  output in_mat_cols_c10_channel_empty_n;
  output in_mat_cols_c10_channel_full_n;
  output [3:0]\SRL_SIG_reg[1][25] ;
  output [3:0]\SRL_SIG_reg[0][24] ;
  output [3:0]\SRL_SIG_reg[0][30] ;
  output [3:0]\j_fu_78_reg[30] ;
  output [2:0]\SRL_SIG_reg[0][31] ;
  output [2:0]\SRL_SIG_reg[0][30]_0 ;
  output [3:0]\SRL_SIG_reg[1][17] ;
  output [3:0]\SRL_SIG_reg[0][16] ;
  output [3:0]\SRL_SIG_reg[0][22] ;
  output [3:0]\SRL_SIG_reg[0][23] ;
  output [3:0]\SRL_SIG_reg[0][15] ;
  output [3:0]\SRL_SIG_reg[0][14] ;
  output [3:0]DI;
  output [3:0]S;
  output [3:0]\SRL_SIG_reg[1][8] ;
  output [3:0]\SRL_SIG_reg[0][9] ;
  output [15:0]D;
  output \SRL_SIG_reg[0][1] ;
  input ap_rst_n_inv;
  input ap_clk;
  input [30:0]icmp_ln62_fu_197_p2_carry__2;
  input ap_loop_init;
  input [0:0]CO;
  input [0:0]Q;
  input push;
  input \mOutPtr_reg[2]_0 ;
  input [31:0]in;

  wire [0:0]CO;
  wire [15:0]D;
  wire [3:0]DI;
  wire [0:0]Q;
  wire [3:0]S;
  wire [3:0]\SRL_SIG_reg[0][14] ;
  wire [3:0]\SRL_SIG_reg[0][15] ;
  wire [3:0]\SRL_SIG_reg[0][16] ;
  wire \SRL_SIG_reg[0][1] ;
  wire [3:0]\SRL_SIG_reg[0][22] ;
  wire [3:0]\SRL_SIG_reg[0][23] ;
  wire [3:0]\SRL_SIG_reg[0][24] ;
  wire [3:0]\SRL_SIG_reg[0][30] ;
  wire [2:0]\SRL_SIG_reg[0][30]_0 ;
  wire [2:0]\SRL_SIG_reg[0][31] ;
  wire [3:0]\SRL_SIG_reg[0][9] ;
  wire [3:0]\SRL_SIG_reg[1][17] ;
  wire [3:0]\SRL_SIG_reg[1][25] ;
  wire [3:0]\SRL_SIG_reg[1][8] ;
  wire ap_clk;
  wire ap_loop_init;
  wire ap_rst_n_inv;
  wire empty_n_i_1__0_n_0;
  wire full_n_i_1__0_n_0;
  wire full_n_i_2__1_n_0;
  wire [30:0]icmp_ln62_fu_197_p2_carry__2;
  wire icmp_ln62_fu_197_p2_carry_i_9_n_0;
  wire [31:0]in;
  wire in_mat_cols_c10_channel_empty_n;
  wire in_mat_cols_c10_channel_full_n;
  wire [3:0]\j_fu_78_reg[30] ;
  wire [2:0]mOutPtr;
  wire mOutPtr16_out;
  wire \mOutPtr[0]_i_1__0_n_0 ;
  wire \mOutPtr[1]_i_1__0_n_0 ;
  wire \mOutPtr[2]_i_1__0_n_0 ;
  wire \mOutPtr_reg[2]_0 ;
  wire push;

  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_13 U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg
       (.D(D),
        .DI(DI),
        .S(S),
        .\SRL_SIG_reg[0][14]_0 (\SRL_SIG_reg[0][14] ),
        .\SRL_SIG_reg[0][15]_0 (\SRL_SIG_reg[0][15] ),
        .\SRL_SIG_reg[0][16]_0 (\SRL_SIG_reg[0][16] ),
        .\SRL_SIG_reg[0][1]_0 (\SRL_SIG_reg[0][1] ),
        .\SRL_SIG_reg[0][22]_0 (\SRL_SIG_reg[0][22] ),
        .\SRL_SIG_reg[0][23]_0 (\SRL_SIG_reg[0][23] ),
        .\SRL_SIG_reg[0][24]_0 (\SRL_SIG_reg[0][24] ),
        .\SRL_SIG_reg[0][30]_0 (\SRL_SIG_reg[0][30] ),
        .\SRL_SIG_reg[0][30]_1 (\SRL_SIG_reg[0][30]_0 ),
        .\SRL_SIG_reg[0][31]_0 (\SRL_SIG_reg[0][31] ),
        .\SRL_SIG_reg[0][9]_0 (\SRL_SIG_reg[0][9] ),
        .\SRL_SIG_reg[1][17]_0 (\SRL_SIG_reg[1][17] ),
        .\SRL_SIG_reg[1][25]_0 (\SRL_SIG_reg[1][25] ),
        .\SRL_SIG_reg[1][8]_0 (\SRL_SIG_reg[1][8] ),
        .ap_clk(ap_clk),
        .ap_loop_init(ap_loop_init),
        .icmp_ln62_fu_197_p2_carry(icmp_ln62_fu_197_p2_carry_i_9_n_0),
        .icmp_ln62_fu_197_p2_carry__2(icmp_ln62_fu_197_p2_carry__2),
        .in(in),
        .\j_fu_78_reg[30] (\j_fu_78_reg[30] ),
        .mOutPtr({mOutPtr[2],mOutPtr[0]}),
        .push(push));
  LUT6 #(
    .INIT(64'hFFFFFFFEFF00FF00)) 
    empty_n_i_1__0
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[2]),
        .I3(push),
        .I4(\mOutPtr_reg[2]_0 ),
        .I5(in_mat_cols_c10_channel_empty_n),
        .O(empty_n_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__0_n_0),
        .Q(in_mat_cols_c10_channel_empty_n),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFF3AAAAAAA2)) 
    full_n_i_1__0
       (.I0(full_n_i_2__1_n_0),
        .I1(mOutPtr16_out),
        .I2(mOutPtr[0]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[2]),
        .I5(in_mat_cols_c10_channel_full_n),
        .O(full_n_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0020)) 
    full_n_i_2__1
       (.I0(in_mat_cols_c10_channel_empty_n),
        .I1(CO),
        .I2(Q),
        .I3(push),
        .O(full_n_i_2__1_n_0));
  LUT4 #(
    .INIT(16'hDF00)) 
    full_n_i_3__1
       (.I0(in_mat_cols_c10_channel_empty_n),
        .I1(CO),
        .I2(Q),
        .I3(push),
        .O(mOutPtr16_out));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__0_n_0),
        .Q(in_mat_cols_c10_channel_full_n),
        .S(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln62_fu_197_p2_carry_i_9
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[2]),
        .O(icmp_ln62_fu_197_p2_carry_i_9_n_0));
  LUT5 #(
    .INIT(32'h20DFDF20)) 
    \mOutPtr[0]_i_1__0 
       (.I0(in_mat_cols_c10_channel_empty_n),
        .I1(CO),
        .I2(Q),
        .I3(push),
        .I4(mOutPtr[0]),
        .O(\mOutPtr[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h77E7777788188888)) 
    \mOutPtr[1]_i_1__0 
       (.I0(mOutPtr[0]),
        .I1(push),
        .I2(Q),
        .I3(CO),
        .I4(in_mat_cols_c10_channel_empty_n),
        .I5(mOutPtr[1]),
        .O(\mOutPtr[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFE7F7F80018080)) 
    \mOutPtr[2]_i_1__0 
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(push),
        .I3(\mOutPtr_reg[2]_0 ),
        .I4(in_mat_cols_c10_channel_empty_n),
        .I5(mOutPtr[2]),
        .O(\mOutPtr[2]_i_1__0_n_0 ));
  FDSE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1__0_n_0 ),
        .Q(mOutPtr[0]),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__0_n_0 ),
        .Q(mOutPtr[1]),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[2]_i_1__0_n_0 ),
        .Q(mOutPtr[2]),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w32_d2_S" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S_0
   (in_mat_cols_c_empty_n,
    AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write,
    D,
    ap_rst_n_inv,
    ap_clk,
    in_mat_rows_c_empty_n,
    xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start,
    Q,
    in_mat_rows_c_full_n,
    \i_fu_88_reg[30] ,
    \i_fu_88_reg[30]_0 ,
    xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read,
    \SRL_SIG_reg[0][15] );
  output in_mat_cols_c_empty_n;
  output AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write;
  output [15:0]D;
  input ap_rst_n_inv;
  input ap_clk;
  input in_mat_rows_c_empty_n;
  input xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start;
  input [0:0]Q;
  input in_mat_rows_c_full_n;
  input [0:0]\i_fu_88_reg[30] ;
  input \i_fu_88_reg[30]_0 ;
  input xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read;
  input [15:0]\SRL_SIG_reg[0][15] ;

  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write;
  wire [15:0]D;
  wire [0:0]Q;
  wire [15:0]\SRL_SIG_reg[0][15] ;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire empty_n_i_1__3_n_0;
  wire full_n_i_1__3_n_0;
  wire [0:0]\i_fu_88_reg[30] ;
  wire \i_fu_88_reg[30]_0 ;
  wire in_mat_cols_c_empty_n;
  wire in_mat_cols_c_full_n;
  wire in_mat_rows_c_empty_n;
  wire in_mat_rows_c_full_n;
  wire [2:0]mOutPtr;
  wire mOutPtr0__0;
  wire mOutPtr16_out;
  wire \mOutPtr[0]_i_1__3_n_0 ;
  wire \mOutPtr[1]_i_1__3_n_0 ;
  wire \mOutPtr[2]_i_1__3_n_0 ;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read;

  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_12 U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg
       (.D(D),
        .\SRL_SIG_reg[0][15]_0 (\SRL_SIG_reg[0][15] ),
        .\SRL_SIG_reg[1][0]_0 (AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .ap_clk(ap_clk),
        .in_mat_cols_c_full_n(in_mat_cols_c_full_n),
        .mOutPtr({mOutPtr[2],mOutPtr[0]}));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFF0000)) 
    empty_n_i_1__3
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[2]),
        .I3(mOutPtr0__0),
        .I4(mOutPtr16_out),
        .I5(in_mat_cols_c_empty_n),
        .O(empty_n_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__3_n_0),
        .Q(in_mat_cols_c_empty_n),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFF3AAAAAAA2)) 
    full_n_i_1__3
       (.I0(mOutPtr0__0),
        .I1(mOutPtr16_out),
        .I2(mOutPtr[0]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[2]),
        .I5(in_mat_cols_c_full_n),
        .O(full_n_i_1__3_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__3_n_0),
        .Q(in_mat_cols_c_full_n),
        .S(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h8000)) 
    \i_fu_88[0]_i_1 
       (.I0(in_mat_cols_c_full_n),
        .I1(in_mat_rows_c_full_n),
        .I2(\i_fu_88_reg[30] ),
        .I3(\i_fu_88_reg[30]_0 ),
        .O(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write));
  LUT5 #(
    .INIT(32'h87777888)) 
    \mOutPtr[0]_i_1__3 
       (.I0(in_mat_cols_c_full_n),
        .I1(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .I2(in_mat_cols_c_empty_n),
        .I3(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read),
        .I4(mOutPtr[0]),
        .O(\mOutPtr[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hD5BFBFBF2A404040)) 
    \mOutPtr[1]_i_1__3 
       (.I0(mOutPtr[0]),
        .I1(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read),
        .I2(in_mat_cols_c_empty_n),
        .I3(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .I4(in_mat_cols_c_full_n),
        .I5(mOutPtr[1]),
        .O(\mOutPtr[1]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h7E7F8180)) 
    \mOutPtr[2]_i_1__3 
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr16_out),
        .I3(mOutPtr0__0),
        .I4(mOutPtr[2]),
        .O(\mOutPtr[2]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000000000000)) 
    \mOutPtr[2]_i_2__0 
       (.I0(in_mat_cols_c_empty_n),
        .I1(in_mat_rows_c_empty_n),
        .I2(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .I3(Q),
        .I4(in_mat_cols_c_full_n),
        .I5(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .O(mOutPtr16_out));
  LUT6 #(
    .INIT(64'h7000000000000000)) 
    \mOutPtr[2]_i_3__0 
       (.I0(in_mat_cols_c_full_n),
        .I1(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .I2(in_mat_cols_c_empty_n),
        .I3(in_mat_rows_c_empty_n),
        .I4(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .I5(Q),
        .O(mOutPtr0__0));
  FDSE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1__3_n_0 ),
        .Q(mOutPtr[0]),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__3_n_0 ),
        .Q(mOutPtr[1]),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[2]_i_1__3_n_0 ),
        .Q(mOutPtr[2]),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w32_d2_S" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S_1
   (in_mat_rows_c9_channel_empty_n,
    in_mat_rows_c9_channel_full_n,
    empty_n_reg_0,
    \ap_CS_fsm_reg[4] ,
    i_fu_880,
    \SRL_SIG_reg[1][30] ,
    \i_fu_88_reg[30] ,
    \SRL_SIG_reg[0][22] ,
    \i_fu_88_reg[22] ,
    \i_fu_88_reg[6] ,
    D,
    \SRL_SIG_reg[0][7] ,
    \i_fu_88_reg[14] ,
    \SRL_SIG_reg[0][15] ,
    ap_idle,
    ap_rst_n_inv,
    ap_clk,
    in_mat_cols_c10_channel_empty_n,
    start_once_reg,
    start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n,
    CO,
    Q,
    push,
    out,
    out_mat_cols_channel_empty_n,
    int_ap_idle_reg,
    in);
  output in_mat_rows_c9_channel_empty_n;
  output in_mat_rows_c9_channel_full_n;
  output empty_n_reg_0;
  output \ap_CS_fsm_reg[4] ;
  output i_fu_880;
  output [3:0]\SRL_SIG_reg[1][30] ;
  output [3:0]\i_fu_88_reg[30] ;
  output [3:0]\SRL_SIG_reg[0][22] ;
  output [3:0]\i_fu_88_reg[22] ;
  output [3:0]\i_fu_88_reg[6] ;
  output [15:0]D;
  output [3:0]\SRL_SIG_reg[0][7] ;
  output [3:0]\i_fu_88_reg[14] ;
  output [3:0]\SRL_SIG_reg[0][15] ;
  output ap_idle;
  input ap_rst_n_inv;
  input ap_clk;
  input in_mat_cols_c10_channel_empty_n;
  input start_once_reg;
  input start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n;
  input [0:0]CO;
  input [0:0]Q;
  input push;
  input [30:0]out;
  input out_mat_cols_channel_empty_n;
  input int_ap_idle_reg;
  input [31:0]in;

  wire [0:0]CO;
  wire [15:0]D;
  wire [0:0]Q;
  wire [3:0]\SRL_SIG_reg[0][15] ;
  wire [3:0]\SRL_SIG_reg[0][22] ;
  wire [3:0]\SRL_SIG_reg[0][7] ;
  wire [3:0]\SRL_SIG_reg[1][30] ;
  wire U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_50;
  wire U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_51;
  wire U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_52;
  wire U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_53;
  wire U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_54;
  wire \ap_CS_fsm_reg[4] ;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n_inv;
  wire empty_n_reg_0;
  wire i_fu_880;
  wire [3:0]\i_fu_88_reg[14] ;
  wire [3:0]\i_fu_88_reg[22] ;
  wire [3:0]\i_fu_88_reg[30] ;
  wire [3:0]\i_fu_88_reg[6] ;
  wire icmp_ln56_fu_255_p2_carry_i_9_n_0;
  wire [31:0]in;
  wire in_mat_cols_c10_channel_empty_n;
  wire in_mat_rows_c9_channel_empty_n;
  wire in_mat_rows_c9_channel_full_n;
  wire int_ap_idle_reg;
  wire [2:0]mOutPtr;
  wire [30:0]out;
  wire out_mat_cols_channel_empty_n;
  wire push;
  wire start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n;
  wire start_once_reg;

  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_11 U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg
       (.CO(CO),
        .D(D),
        .Q(Q),
        .\SRL_SIG_reg[0][15]_0 (\SRL_SIG_reg[0][15] ),
        .\SRL_SIG_reg[0][22]_0 (\SRL_SIG_reg[0][22] ),
        .\SRL_SIG_reg[0][7]_0 (\SRL_SIG_reg[0][7] ),
        .\SRL_SIG_reg[1][30]_0 (\SRL_SIG_reg[1][30] ),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .ap_clk(ap_clk),
        .empty_n_reg(U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_54),
        .empty_n_reg_0(in_mat_rows_c9_channel_empty_n),
        .i_fu_880(i_fu_880),
        .\i_fu_88_reg[14] (\i_fu_88_reg[14] ),
        .\i_fu_88_reg[22] (\i_fu_88_reg[22] ),
        .\i_fu_88_reg[30] (\i_fu_88_reg[30] ),
        .\i_fu_88_reg[6] (\i_fu_88_reg[6] ),
        .icmp_ln56_fu_255_p2_carry__0(icmp_ln56_fu_255_p2_carry_i_9_n_0),
        .in(in),
        .in_mat_rows_c9_channel_full_n(in_mat_rows_c9_channel_full_n),
        .mOutPtr(mOutPtr),
        .\mOutPtr_reg[0] (U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_50),
        .\mOutPtr_reg[0]_0 (U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_51),
        .\mOutPtr_reg[0]_1 (U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_52),
        .\mOutPtr_reg[0]_2 (U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_53),
        .out(out),
        .push(push));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_50),
        .Q(in_mat_rows_c9_channel_empty_n),
        .R(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_51),
        .Q(in_mat_rows_c9_channel_full_n),
        .S(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h8880)) 
    \i_fu_88[0]_i_4 
       (.I0(in_mat_rows_c9_channel_empty_n),
        .I1(in_mat_cols_c10_channel_empty_n),
        .I2(start_once_reg),
        .I3(start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n),
        .O(empty_n_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln56_fu_255_p2_carry_i_9
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[2]),
        .O(icmp_ln56_fu_255_p2_carry_i_9_n_0));
  LUT4 #(
    .INIT(16'h0100)) 
    int_ap_idle_i_1
       (.I0(in_mat_rows_c9_channel_empty_n),
        .I1(in_mat_cols_c10_channel_empty_n),
        .I2(out_mat_cols_channel_empty_n),
        .I3(int_ap_idle_reg),
        .O(ap_idle));
  FDSE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_54),
        .Q(mOutPtr[0]),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_53),
        .Q(mOutPtr[1]),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_n_52),
        .Q(mOutPtr[2]),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w32_d2_S" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S_2
   (in_mat_rows_c_empty_n,
    in_mat_rows_c_full_n,
    xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read,
    A,
    ap_rst_n_inv,
    ap_clk,
    AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write,
    in_mat_cols_c_empty_n,
    xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start,
    Q,
    D);
  output in_mat_rows_c_empty_n;
  output in_mat_rows_c_full_n;
  output xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read;
  output [15:0]A;
  input ap_rst_n_inv;
  input ap_clk;
  input AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write;
  input in_mat_cols_c_empty_n;
  input xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start;
  input [0:0]Q;
  input [15:0]D;

  wire [15:0]A;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write;
  wire [15:0]D;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire empty_n_i_1__2_n_0;
  wire full_n_i_1__2_n_0;
  wire in_mat_cols_c_empty_n;
  wire in_mat_rows_c_empty_n;
  wire in_mat_rows_c_full_n;
  wire [2:0]mOutPtr;
  wire mOutPtr0__0;
  wire mOutPtr16_out;
  wire \mOutPtr[0]_i_1__2_n_0 ;
  wire \mOutPtr[1]_i_1__2_n_0 ;
  wire \mOutPtr[2]_i_1__2_n_0 ;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read;

  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg U_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg
       (.A(A),
        .AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .D(D),
        .\SRL_SIG_reg[1][0]_0 (in_mat_rows_c_full_n),
        .ap_clk(ap_clk),
        .mOutPtr({mOutPtr[2],mOutPtr[0]}));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFF0000)) 
    empty_n_i_1__2
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[2]),
        .I3(mOutPtr0__0),
        .I4(mOutPtr16_out),
        .I5(in_mat_rows_c_empty_n),
        .O(empty_n_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__2_n_0),
        .Q(in_mat_rows_c_empty_n),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFF3AAAAAAA2)) 
    full_n_i_1__2
       (.I0(mOutPtr0__0),
        .I1(mOutPtr16_out),
        .I2(mOutPtr[0]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[2]),
        .I5(in_mat_rows_c_full_n),
        .O(full_n_i_1__2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__2_n_0),
        .Q(in_mat_rows_c_full_n),
        .S(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h87777888)) 
    \mOutPtr[0]_i_1__2 
       (.I0(in_mat_rows_c_full_n),
        .I1(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .I2(in_mat_rows_c_empty_n),
        .I3(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read),
        .I4(mOutPtr[0]),
        .O(\mOutPtr[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hD5BFBFBF2A404040)) 
    \mOutPtr[1]_i_1__2 
       (.I0(mOutPtr[0]),
        .I1(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read),
        .I2(in_mat_rows_c_empty_n),
        .I3(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .I4(in_mat_rows_c_full_n),
        .I5(mOutPtr[1]),
        .O(\mOutPtr[1]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7E7F8180)) 
    \mOutPtr[2]_i_1__2 
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr16_out),
        .I3(mOutPtr0__0),
        .I4(mOutPtr[2]),
        .O(\mOutPtr[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000000000000)) 
    \mOutPtr[2]_i_2 
       (.I0(in_mat_rows_c_empty_n),
        .I1(in_mat_cols_c_empty_n),
        .I2(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .I3(Q),
        .I4(in_mat_rows_c_full_n),
        .I5(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .O(mOutPtr16_out));
  LUT6 #(
    .INIT(64'h7000000000000000)) 
    \mOutPtr[2]_i_3 
       (.I0(in_mat_rows_c_full_n),
        .I1(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .I2(in_mat_rows_c_empty_n),
        .I3(in_mat_cols_c_empty_n),
        .I4(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .I5(Q),
        .O(mOutPtr0__0));
  FDSE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1__2_n_0 ),
        .Q(mOutPtr[0]),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__2_n_0 ),
        .Q(mOutPtr[1]),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[2]_i_1__2_n_0 ),
        .Q(mOutPtr[2]),
        .S(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h8000)) 
    \width_reg_156[15]_i_1 
       (.I0(in_mat_rows_c_empty_n),
        .I1(in_mat_cols_c_empty_n),
        .I2(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .I3(Q),
        .O(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_stream_in_cols_read));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w32_d2_S_ShiftReg" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg
   (A,
    \SRL_SIG_reg[1][0]_0 ,
    AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write,
    mOutPtr,
    D,
    ap_clk);
  output [15:0]A;
  input \SRL_SIG_reg[1][0]_0 ;
  input AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write;
  input [1:0]mOutPtr;
  input [15:0]D;
  input ap_clk;

  wire [15:0]A;
  wire AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write;
  wire [15:0]D;
  wire [15:0]\SRL_SIG_reg[0]_0 ;
  wire \SRL_SIG_reg[1][0]_0 ;
  wire [15:0]\SRL_SIG_reg[1]_1 ;
  wire ap_clk;
  wire [1:0]mOutPtr;
  wire push;

  LUT2 #(
    .INIT(4'h8)) 
    \SRL_SIG[0][15]_i_1 
       (.I0(\SRL_SIG_reg[1][0]_0 ),
        .I1(AXIVideo2ColorMat_20_1080_1920_1_2_U0_in_mat_cols_c_write),
        .O(push));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(push),
        .D(D[0]),
        .Q(\SRL_SIG_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(push),
        .D(D[10]),
        .Q(\SRL_SIG_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(push),
        .D(D[11]),
        .Q(\SRL_SIG_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(push),
        .D(D[12]),
        .Q(\SRL_SIG_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(push),
        .D(D[13]),
        .Q(\SRL_SIG_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(push),
        .D(D[14]),
        .Q(\SRL_SIG_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(push),
        .D(D[15]),
        .Q(\SRL_SIG_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(push),
        .D(D[1]),
        .Q(\SRL_SIG_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(push),
        .D(D[2]),
        .Q(\SRL_SIG_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(push),
        .D(D[3]),
        .Q(\SRL_SIG_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(push),
        .D(D[4]),
        .Q(\SRL_SIG_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(push),
        .D(D[5]),
        .Q(\SRL_SIG_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(push),
        .D(D[6]),
        .Q(\SRL_SIG_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(push),
        .D(D[7]),
        .Q(\SRL_SIG_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(push),
        .D(D[8]),
        .Q(\SRL_SIG_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(push),
        .D(D[9]),
        .Q(\SRL_SIG_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [0]),
        .Q(\SRL_SIG_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [10]),
        .Q(\SRL_SIG_reg[1]_1 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [11]),
        .Q(\SRL_SIG_reg[1]_1 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [12]),
        .Q(\SRL_SIG_reg[1]_1 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [13]),
        .Q(\SRL_SIG_reg[1]_1 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [14]),
        .Q(\SRL_SIG_reg[1]_1 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [15]),
        .Q(\SRL_SIG_reg[1]_1 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [1]),
        .Q(\SRL_SIG_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [2]),
        .Q(\SRL_SIG_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [3]),
        .Q(\SRL_SIG_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [4]),
        .Q(\SRL_SIG_reg[1]_1 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [5]),
        .Q(\SRL_SIG_reg[1]_1 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [6]),
        .Q(\SRL_SIG_reg[1]_1 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [7]),
        .Q(\SRL_SIG_reg[1]_1 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [8]),
        .Q(\SRL_SIG_reg[1]_1 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [9]),
        .Q(\SRL_SIG_reg[1]_1 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_10
       (.I0(\SRL_SIG_reg[1]_1 [11]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [11]),
        .O(A[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_11
       (.I0(\SRL_SIG_reg[1]_1 [10]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [10]),
        .O(A[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_12
       (.I0(\SRL_SIG_reg[1]_1 [9]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [9]),
        .O(A[9]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_13
       (.I0(\SRL_SIG_reg[1]_1 [8]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [8]),
        .O(A[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_14
       (.I0(\SRL_SIG_reg[1]_1 [7]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [7]),
        .O(A[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_15
       (.I0(\SRL_SIG_reg[1]_1 [6]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [6]),
        .O(A[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_16
       (.I0(\SRL_SIG_reg[1]_1 [5]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [5]),
        .O(A[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_17
       (.I0(\SRL_SIG_reg[1]_1 [4]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [4]),
        .O(A[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_18
       (.I0(\SRL_SIG_reg[1]_1 [3]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [3]),
        .O(A[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_19
       (.I0(\SRL_SIG_reg[1]_1 [2]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [2]),
        .O(A[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_20
       (.I0(\SRL_SIG_reg[1]_1 [1]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [1]),
        .O(A[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_21
       (.I0(\SRL_SIG_reg[1]_1 [0]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [0]),
        .O(A[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_6
       (.I0(\SRL_SIG_reg[1]_1 [15]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [15]),
        .O(A[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_7
       (.I0(\SRL_SIG_reg[1]_1 [14]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [14]),
        .O(A[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_8
       (.I0(\SRL_SIG_reg[1]_1 [13]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [13]),
        .O(A[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    bound_reg_175_reg_i_9
       (.I0(\SRL_SIG_reg[1]_1 [12]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [12]),
        .O(A[12]));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w32_d2_S_ShiftReg" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_11
   (\ap_CS_fsm_reg[4] ,
    i_fu_880,
    \SRL_SIG_reg[1][30]_0 ,
    \i_fu_88_reg[30] ,
    \SRL_SIG_reg[0][22]_0 ,
    \i_fu_88_reg[22] ,
    \i_fu_88_reg[6] ,
    D,
    \SRL_SIG_reg[0][7]_0 ,
    \i_fu_88_reg[14] ,
    \SRL_SIG_reg[0][15]_0 ,
    \mOutPtr_reg[0] ,
    \mOutPtr_reg[0]_0 ,
    \mOutPtr_reg[0]_1 ,
    \mOutPtr_reg[0]_2 ,
    empty_n_reg,
    empty_n_reg_0,
    CO,
    Q,
    push,
    mOutPtr,
    out,
    icmp_ln56_fu_255_p2_carry__0,
    in_mat_rows_c9_channel_full_n,
    in,
    ap_clk);
  output \ap_CS_fsm_reg[4] ;
  output i_fu_880;
  output [3:0]\SRL_SIG_reg[1][30]_0 ;
  output [3:0]\i_fu_88_reg[30] ;
  output [3:0]\SRL_SIG_reg[0][22]_0 ;
  output [3:0]\i_fu_88_reg[22] ;
  output [3:0]\i_fu_88_reg[6] ;
  output [15:0]D;
  output [3:0]\SRL_SIG_reg[0][7]_0 ;
  output [3:0]\i_fu_88_reg[14] ;
  output [3:0]\SRL_SIG_reg[0][15]_0 ;
  output \mOutPtr_reg[0] ;
  output \mOutPtr_reg[0]_0 ;
  output \mOutPtr_reg[0]_1 ;
  output \mOutPtr_reg[0]_2 ;
  output empty_n_reg;
  input empty_n_reg_0;
  input [0:0]CO;
  input [0:0]Q;
  input push;
  input [2:0]mOutPtr;
  input [30:0]out;
  input icmp_ln56_fu_255_p2_carry__0;
  input in_mat_rows_c9_channel_full_n;
  input [31:0]in;
  input ap_clk;

  wire [0:0]CO;
  wire [15:0]D;
  wire [0:0]Q;
  wire [3:0]\SRL_SIG_reg[0][15]_0 ;
  wire [3:0]\SRL_SIG_reg[0][22]_0 ;
  wire [3:0]\SRL_SIG_reg[0][7]_0 ;
  wire [31:0]\SRL_SIG_reg[0]_0 ;
  wire [3:0]\SRL_SIG_reg[1][30]_0 ;
  wire [31:0]\SRL_SIG_reg[1]_1 ;
  wire \ap_CS_fsm_reg[4] ;
  wire ap_clk;
  wire empty_n_reg;
  wire empty_n_reg_0;
  wire full_n_i_2__2_n_0;
  wire i_fu_880;
  wire [3:0]\i_fu_88_reg[14] ;
  wire [3:0]\i_fu_88_reg[22] ;
  wire [3:0]\i_fu_88_reg[30] ;
  wire [3:0]\i_fu_88_reg[6] ;
  wire icmp_ln56_fu_255_p2_carry__0;
  wire icmp_ln56_fu_255_p2_carry__1_i_10_n_0;
  wire icmp_ln56_fu_255_p2_carry__1_i_11_n_0;
  wire icmp_ln56_fu_255_p2_carry__1_i_12_n_0;
  wire icmp_ln56_fu_255_p2_carry__1_i_13_n_0;
  wire icmp_ln56_fu_255_p2_carry__1_i_14_n_0;
  wire icmp_ln56_fu_255_p2_carry__1_i_15_n_0;
  wire icmp_ln56_fu_255_p2_carry__1_i_16_n_0;
  wire icmp_ln56_fu_255_p2_carry__1_i_9_n_0;
  wire icmp_ln56_fu_255_p2_carry__2_i_10_n_0;
  wire icmp_ln56_fu_255_p2_carry__2_i_11_n_0;
  wire icmp_ln56_fu_255_p2_carry__2_i_12_n_0;
  wire icmp_ln56_fu_255_p2_carry__2_i_13_n_0;
  wire icmp_ln56_fu_255_p2_carry__2_i_14_n_0;
  wire icmp_ln56_fu_255_p2_carry__2_i_9_n_0;
  wire [31:0]in;
  wire in_mat_rows_c9_channel_full_n;
  wire [2:0]mOutPtr;
  wire mOutPtr16_out;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[0]_1 ;
  wire \mOutPtr_reg[0]_2 ;
  wire [30:0]out;
  wire push;

  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][0]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [0]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][10]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [10]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][11]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [11]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][12]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [12]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][13]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [13]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][14]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [14]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][15]_i_2__0 
       (.I0(\SRL_SIG_reg[1]_1 [15]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [15]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][1]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [1]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][2]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [2]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][3]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [3]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][4]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [4]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][5]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [5]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][6]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [6]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][7]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [7]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][8]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [8]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][9]_i_1__0 
       (.I0(\SRL_SIG_reg[1]_1 [9]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [9]),
        .O(D[9]));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(push),
        .D(in[0]),
        .Q(\SRL_SIG_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(push),
        .D(in[10]),
        .Q(\SRL_SIG_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(push),
        .D(in[11]),
        .Q(\SRL_SIG_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(push),
        .D(in[12]),
        .Q(\SRL_SIG_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(push),
        .D(in[13]),
        .Q(\SRL_SIG_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(push),
        .D(in[14]),
        .Q(\SRL_SIG_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(push),
        .D(in[15]),
        .Q(\SRL_SIG_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][16] 
       (.C(ap_clk),
        .CE(push),
        .D(in[16]),
        .Q(\SRL_SIG_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][17] 
       (.C(ap_clk),
        .CE(push),
        .D(in[17]),
        .Q(\SRL_SIG_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][18] 
       (.C(ap_clk),
        .CE(push),
        .D(in[18]),
        .Q(\SRL_SIG_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][19] 
       (.C(ap_clk),
        .CE(push),
        .D(in[19]),
        .Q(\SRL_SIG_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(push),
        .D(in[1]),
        .Q(\SRL_SIG_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][20] 
       (.C(ap_clk),
        .CE(push),
        .D(in[20]),
        .Q(\SRL_SIG_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][21] 
       (.C(ap_clk),
        .CE(push),
        .D(in[21]),
        .Q(\SRL_SIG_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][22] 
       (.C(ap_clk),
        .CE(push),
        .D(in[22]),
        .Q(\SRL_SIG_reg[0]_0 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][23] 
       (.C(ap_clk),
        .CE(push),
        .D(in[23]),
        .Q(\SRL_SIG_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][24] 
       (.C(ap_clk),
        .CE(push),
        .D(in[24]),
        .Q(\SRL_SIG_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][25] 
       (.C(ap_clk),
        .CE(push),
        .D(in[25]),
        .Q(\SRL_SIG_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][26] 
       (.C(ap_clk),
        .CE(push),
        .D(in[26]),
        .Q(\SRL_SIG_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][27] 
       (.C(ap_clk),
        .CE(push),
        .D(in[27]),
        .Q(\SRL_SIG_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][28] 
       (.C(ap_clk),
        .CE(push),
        .D(in[28]),
        .Q(\SRL_SIG_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][29] 
       (.C(ap_clk),
        .CE(push),
        .D(in[29]),
        .Q(\SRL_SIG_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(push),
        .D(in[2]),
        .Q(\SRL_SIG_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][30] 
       (.C(ap_clk),
        .CE(push),
        .D(in[30]),
        .Q(\SRL_SIG_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][31] 
       (.C(ap_clk),
        .CE(push),
        .D(in[31]),
        .Q(\SRL_SIG_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(push),
        .D(in[3]),
        .Q(\SRL_SIG_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(push),
        .D(in[4]),
        .Q(\SRL_SIG_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(push),
        .D(in[5]),
        .Q(\SRL_SIG_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(push),
        .D(in[6]),
        .Q(\SRL_SIG_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(push),
        .D(in[7]),
        .Q(\SRL_SIG_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(push),
        .D(in[8]),
        .Q(\SRL_SIG_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(push),
        .D(in[9]),
        .Q(\SRL_SIG_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [0]),
        .Q(\SRL_SIG_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [10]),
        .Q(\SRL_SIG_reg[1]_1 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [11]),
        .Q(\SRL_SIG_reg[1]_1 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [12]),
        .Q(\SRL_SIG_reg[1]_1 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [13]),
        .Q(\SRL_SIG_reg[1]_1 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [14]),
        .Q(\SRL_SIG_reg[1]_1 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [15]),
        .Q(\SRL_SIG_reg[1]_1 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][16] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [16]),
        .Q(\SRL_SIG_reg[1]_1 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][17] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [17]),
        .Q(\SRL_SIG_reg[1]_1 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][18] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [18]),
        .Q(\SRL_SIG_reg[1]_1 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][19] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [19]),
        .Q(\SRL_SIG_reg[1]_1 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [1]),
        .Q(\SRL_SIG_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][20] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [20]),
        .Q(\SRL_SIG_reg[1]_1 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][21] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [21]),
        .Q(\SRL_SIG_reg[1]_1 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][22] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [22]),
        .Q(\SRL_SIG_reg[1]_1 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][23] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [23]),
        .Q(\SRL_SIG_reg[1]_1 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][24] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [24]),
        .Q(\SRL_SIG_reg[1]_1 [24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][25] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [25]),
        .Q(\SRL_SIG_reg[1]_1 [25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][26] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [26]),
        .Q(\SRL_SIG_reg[1]_1 [26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][27] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [27]),
        .Q(\SRL_SIG_reg[1]_1 [27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][28] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [28]),
        .Q(\SRL_SIG_reg[1]_1 [28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][29] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [29]),
        .Q(\SRL_SIG_reg[1]_1 [29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [2]),
        .Q(\SRL_SIG_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][30] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [30]),
        .Q(\SRL_SIG_reg[1]_1 [30]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][31] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [31]),
        .Q(\SRL_SIG_reg[1]_1 [31]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [3]),
        .Q(\SRL_SIG_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [4]),
        .Q(\SRL_SIG_reg[1]_1 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [5]),
        .Q(\SRL_SIG_reg[1]_1 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [6]),
        .Q(\SRL_SIG_reg[1]_1 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [7]),
        .Q(\SRL_SIG_reg[1]_1 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [8]),
        .Q(\SRL_SIG_reg[1]_1 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [9]),
        .Q(\SRL_SIG_reg[1]_1 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFF00FF00)) 
    empty_n_i_1
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[2]),
        .I3(push),
        .I4(\ap_CS_fsm_reg[4] ),
        .I5(empty_n_reg_0),
        .O(\mOutPtr_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFF3AAAAAAA2)) 
    full_n_i_1
       (.I0(full_n_i_2__2_n_0),
        .I1(mOutPtr16_out),
        .I2(mOutPtr[0]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[2]),
        .I5(in_mat_rows_c9_channel_full_n),
        .O(\mOutPtr_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    full_n_i_2__2
       (.I0(empty_n_reg_0),
        .I1(CO),
        .I2(Q),
        .I3(push),
        .O(full_n_i_2__2_n_0));
  LUT4 #(
    .INIT(16'hDF00)) 
    full_n_i_3__2
       (.I0(empty_n_reg_0),
        .I1(CO),
        .I2(Q),
        .I3(push),
        .O(mOutPtr16_out));
  LUT2 #(
    .INIT(4'h8)) 
    \i_fu_88[0]_i_2 
       (.I0(CO),
        .I1(Q),
        .O(i_fu_880));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry__0_i_1
       (.I0(D[14]),
        .I1(out[14]),
        .I2(out[15]),
        .I3(\SRL_SIG_reg[1]_1 [15]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [15]),
        .O(\i_fu_88_reg[14] [3]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry__0_i_2
       (.I0(D[12]),
        .I1(out[12]),
        .I2(out[13]),
        .I3(\SRL_SIG_reg[1]_1 [13]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [13]),
        .O(\i_fu_88_reg[14] [2]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry__0_i_3
       (.I0(D[10]),
        .I1(out[10]),
        .I2(out[11]),
        .I3(\SRL_SIG_reg[1]_1 [11]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [11]),
        .O(\i_fu_88_reg[14] [1]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry__0_i_4
       (.I0(D[8]),
        .I1(out[8]),
        .I2(out[9]),
        .I3(\SRL_SIG_reg[1]_1 [9]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [9]),
        .O(\i_fu_88_reg[14] [0]));
  LUT6 #(
    .INIT(64'hE21D00000000E21D)) 
    icmp_ln56_fu_255_p2_carry__0_i_5
       (.I0(\SRL_SIG_reg[0]_0 [15]),
        .I1(icmp_ln56_fu_255_p2_carry__0),
        .I2(\SRL_SIG_reg[1]_1 [15]),
        .I3(out[15]),
        .I4(D[14]),
        .I5(out[14]),
        .O(\SRL_SIG_reg[0][15]_0 [3]));
  LUT6 #(
    .INIT(64'hE21D00000000E21D)) 
    icmp_ln56_fu_255_p2_carry__0_i_6
       (.I0(\SRL_SIG_reg[0]_0 [13]),
        .I1(icmp_ln56_fu_255_p2_carry__0),
        .I2(\SRL_SIG_reg[1]_1 [13]),
        .I3(out[13]),
        .I4(D[12]),
        .I5(out[12]),
        .O(\SRL_SIG_reg[0][15]_0 [2]));
  LUT6 #(
    .INIT(64'hE21D00000000E21D)) 
    icmp_ln56_fu_255_p2_carry__0_i_7
       (.I0(\SRL_SIG_reg[0]_0 [11]),
        .I1(icmp_ln56_fu_255_p2_carry__0),
        .I2(\SRL_SIG_reg[1]_1 [11]),
        .I3(out[11]),
        .I4(D[10]),
        .I5(out[10]),
        .O(\SRL_SIG_reg[0][15]_0 [1]));
  LUT6 #(
    .INIT(64'hE21D00000000E21D)) 
    icmp_ln56_fu_255_p2_carry__0_i_8
       (.I0(\SRL_SIG_reg[0]_0 [9]),
        .I1(icmp_ln56_fu_255_p2_carry__0),
        .I2(\SRL_SIG_reg[1]_1 [9]),
        .I3(out[9]),
        .I4(D[8]),
        .I5(out[8]),
        .O(\SRL_SIG_reg[0][15]_0 [0]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry__1_i_1
       (.I0(icmp_ln56_fu_255_p2_carry__1_i_9_n_0),
        .I1(out[22]),
        .I2(out[23]),
        .I3(\SRL_SIG_reg[1]_1 [23]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [23]),
        .O(\i_fu_88_reg[22] [3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    icmp_ln56_fu_255_p2_carry__1_i_10
       (.I0(\SRL_SIG_reg[1]_1 [20]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [20]),
        .O(icmp_ln56_fu_255_p2_carry__1_i_10_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    icmp_ln56_fu_255_p2_carry__1_i_11
       (.I0(\SRL_SIG_reg[1]_1 [18]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [18]),
        .O(icmp_ln56_fu_255_p2_carry__1_i_11_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    icmp_ln56_fu_255_p2_carry__1_i_12
       (.I0(\SRL_SIG_reg[1]_1 [16]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [16]),
        .O(icmp_ln56_fu_255_p2_carry__1_i_12_n_0));
  LUT5 #(
    .INIT(32'hBA8A4575)) 
    icmp_ln56_fu_255_p2_carry__1_i_13
       (.I0(\SRL_SIG_reg[0]_0 [23]),
        .I1(mOutPtr[2]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [23]),
        .I4(out[23]),
        .O(icmp_ln56_fu_255_p2_carry__1_i_13_n_0));
  LUT5 #(
    .INIT(32'hBA8A4575)) 
    icmp_ln56_fu_255_p2_carry__1_i_14
       (.I0(\SRL_SIG_reg[0]_0 [21]),
        .I1(mOutPtr[2]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [21]),
        .I4(out[21]),
        .O(icmp_ln56_fu_255_p2_carry__1_i_14_n_0));
  LUT5 #(
    .INIT(32'hBA8A4575)) 
    icmp_ln56_fu_255_p2_carry__1_i_15
       (.I0(\SRL_SIG_reg[0]_0 [19]),
        .I1(mOutPtr[2]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [19]),
        .I4(out[19]),
        .O(icmp_ln56_fu_255_p2_carry__1_i_15_n_0));
  LUT5 #(
    .INIT(32'hBA8A4575)) 
    icmp_ln56_fu_255_p2_carry__1_i_16
       (.I0(\SRL_SIG_reg[0]_0 [17]),
        .I1(mOutPtr[2]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [17]),
        .I4(out[17]),
        .O(icmp_ln56_fu_255_p2_carry__1_i_16_n_0));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry__1_i_2
       (.I0(icmp_ln56_fu_255_p2_carry__1_i_10_n_0),
        .I1(out[20]),
        .I2(out[21]),
        .I3(\SRL_SIG_reg[1]_1 [21]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [21]),
        .O(\i_fu_88_reg[22] [2]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry__1_i_3
       (.I0(icmp_ln56_fu_255_p2_carry__1_i_11_n_0),
        .I1(out[18]),
        .I2(out[19]),
        .I3(\SRL_SIG_reg[1]_1 [19]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [19]),
        .O(\i_fu_88_reg[22] [1]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry__1_i_4
       (.I0(icmp_ln56_fu_255_p2_carry__1_i_12_n_0),
        .I1(out[16]),
        .I2(out[17]),
        .I3(\SRL_SIG_reg[1]_1 [17]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [17]),
        .O(\i_fu_88_reg[22] [0]));
  LUT6 #(
    .INIT(64'h8A88808820222A22)) 
    icmp_ln56_fu_255_p2_carry__1_i_5
       (.I0(icmp_ln56_fu_255_p2_carry__1_i_13_n_0),
        .I1(\SRL_SIG_reg[0]_0 [22]),
        .I2(mOutPtr[2]),
        .I3(mOutPtr[0]),
        .I4(\SRL_SIG_reg[1]_1 [22]),
        .I5(out[22]),
        .O(\SRL_SIG_reg[0][22]_0 [3]));
  LUT6 #(
    .INIT(64'h8A88808820222A22)) 
    icmp_ln56_fu_255_p2_carry__1_i_6
       (.I0(icmp_ln56_fu_255_p2_carry__1_i_14_n_0),
        .I1(\SRL_SIG_reg[0]_0 [20]),
        .I2(mOutPtr[2]),
        .I3(mOutPtr[0]),
        .I4(\SRL_SIG_reg[1]_1 [20]),
        .I5(out[20]),
        .O(\SRL_SIG_reg[0][22]_0 [2]));
  LUT6 #(
    .INIT(64'h8A88808820222A22)) 
    icmp_ln56_fu_255_p2_carry__1_i_7
       (.I0(icmp_ln56_fu_255_p2_carry__1_i_15_n_0),
        .I1(\SRL_SIG_reg[0]_0 [18]),
        .I2(mOutPtr[2]),
        .I3(mOutPtr[0]),
        .I4(\SRL_SIG_reg[1]_1 [18]),
        .I5(out[18]),
        .O(\SRL_SIG_reg[0][22]_0 [1]));
  LUT6 #(
    .INIT(64'h8A88808820222A22)) 
    icmp_ln56_fu_255_p2_carry__1_i_8
       (.I0(icmp_ln56_fu_255_p2_carry__1_i_16_n_0),
        .I1(\SRL_SIG_reg[0]_0 [16]),
        .I2(mOutPtr[2]),
        .I3(mOutPtr[0]),
        .I4(\SRL_SIG_reg[1]_1 [16]),
        .I5(out[16]),
        .O(\SRL_SIG_reg[0][22]_0 [0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    icmp_ln56_fu_255_p2_carry__1_i_9
       (.I0(\SRL_SIG_reg[1]_1 [22]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [22]),
        .O(icmp_ln56_fu_255_p2_carry__1_i_9_n_0));
  LUT6 #(
    .INIT(64'h1111050000000500)) 
    icmp_ln56_fu_255_p2_carry__2_i_1
       (.I0(out[30]),
        .I1(\SRL_SIG_reg[1]_1 [31]),
        .I2(\SRL_SIG_reg[0]_0 [31]),
        .I3(\SRL_SIG_reg[0]_0 [30]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[1]_1 [30]),
        .O(\i_fu_88_reg[30] [3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    icmp_ln56_fu_255_p2_carry__2_i_10
       (.I0(\SRL_SIG_reg[1]_1 [26]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [26]),
        .O(icmp_ln56_fu_255_p2_carry__2_i_10_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    icmp_ln56_fu_255_p2_carry__2_i_11
       (.I0(\SRL_SIG_reg[1]_1 [24]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [24]),
        .O(icmp_ln56_fu_255_p2_carry__2_i_11_n_0));
  LUT5 #(
    .INIT(32'hBA8A4575)) 
    icmp_ln56_fu_255_p2_carry__2_i_12
       (.I0(\SRL_SIG_reg[0]_0 [29]),
        .I1(mOutPtr[2]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [29]),
        .I4(out[29]),
        .O(icmp_ln56_fu_255_p2_carry__2_i_12_n_0));
  LUT5 #(
    .INIT(32'hBA8A4575)) 
    icmp_ln56_fu_255_p2_carry__2_i_13
       (.I0(\SRL_SIG_reg[0]_0 [27]),
        .I1(mOutPtr[2]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [27]),
        .I4(out[27]),
        .O(icmp_ln56_fu_255_p2_carry__2_i_13_n_0));
  LUT5 #(
    .INIT(32'hBA8A4575)) 
    icmp_ln56_fu_255_p2_carry__2_i_14
       (.I0(\SRL_SIG_reg[0]_0 [25]),
        .I1(mOutPtr[2]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [25]),
        .I4(out[25]),
        .O(icmp_ln56_fu_255_p2_carry__2_i_14_n_0));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry__2_i_2
       (.I0(icmp_ln56_fu_255_p2_carry__2_i_9_n_0),
        .I1(out[28]),
        .I2(out[29]),
        .I3(\SRL_SIG_reg[1]_1 [29]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [29]),
        .O(\i_fu_88_reg[30] [2]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry__2_i_3
       (.I0(icmp_ln56_fu_255_p2_carry__2_i_10_n_0),
        .I1(out[26]),
        .I2(out[27]),
        .I3(\SRL_SIG_reg[1]_1 [27]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [27]),
        .O(\i_fu_88_reg[30] [1]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry__2_i_4
       (.I0(icmp_ln56_fu_255_p2_carry__2_i_11_n_0),
        .I1(out[24]),
        .I2(out[25]),
        .I3(\SRL_SIG_reg[1]_1 [25]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [25]),
        .O(\i_fu_88_reg[30] [0]));
  LUT6 #(
    .INIT(64'h003088B800034447)) 
    icmp_ln56_fu_255_p2_carry__2_i_5
       (.I0(\SRL_SIG_reg[1]_1 [30]),
        .I1(icmp_ln56_fu_255_p2_carry__0),
        .I2(\SRL_SIG_reg[0]_0 [30]),
        .I3(\SRL_SIG_reg[0]_0 [31]),
        .I4(\SRL_SIG_reg[1]_1 [31]),
        .I5(out[30]),
        .O(\SRL_SIG_reg[1][30]_0 [3]));
  LUT6 #(
    .INIT(64'h8A88808820222A22)) 
    icmp_ln56_fu_255_p2_carry__2_i_6
       (.I0(icmp_ln56_fu_255_p2_carry__2_i_12_n_0),
        .I1(\SRL_SIG_reg[0]_0 [28]),
        .I2(mOutPtr[2]),
        .I3(mOutPtr[0]),
        .I4(\SRL_SIG_reg[1]_1 [28]),
        .I5(out[28]),
        .O(\SRL_SIG_reg[1][30]_0 [2]));
  LUT6 #(
    .INIT(64'h8A88808820222A22)) 
    icmp_ln56_fu_255_p2_carry__2_i_7
       (.I0(icmp_ln56_fu_255_p2_carry__2_i_13_n_0),
        .I1(\SRL_SIG_reg[0]_0 [26]),
        .I2(mOutPtr[2]),
        .I3(mOutPtr[0]),
        .I4(\SRL_SIG_reg[1]_1 [26]),
        .I5(out[26]),
        .O(\SRL_SIG_reg[1][30]_0 [1]));
  LUT6 #(
    .INIT(64'h8A88808820222A22)) 
    icmp_ln56_fu_255_p2_carry__2_i_8
       (.I0(icmp_ln56_fu_255_p2_carry__2_i_14_n_0),
        .I1(\SRL_SIG_reg[0]_0 [24]),
        .I2(mOutPtr[2]),
        .I3(mOutPtr[0]),
        .I4(\SRL_SIG_reg[1]_1 [24]),
        .I5(out[24]),
        .O(\SRL_SIG_reg[1][30]_0 [0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    icmp_ln56_fu_255_p2_carry__2_i_9
       (.I0(\SRL_SIG_reg[1]_1 [28]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[2]),
        .I3(\SRL_SIG_reg[0]_0 [28]),
        .O(icmp_ln56_fu_255_p2_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry_i_1
       (.I0(D[6]),
        .I1(out[6]),
        .I2(out[7]),
        .I3(\SRL_SIG_reg[1]_1 [7]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [7]),
        .O(\i_fu_88_reg[6] [3]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry_i_2
       (.I0(D[4]),
        .I1(out[4]),
        .I2(out[5]),
        .I3(\SRL_SIG_reg[1]_1 [5]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [5]),
        .O(\i_fu_88_reg[6] [2]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry_i_3
       (.I0(D[2]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(\SRL_SIG_reg[1]_1 [3]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [3]),
        .O(\i_fu_88_reg[6] [1]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    icmp_ln56_fu_255_p2_carry_i_4
       (.I0(D[0]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\SRL_SIG_reg[1]_1 [1]),
        .I4(icmp_ln56_fu_255_p2_carry__0),
        .I5(\SRL_SIG_reg[0]_0 [1]),
        .O(\i_fu_88_reg[6] [0]));
  LUT6 #(
    .INIT(64'hE21D00000000E21D)) 
    icmp_ln56_fu_255_p2_carry_i_5
       (.I0(\SRL_SIG_reg[0]_0 [7]),
        .I1(icmp_ln56_fu_255_p2_carry__0),
        .I2(\SRL_SIG_reg[1]_1 [7]),
        .I3(out[7]),
        .I4(D[6]),
        .I5(out[6]),
        .O(\SRL_SIG_reg[0][7]_0 [3]));
  LUT6 #(
    .INIT(64'hE21D00000000E21D)) 
    icmp_ln56_fu_255_p2_carry_i_6
       (.I0(\SRL_SIG_reg[0]_0 [5]),
        .I1(icmp_ln56_fu_255_p2_carry__0),
        .I2(\SRL_SIG_reg[1]_1 [5]),
        .I3(out[5]),
        .I4(D[4]),
        .I5(out[4]),
        .O(\SRL_SIG_reg[0][7]_0 [2]));
  LUT6 #(
    .INIT(64'hE21D00000000E21D)) 
    icmp_ln56_fu_255_p2_carry_i_7
       (.I0(\SRL_SIG_reg[0]_0 [3]),
        .I1(icmp_ln56_fu_255_p2_carry__0),
        .I2(\SRL_SIG_reg[1]_1 [3]),
        .I3(out[3]),
        .I4(D[2]),
        .I5(out[2]),
        .O(\SRL_SIG_reg[0][7]_0 [1]));
  LUT6 #(
    .INIT(64'hE21D00000000E21D)) 
    icmp_ln56_fu_255_p2_carry_i_8
       (.I0(\SRL_SIG_reg[0]_0 [1]),
        .I1(icmp_ln56_fu_255_p2_carry__0),
        .I2(\SRL_SIG_reg[1]_1 [1]),
        .I3(out[1]),
        .I4(D[0]),
        .I5(out[0]),
        .O(\SRL_SIG_reg[0][7]_0 [0]));
  LUT5 #(
    .INIT(32'h20DFDF20)) 
    \mOutPtr[0]_i_1 
       (.I0(empty_n_reg_0),
        .I1(CO),
        .I2(Q),
        .I3(push),
        .I4(mOutPtr[0]),
        .O(empty_n_reg));
  LUT6 #(
    .INIT(64'h77E7777788188888)) 
    \mOutPtr[1]_i_1 
       (.I0(mOutPtr[0]),
        .I1(push),
        .I2(Q),
        .I3(CO),
        .I4(empty_n_reg_0),
        .I5(mOutPtr[1]),
        .O(\mOutPtr_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h7FFE7F7F80018080)) 
    \mOutPtr[2]_i_1 
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(push),
        .I3(\ap_CS_fsm_reg[4] ),
        .I4(empty_n_reg_0),
        .I5(mOutPtr[2]),
        .O(\mOutPtr_reg[0]_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \mOutPtr[2]_i_2__1 
       (.I0(CO),
        .I1(Q),
        .O(\ap_CS_fsm_reg[4] ));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w32_d2_S_ShiftReg" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_12
   (D,
    in_mat_cols_c_full_n,
    \SRL_SIG_reg[1][0]_0 ,
    mOutPtr,
    \SRL_SIG_reg[0][15]_0 ,
    ap_clk);
  output [15:0]D;
  input in_mat_cols_c_full_n;
  input \SRL_SIG_reg[1][0]_0 ;
  input [1:0]mOutPtr;
  input [15:0]\SRL_SIG_reg[0][15]_0 ;
  input ap_clk;

  wire [15:0]D;
  wire [15:0]\SRL_SIG_reg[0][15]_0 ;
  wire [15:0]\SRL_SIG_reg[0]_0 ;
  wire \SRL_SIG_reg[1][0]_0 ;
  wire [15:0]\SRL_SIG_reg[1]_1 ;
  wire ap_clk;
  wire in_mat_cols_c_full_n;
  wire [1:0]mOutPtr;
  wire push;

  LUT2 #(
    .INIT(4'h8)) 
    \SRL_SIG[0][15]_i_1__0 
       (.I0(in_mat_cols_c_full_n),
        .I1(\SRL_SIG_reg[1][0]_0 ),
        .O(push));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [0]),
        .Q(\SRL_SIG_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [10]),
        .Q(\SRL_SIG_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [11]),
        .Q(\SRL_SIG_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [12]),
        .Q(\SRL_SIG_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [13]),
        .Q(\SRL_SIG_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [14]),
        .Q(\SRL_SIG_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [15]),
        .Q(\SRL_SIG_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [1]),
        .Q(\SRL_SIG_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [2]),
        .Q(\SRL_SIG_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [3]),
        .Q(\SRL_SIG_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [4]),
        .Q(\SRL_SIG_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [5]),
        .Q(\SRL_SIG_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [6]),
        .Q(\SRL_SIG_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [7]),
        .Q(\SRL_SIG_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [8]),
        .Q(\SRL_SIG_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0][15]_0 [9]),
        .Q(\SRL_SIG_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [0]),
        .Q(\SRL_SIG_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [10]),
        .Q(\SRL_SIG_reg[1]_1 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [11]),
        .Q(\SRL_SIG_reg[1]_1 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [12]),
        .Q(\SRL_SIG_reg[1]_1 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [13]),
        .Q(\SRL_SIG_reg[1]_1 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [14]),
        .Q(\SRL_SIG_reg[1]_1 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [15]),
        .Q(\SRL_SIG_reg[1]_1 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [1]),
        .Q(\SRL_SIG_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [2]),
        .Q(\SRL_SIG_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [3]),
        .Q(\SRL_SIG_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [4]),
        .Q(\SRL_SIG_reg[1]_1 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [5]),
        .Q(\SRL_SIG_reg[1]_1 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [6]),
        .Q(\SRL_SIG_reg[1]_1 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [7]),
        .Q(\SRL_SIG_reg[1]_1 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [8]),
        .Q(\SRL_SIG_reg[1]_1 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [9]),
        .Q(\SRL_SIG_reg[1]_1 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[0]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [0]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[10]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [10]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[11]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [11]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[12]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [12]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[13]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [13]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[14]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [14]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[15]_i_2 
       (.I0(\SRL_SIG_reg[1]_1 [15]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [15]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[1]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [1]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[2]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [2]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[3]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [3]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[4]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [4]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[5]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [5]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[6]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [6]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[7]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [7]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[8]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [8]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \width_reg_156[9]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [9]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [9]),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w32_d2_S_ShiftReg" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d2_S_ShiftReg_13
   (\SRL_SIG_reg[1][25]_0 ,
    \SRL_SIG_reg[0][24]_0 ,
    \SRL_SIG_reg[0][30]_0 ,
    \j_fu_78_reg[30] ,
    \SRL_SIG_reg[0][31]_0 ,
    \SRL_SIG_reg[0][30]_1 ,
    \SRL_SIG_reg[1][17]_0 ,
    \SRL_SIG_reg[0][16]_0 ,
    \SRL_SIG_reg[0][22]_0 ,
    \SRL_SIG_reg[0][23]_0 ,
    \SRL_SIG_reg[0][15]_0 ,
    \SRL_SIG_reg[0][14]_0 ,
    DI,
    S,
    \SRL_SIG_reg[1][8]_0 ,
    \SRL_SIG_reg[0][9]_0 ,
    D,
    \SRL_SIG_reg[0][1]_0 ,
    mOutPtr,
    icmp_ln62_fu_197_p2_carry,
    icmp_ln62_fu_197_p2_carry__2,
    ap_loop_init,
    push,
    in,
    ap_clk);
  output [3:0]\SRL_SIG_reg[1][25]_0 ;
  output [3:0]\SRL_SIG_reg[0][24]_0 ;
  output [3:0]\SRL_SIG_reg[0][30]_0 ;
  output [3:0]\j_fu_78_reg[30] ;
  output [2:0]\SRL_SIG_reg[0][31]_0 ;
  output [2:0]\SRL_SIG_reg[0][30]_1 ;
  output [3:0]\SRL_SIG_reg[1][17]_0 ;
  output [3:0]\SRL_SIG_reg[0][16]_0 ;
  output [3:0]\SRL_SIG_reg[0][22]_0 ;
  output [3:0]\SRL_SIG_reg[0][23]_0 ;
  output [3:0]\SRL_SIG_reg[0][15]_0 ;
  output [3:0]\SRL_SIG_reg[0][14]_0 ;
  output [3:0]DI;
  output [3:0]S;
  output [3:0]\SRL_SIG_reg[1][8]_0 ;
  output [3:0]\SRL_SIG_reg[0][9]_0 ;
  output [15:0]D;
  output \SRL_SIG_reg[0][1]_0 ;
  input [1:0]mOutPtr;
  input icmp_ln62_fu_197_p2_carry;
  input [30:0]icmp_ln62_fu_197_p2_carry__2;
  input ap_loop_init;
  input push;
  input [31:0]in;
  input ap_clk;

  wire [15:0]D;
  wire [3:0]DI;
  wire [3:0]S;
  wire [3:0]\SRL_SIG_reg[0][14]_0 ;
  wire [3:0]\SRL_SIG_reg[0][15]_0 ;
  wire [3:0]\SRL_SIG_reg[0][16]_0 ;
  wire \SRL_SIG_reg[0][1]_0 ;
  wire [3:0]\SRL_SIG_reg[0][22]_0 ;
  wire [3:0]\SRL_SIG_reg[0][23]_0 ;
  wire [3:0]\SRL_SIG_reg[0][24]_0 ;
  wire [3:0]\SRL_SIG_reg[0][30]_0 ;
  wire [2:0]\SRL_SIG_reg[0][30]_1 ;
  wire [2:0]\SRL_SIG_reg[0][31]_0 ;
  wire [3:0]\SRL_SIG_reg[0][9]_0 ;
  wire [31:0]\SRL_SIG_reg[0]_0 ;
  wire [3:0]\SRL_SIG_reg[1][17]_0 ;
  wire [3:0]\SRL_SIG_reg[1][25]_0 ;
  wire [3:0]\SRL_SIG_reg[1][8]_0 ;
  wire [31:0]\SRL_SIG_reg[1]_1 ;
  wire ap_clk;
  wire ap_loop_init;
  wire icmp_ln62_fu_197_p2_carry;
  wire icmp_ln62_fu_197_p2_carry__0_i_10_n_0;
  wire icmp_ln62_fu_197_p2_carry__0_i_11_n_0;
  wire icmp_ln62_fu_197_p2_carry__0_i_12_n_0;
  wire icmp_ln62_fu_197_p2_carry__0_i_13_n_0;
  wire icmp_ln62_fu_197_p2_carry__0_i_14_n_0;
  wire icmp_ln62_fu_197_p2_carry__0_i_15_n_0;
  wire icmp_ln62_fu_197_p2_carry__0_i_16_n_0;
  wire icmp_ln62_fu_197_p2_carry__0_i_9_n_0;
  wire icmp_ln62_fu_197_p2_carry__1_i_10_n_0;
  wire icmp_ln62_fu_197_p2_carry__1_i_11_n_0;
  wire icmp_ln62_fu_197_p2_carry__1_i_12_n_0;
  wire icmp_ln62_fu_197_p2_carry__1_i_13_n_0;
  wire icmp_ln62_fu_197_p2_carry__1_i_14_n_0;
  wire icmp_ln62_fu_197_p2_carry__1_i_15_n_0;
  wire icmp_ln62_fu_197_p2_carry__1_i_16_n_0;
  wire icmp_ln62_fu_197_p2_carry__1_i_9_n_0;
  wire [30:0]icmp_ln62_fu_197_p2_carry__2;
  wire icmp_ln62_fu_197_p2_carry__2_i_10_n_0;
  wire icmp_ln62_fu_197_p2_carry__2_i_11_n_0;
  wire icmp_ln62_fu_197_p2_carry__2_i_12_n_0;
  wire icmp_ln62_fu_197_p2_carry__2_i_13_n_0;
  wire icmp_ln62_fu_197_p2_carry__2_i_14_n_0;
  wire icmp_ln62_fu_197_p2_carry__2_i_15_n_0;
  wire icmp_ln62_fu_197_p2_carry__2_i_9_n_0;
  wire icmp_ln62_fu_197_p2_carry_i_11_n_0;
  wire icmp_ln62_fu_197_p2_carry_i_12_n_0;
  wire icmp_ln62_fu_197_p2_carry_i_13_n_0;
  wire icmp_ln62_fu_197_p2_carry_i_14_n_0;
  wire icmp_ln62_fu_197_p2_carry_i_15_n_0;
  wire icmp_ln62_fu_197_p2_carry_i_16_n_0;
  wire icmp_ln62_fu_197_p2_carry_i_17_n_0;
  wire icmp_ln62_fu_197_p2_carry_i_18_n_0;
  wire [31:0]in;
  wire [3:0]\j_fu_78_reg[30] ;
  wire [1:0]mOutPtr;
  wire push;

  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][0]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [0]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][10]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [10]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][11]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [11]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][12]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [12]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][13]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [13]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][14]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [14]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][15]_i_2 
       (.I0(\SRL_SIG_reg[1]_1 [15]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [15]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][1]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [1]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][2]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [2]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][3]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [3]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][4]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [4]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][5]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [5]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][6]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [6]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][7]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [7]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][8]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [8]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][9]_i_1 
       (.I0(\SRL_SIG_reg[1]_1 [9]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [9]),
        .O(D[9]));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(push),
        .D(in[0]),
        .Q(\SRL_SIG_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(push),
        .D(in[10]),
        .Q(\SRL_SIG_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(push),
        .D(in[11]),
        .Q(\SRL_SIG_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(push),
        .D(in[12]),
        .Q(\SRL_SIG_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(push),
        .D(in[13]),
        .Q(\SRL_SIG_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(push),
        .D(in[14]),
        .Q(\SRL_SIG_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(push),
        .D(in[15]),
        .Q(\SRL_SIG_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][16] 
       (.C(ap_clk),
        .CE(push),
        .D(in[16]),
        .Q(\SRL_SIG_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][17] 
       (.C(ap_clk),
        .CE(push),
        .D(in[17]),
        .Q(\SRL_SIG_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][18] 
       (.C(ap_clk),
        .CE(push),
        .D(in[18]),
        .Q(\SRL_SIG_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][19] 
       (.C(ap_clk),
        .CE(push),
        .D(in[19]),
        .Q(\SRL_SIG_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(push),
        .D(in[1]),
        .Q(\SRL_SIG_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][20] 
       (.C(ap_clk),
        .CE(push),
        .D(in[20]),
        .Q(\SRL_SIG_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][21] 
       (.C(ap_clk),
        .CE(push),
        .D(in[21]),
        .Q(\SRL_SIG_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][22] 
       (.C(ap_clk),
        .CE(push),
        .D(in[22]),
        .Q(\SRL_SIG_reg[0]_0 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][23] 
       (.C(ap_clk),
        .CE(push),
        .D(in[23]),
        .Q(\SRL_SIG_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][24] 
       (.C(ap_clk),
        .CE(push),
        .D(in[24]),
        .Q(\SRL_SIG_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][25] 
       (.C(ap_clk),
        .CE(push),
        .D(in[25]),
        .Q(\SRL_SIG_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][26] 
       (.C(ap_clk),
        .CE(push),
        .D(in[26]),
        .Q(\SRL_SIG_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][27] 
       (.C(ap_clk),
        .CE(push),
        .D(in[27]),
        .Q(\SRL_SIG_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][28] 
       (.C(ap_clk),
        .CE(push),
        .D(in[28]),
        .Q(\SRL_SIG_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][29] 
       (.C(ap_clk),
        .CE(push),
        .D(in[29]),
        .Q(\SRL_SIG_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(push),
        .D(in[2]),
        .Q(\SRL_SIG_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][30] 
       (.C(ap_clk),
        .CE(push),
        .D(in[30]),
        .Q(\SRL_SIG_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][31] 
       (.C(ap_clk),
        .CE(push),
        .D(in[31]),
        .Q(\SRL_SIG_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(push),
        .D(in[3]),
        .Q(\SRL_SIG_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(push),
        .D(in[4]),
        .Q(\SRL_SIG_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(push),
        .D(in[5]),
        .Q(\SRL_SIG_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(push),
        .D(in[6]),
        .Q(\SRL_SIG_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(push),
        .D(in[7]),
        .Q(\SRL_SIG_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(push),
        .D(in[8]),
        .Q(\SRL_SIG_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(push),
        .D(in[9]),
        .Q(\SRL_SIG_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [0]),
        .Q(\SRL_SIG_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [10]),
        .Q(\SRL_SIG_reg[1]_1 [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [11]),
        .Q(\SRL_SIG_reg[1]_1 [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [12]),
        .Q(\SRL_SIG_reg[1]_1 [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [13]),
        .Q(\SRL_SIG_reg[1]_1 [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [14]),
        .Q(\SRL_SIG_reg[1]_1 [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [15]),
        .Q(\SRL_SIG_reg[1]_1 [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][16] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [16]),
        .Q(\SRL_SIG_reg[1]_1 [16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][17] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [17]),
        .Q(\SRL_SIG_reg[1]_1 [17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][18] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [18]),
        .Q(\SRL_SIG_reg[1]_1 [18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][19] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [19]),
        .Q(\SRL_SIG_reg[1]_1 [19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [1]),
        .Q(\SRL_SIG_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][20] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [20]),
        .Q(\SRL_SIG_reg[1]_1 [20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][21] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [21]),
        .Q(\SRL_SIG_reg[1]_1 [21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][22] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [22]),
        .Q(\SRL_SIG_reg[1]_1 [22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][23] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [23]),
        .Q(\SRL_SIG_reg[1]_1 [23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][24] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [24]),
        .Q(\SRL_SIG_reg[1]_1 [24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][25] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [25]),
        .Q(\SRL_SIG_reg[1]_1 [25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][26] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [26]),
        .Q(\SRL_SIG_reg[1]_1 [26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][27] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [27]),
        .Q(\SRL_SIG_reg[1]_1 [27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][28] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [28]),
        .Q(\SRL_SIG_reg[1]_1 [28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][29] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [29]),
        .Q(\SRL_SIG_reg[1]_1 [29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [2]),
        .Q(\SRL_SIG_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][30] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [30]),
        .Q(\SRL_SIG_reg[1]_1 [30]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][31] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [31]),
        .Q(\SRL_SIG_reg[1]_1 [31]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [3]),
        .Q(\SRL_SIG_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [4]),
        .Q(\SRL_SIG_reg[1]_1 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [5]),
        .Q(\SRL_SIG_reg[1]_1 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [6]),
        .Q(\SRL_SIG_reg[1]_1 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [7]),
        .Q(\SRL_SIG_reg[1]_1 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [8]),
        .Q(\SRL_SIG_reg[1]_1 [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(push),
        .D(\SRL_SIG_reg[0]_0 [9]),
        .Q(\SRL_SIG_reg[1]_1 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry__0_i_1
       (.I0(\SRL_SIG_reg[0]_0 [16]),
        .I1(\SRL_SIG_reg[1]_1 [16]),
        .I2(\SRL_SIG_reg[0]_0 [17]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [17]),
        .O(\SRL_SIG_reg[0][16]_0 [3]));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry__0_i_2
       (.I0(\SRL_SIG_reg[0]_0 [15]),
        .I1(\SRL_SIG_reg[1]_1 [15]),
        .I2(\SRL_SIG_reg[0]_0 [14]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [14]),
        .O(\SRL_SIG_reg[0][16]_0 [2]));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry__0_i_3
       (.I0(\SRL_SIG_reg[0]_0 [13]),
        .I1(\SRL_SIG_reg[1]_1 [13]),
        .I2(\SRL_SIG_reg[0]_0 [12]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [12]),
        .O(\SRL_SIG_reg[0][16]_0 [1]));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry__0_i_4
       (.I0(\SRL_SIG_reg[0]_0 [11]),
        .I1(\SRL_SIG_reg[1]_1 [11]),
        .I2(\SRL_SIG_reg[0]_0 [10]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [10]),
        .O(\SRL_SIG_reg[0][16]_0 [0]));
  LUT6 #(
    .INIT(64'h0000040400F304F7)) 
    cmp41_fu_237_p2_carry__0_i_5
       (.I0(\SRL_SIG_reg[1]_1 [17]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [17]),
        .I4(\SRL_SIG_reg[1]_1 [16]),
        .I5(\SRL_SIG_reg[0]_0 [16]),
        .O(\SRL_SIG_reg[1][17]_0 [3]));
  LUT6 #(
    .INIT(64'h0000040400F304F7)) 
    cmp41_fu_237_p2_carry__0_i_6
       (.I0(\SRL_SIG_reg[1]_1 [14]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [14]),
        .I4(\SRL_SIG_reg[1]_1 [15]),
        .I5(\SRL_SIG_reg[0]_0 [15]),
        .O(\SRL_SIG_reg[1][17]_0 [2]));
  LUT6 #(
    .INIT(64'h0000040400F304F7)) 
    cmp41_fu_237_p2_carry__0_i_7
       (.I0(\SRL_SIG_reg[1]_1 [12]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [12]),
        .I4(\SRL_SIG_reg[1]_1 [13]),
        .I5(\SRL_SIG_reg[0]_0 [13]),
        .O(\SRL_SIG_reg[1][17]_0 [1]));
  LUT6 #(
    .INIT(64'h0000040400F304F7)) 
    cmp41_fu_237_p2_carry__0_i_8
       (.I0(\SRL_SIG_reg[1]_1 [10]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [10]),
        .I4(\SRL_SIG_reg[1]_1 [11]),
        .I5(\SRL_SIG_reg[0]_0 [11]),
        .O(\SRL_SIG_reg[1][17]_0 [0]));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry__1_i_1
       (.I0(\SRL_SIG_reg[0]_0 [24]),
        .I1(\SRL_SIG_reg[1]_1 [24]),
        .I2(\SRL_SIG_reg[0]_0 [25]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [25]),
        .O(\SRL_SIG_reg[0][24]_0 [3]));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry__1_i_2
       (.I0(\SRL_SIG_reg[0]_0 [22]),
        .I1(\SRL_SIG_reg[1]_1 [22]),
        .I2(\SRL_SIG_reg[0]_0 [23]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [23]),
        .O(\SRL_SIG_reg[0][24]_0 [2]));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry__1_i_3
       (.I0(\SRL_SIG_reg[0]_0 [20]),
        .I1(\SRL_SIG_reg[1]_1 [20]),
        .I2(\SRL_SIG_reg[0]_0 [21]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [21]),
        .O(\SRL_SIG_reg[0][24]_0 [1]));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry__1_i_4
       (.I0(\SRL_SIG_reg[0]_0 [18]),
        .I1(\SRL_SIG_reg[1]_1 [18]),
        .I2(\SRL_SIG_reg[0]_0 [19]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [19]),
        .O(\SRL_SIG_reg[0][24]_0 [0]));
  LUT6 #(
    .INIT(64'h0000040400F304F7)) 
    cmp41_fu_237_p2_carry__1_i_5
       (.I0(\SRL_SIG_reg[1]_1 [25]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [25]),
        .I4(\SRL_SIG_reg[1]_1 [24]),
        .I5(\SRL_SIG_reg[0]_0 [24]),
        .O(\SRL_SIG_reg[1][25]_0 [3]));
  LUT6 #(
    .INIT(64'h0000040400F304F7)) 
    cmp41_fu_237_p2_carry__1_i_6
       (.I0(\SRL_SIG_reg[1]_1 [23]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [23]),
        .I4(\SRL_SIG_reg[1]_1 [22]),
        .I5(\SRL_SIG_reg[0]_0 [22]),
        .O(\SRL_SIG_reg[1][25]_0 [2]));
  LUT6 #(
    .INIT(64'h0000040400F304F7)) 
    cmp41_fu_237_p2_carry__1_i_7
       (.I0(\SRL_SIG_reg[1]_1 [21]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [21]),
        .I4(\SRL_SIG_reg[1]_1 [20]),
        .I5(\SRL_SIG_reg[0]_0 [20]),
        .O(\SRL_SIG_reg[1][25]_0 [1]));
  LUT6 #(
    .INIT(64'h0000040400F304F7)) 
    cmp41_fu_237_p2_carry__1_i_8
       (.I0(\SRL_SIG_reg[1]_1 [19]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [19]),
        .I4(\SRL_SIG_reg[1]_1 [18]),
        .I5(\SRL_SIG_reg[0]_0 [18]),
        .O(\SRL_SIG_reg[1][25]_0 [0]));
  LUT6 #(
    .INIT(64'h0A000A0A0ACC0A0A)) 
    cmp41_fu_237_p2_carry__2_i_1
       (.I0(\SRL_SIG_reg[0]_0 [30]),
        .I1(\SRL_SIG_reg[1]_1 [30]),
        .I2(\SRL_SIG_reg[0]_0 [31]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [31]),
        .O(\SRL_SIG_reg[0][30]_1 [2]));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry__2_i_2
       (.I0(\SRL_SIG_reg[0]_0 [28]),
        .I1(\SRL_SIG_reg[1]_1 [28]),
        .I2(\SRL_SIG_reg[0]_0 [29]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [29]),
        .O(\SRL_SIG_reg[0][30]_1 [1]));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry__2_i_3
       (.I0(\SRL_SIG_reg[0]_0 [26]),
        .I1(\SRL_SIG_reg[1]_1 [26]),
        .I2(\SRL_SIG_reg[0]_0 [27]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [27]),
        .O(\SRL_SIG_reg[0][30]_1 [0]));
  LUT6 #(
    .INIT(64'h0500050505330505)) 
    cmp41_fu_237_p2_carry__2_i_4
       (.I0(\SRL_SIG_reg[0]_0 [31]),
        .I1(\SRL_SIG_reg[1]_1 [31]),
        .I2(\SRL_SIG_reg[0]_0 [30]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [30]),
        .O(\SRL_SIG_reg[0][31]_0 [2]));
  LUT6 #(
    .INIT(64'h0000040400F304F7)) 
    cmp41_fu_237_p2_carry__2_i_5
       (.I0(\SRL_SIG_reg[1]_1 [29]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [29]),
        .I4(\SRL_SIG_reg[1]_1 [28]),
        .I5(\SRL_SIG_reg[0]_0 [28]),
        .O(\SRL_SIG_reg[0][31]_0 [1]));
  LUT6 #(
    .INIT(64'h0000040400F304F7)) 
    cmp41_fu_237_p2_carry__2_i_6
       (.I0(\SRL_SIG_reg[1]_1 [27]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [27]),
        .I4(\SRL_SIG_reg[1]_1 [26]),
        .I5(\SRL_SIG_reg[0]_0 [26]),
        .O(\SRL_SIG_reg[0][31]_0 [0]));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry_i_1
       (.I0(\SRL_SIG_reg[0]_0 [1]),
        .I1(\SRL_SIG_reg[1]_1 [1]),
        .I2(\SRL_SIG_reg[0]_0 [0]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [0]),
        .O(\SRL_SIG_reg[0][1]_0 ));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry_i_2
       (.I0(\SRL_SIG_reg[0]_0 [9]),
        .I1(\SRL_SIG_reg[1]_1 [9]),
        .I2(\SRL_SIG_reg[0]_0 [8]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [8]),
        .O(\SRL_SIG_reg[0][9]_0 [3]));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry_i_3
       (.I0(\SRL_SIG_reg[0]_0 [7]),
        .I1(\SRL_SIG_reg[1]_1 [7]),
        .I2(\SRL_SIG_reg[0]_0 [6]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [6]),
        .O(\SRL_SIG_reg[0][9]_0 [2]));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry_i_4
       (.I0(\SRL_SIG_reg[0]_0 [5]),
        .I1(\SRL_SIG_reg[1]_1 [5]),
        .I2(\SRL_SIG_reg[0]_0 [4]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [4]),
        .O(\SRL_SIG_reg[0][9]_0 [1]));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    cmp41_fu_237_p2_carry_i_5
       (.I0(\SRL_SIG_reg[0]_0 [3]),
        .I1(\SRL_SIG_reg[1]_1 [3]),
        .I2(\SRL_SIG_reg[0]_0 [2]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [2]),
        .O(\SRL_SIG_reg[0][9]_0 [0]));
  LUT6 #(
    .INIT(64'h0000040400F304F7)) 
    cmp41_fu_237_p2_carry_i_6
       (.I0(\SRL_SIG_reg[1]_1 [8]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [8]),
        .I4(\SRL_SIG_reg[1]_1 [9]),
        .I5(\SRL_SIG_reg[0]_0 [9]),
        .O(\SRL_SIG_reg[1][8]_0 [3]));
  LUT6 #(
    .INIT(64'h0000040400F304F7)) 
    cmp41_fu_237_p2_carry_i_7
       (.I0(\SRL_SIG_reg[1]_1 [6]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [6]),
        .I4(\SRL_SIG_reg[1]_1 [7]),
        .I5(\SRL_SIG_reg[0]_0 [7]),
        .O(\SRL_SIG_reg[1][8]_0 [2]));
  LUT6 #(
    .INIT(64'h0000040400F304F7)) 
    cmp41_fu_237_p2_carry_i_8
       (.I0(\SRL_SIG_reg[1]_1 [4]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [4]),
        .I4(\SRL_SIG_reg[1]_1 [5]),
        .I5(\SRL_SIG_reg[0]_0 [5]),
        .O(\SRL_SIG_reg[1][8]_0 [1]));
  LUT6 #(
    .INIT(64'h0000040400F304F7)) 
    cmp41_fu_237_p2_carry_i_9
       (.I0(\SRL_SIG_reg[1]_1 [2]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [2]),
        .I4(\SRL_SIG_reg[1]_1 [3]),
        .I5(\SRL_SIG_reg[0]_0 [3]),
        .O(\SRL_SIG_reg[1][8]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry__0_i_1
       (.I0(\SRL_SIG_reg[0]_0 [15]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [15]),
        .I3(icmp_ln62_fu_197_p2_carry__2[15]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry__0_i_9_n_0),
        .O(\SRL_SIG_reg[0][15]_0 [3]));
  LUT6 #(
    .INIT(64'hD0DDD0D0D000D0D0)) 
    icmp_ln62_fu_197_p2_carry__0_i_10
       (.I0(icmp_ln62_fu_197_p2_carry__2[12]),
        .I1(ap_loop_init),
        .I2(\SRL_SIG_reg[0]_0 [12]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [12]),
        .O(icmp_ln62_fu_197_p2_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hD0DDD0D0D000D0D0)) 
    icmp_ln62_fu_197_p2_carry__0_i_11
       (.I0(icmp_ln62_fu_197_p2_carry__2[10]),
        .I1(ap_loop_init),
        .I2(\SRL_SIG_reg[0]_0 [10]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [10]),
        .O(icmp_ln62_fu_197_p2_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hD0DDD0D0D000D0D0)) 
    icmp_ln62_fu_197_p2_carry__0_i_12
       (.I0(icmp_ln62_fu_197_p2_carry__2[8]),
        .I1(ap_loop_init),
        .I2(\SRL_SIG_reg[0]_0 [8]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [8]),
        .O(icmp_ln62_fu_197_p2_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry__0_i_13
       (.I0(\SRL_SIG_reg[0]_0 [15]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [15]),
        .I4(icmp_ln62_fu_197_p2_carry__2[15]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry__0_i_14
       (.I0(\SRL_SIG_reg[0]_0 [13]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [13]),
        .I4(icmp_ln62_fu_197_p2_carry__2[13]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry__0_i_15
       (.I0(\SRL_SIG_reg[0]_0 [11]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [11]),
        .I4(icmp_ln62_fu_197_p2_carry__2[11]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry__0_i_16
       (.I0(\SRL_SIG_reg[0]_0 [9]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [9]),
        .I4(icmp_ln62_fu_197_p2_carry__2[9]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__0_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry__0_i_2
       (.I0(\SRL_SIG_reg[0]_0 [13]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [13]),
        .I3(icmp_ln62_fu_197_p2_carry__2[13]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry__0_i_10_n_0),
        .O(\SRL_SIG_reg[0][15]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry__0_i_3
       (.I0(\SRL_SIG_reg[0]_0 [11]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [11]),
        .I3(icmp_ln62_fu_197_p2_carry__2[11]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry__0_i_11_n_0),
        .O(\SRL_SIG_reg[0][15]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry__0_i_4
       (.I0(\SRL_SIG_reg[0]_0 [9]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [9]),
        .I3(icmp_ln62_fu_197_p2_carry__2[9]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry__0_i_12_n_0),
        .O(\SRL_SIG_reg[0][15]_0 [0]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry__0_i_5
       (.I0(icmp_ln62_fu_197_p2_carry__0_i_13_n_0),
        .I1(\SRL_SIG_reg[0]_0 [14]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [14]),
        .I4(icmp_ln62_fu_197_p2_carry__2[14]),
        .I5(ap_loop_init),
        .O(\SRL_SIG_reg[0][14]_0 [3]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry__0_i_6
       (.I0(icmp_ln62_fu_197_p2_carry__0_i_14_n_0),
        .I1(\SRL_SIG_reg[0]_0 [12]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [12]),
        .I4(icmp_ln62_fu_197_p2_carry__2[12]),
        .I5(ap_loop_init),
        .O(\SRL_SIG_reg[0][14]_0 [2]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry__0_i_7
       (.I0(icmp_ln62_fu_197_p2_carry__0_i_15_n_0),
        .I1(\SRL_SIG_reg[0]_0 [10]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [10]),
        .I4(icmp_ln62_fu_197_p2_carry__2[10]),
        .I5(ap_loop_init),
        .O(\SRL_SIG_reg[0][14]_0 [1]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry__0_i_8
       (.I0(icmp_ln62_fu_197_p2_carry__0_i_16_n_0),
        .I1(\SRL_SIG_reg[0]_0 [8]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [8]),
        .I4(icmp_ln62_fu_197_p2_carry__2[8]),
        .I5(ap_loop_init),
        .O(\SRL_SIG_reg[0][14]_0 [0]));
  LUT6 #(
    .INIT(64'hD0DDD0D0D000D0D0)) 
    icmp_ln62_fu_197_p2_carry__0_i_9
       (.I0(icmp_ln62_fu_197_p2_carry__2[14]),
        .I1(ap_loop_init),
        .I2(\SRL_SIG_reg[0]_0 [14]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [14]),
        .O(icmp_ln62_fu_197_p2_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry__1_i_1
       (.I0(\SRL_SIG_reg[0]_0 [23]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [23]),
        .I3(icmp_ln62_fu_197_p2_carry__2[23]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry__1_i_9_n_0),
        .O(\SRL_SIG_reg[0][23]_0 [3]));
  LUT6 #(
    .INIT(64'hBA8ABA8A0000BA8A)) 
    icmp_ln62_fu_197_p2_carry__1_i_10
       (.I0(\SRL_SIG_reg[0]_0 [20]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [20]),
        .I4(icmp_ln62_fu_197_p2_carry__2[20]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'hBA8ABA8A0000BA8A)) 
    icmp_ln62_fu_197_p2_carry__1_i_11
       (.I0(\SRL_SIG_reg[0]_0 [18]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [18]),
        .I4(icmp_ln62_fu_197_p2_carry__2[18]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'hBA8ABA8A0000BA8A)) 
    icmp_ln62_fu_197_p2_carry__1_i_12
       (.I0(\SRL_SIG_reg[0]_0 [16]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [16]),
        .I4(icmp_ln62_fu_197_p2_carry__2[16]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry__1_i_13
       (.I0(\SRL_SIG_reg[0]_0 [23]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [23]),
        .I4(icmp_ln62_fu_197_p2_carry__2[23]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry__1_i_14
       (.I0(\SRL_SIG_reg[0]_0 [21]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [21]),
        .I4(icmp_ln62_fu_197_p2_carry__2[21]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry__1_i_15
       (.I0(\SRL_SIG_reg[0]_0 [19]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [19]),
        .I4(icmp_ln62_fu_197_p2_carry__2[19]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__1_i_15_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry__1_i_16
       (.I0(\SRL_SIG_reg[0]_0 [17]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [17]),
        .I4(icmp_ln62_fu_197_p2_carry__2[17]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__1_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry__1_i_2
       (.I0(\SRL_SIG_reg[0]_0 [21]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [21]),
        .I3(icmp_ln62_fu_197_p2_carry__2[21]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry__1_i_10_n_0),
        .O(\SRL_SIG_reg[0][23]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry__1_i_3
       (.I0(\SRL_SIG_reg[0]_0 [19]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [19]),
        .I3(icmp_ln62_fu_197_p2_carry__2[19]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry__1_i_11_n_0),
        .O(\SRL_SIG_reg[0][23]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry__1_i_4
       (.I0(\SRL_SIG_reg[0]_0 [17]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [17]),
        .I3(icmp_ln62_fu_197_p2_carry__2[17]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry__1_i_12_n_0),
        .O(\SRL_SIG_reg[0][23]_0 [0]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry__1_i_5
       (.I0(icmp_ln62_fu_197_p2_carry__1_i_13_n_0),
        .I1(\SRL_SIG_reg[0]_0 [22]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [22]),
        .I4(icmp_ln62_fu_197_p2_carry__2[22]),
        .I5(ap_loop_init),
        .O(\SRL_SIG_reg[0][22]_0 [3]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry__1_i_6
       (.I0(icmp_ln62_fu_197_p2_carry__1_i_14_n_0),
        .I1(\SRL_SIG_reg[0]_0 [20]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [20]),
        .I4(icmp_ln62_fu_197_p2_carry__2[20]),
        .I5(ap_loop_init),
        .O(\SRL_SIG_reg[0][22]_0 [2]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry__1_i_7
       (.I0(icmp_ln62_fu_197_p2_carry__1_i_15_n_0),
        .I1(\SRL_SIG_reg[0]_0 [18]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [18]),
        .I4(icmp_ln62_fu_197_p2_carry__2[18]),
        .I5(ap_loop_init),
        .O(\SRL_SIG_reg[0][22]_0 [1]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry__1_i_8
       (.I0(icmp_ln62_fu_197_p2_carry__1_i_16_n_0),
        .I1(\SRL_SIG_reg[0]_0 [16]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [16]),
        .I4(icmp_ln62_fu_197_p2_carry__2[16]),
        .I5(ap_loop_init),
        .O(\SRL_SIG_reg[0][22]_0 [0]));
  LUT6 #(
    .INIT(64'hBA8ABA8A0000BA8A)) 
    icmp_ln62_fu_197_p2_carry__1_i_9
       (.I0(\SRL_SIG_reg[0]_0 [22]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [22]),
        .I4(icmp_ln62_fu_197_p2_carry__2[22]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__1_i_9_n_0));
  LUT6 #(
    .INIT(64'hB0BBB00000000000)) 
    icmp_ln62_fu_197_p2_carry__2_i_1
       (.I0(ap_loop_init),
        .I1(icmp_ln62_fu_197_p2_carry__2[30]),
        .I2(\SRL_SIG_reg[1]_1 [30]),
        .I3(icmp_ln62_fu_197_p2_carry),
        .I4(\SRL_SIG_reg[0]_0 [30]),
        .I5(icmp_ln62_fu_197_p2_carry__2_i_9_n_0),
        .O(\j_fu_78_reg[30] [3]));
  LUT6 #(
    .INIT(64'hBA8ABA8A0000BA8A)) 
    icmp_ln62_fu_197_p2_carry__2_i_10
       (.I0(\SRL_SIG_reg[0]_0 [28]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [28]),
        .I4(icmp_ln62_fu_197_p2_carry__2[28]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'hBA8ABA8A0000BA8A)) 
    icmp_ln62_fu_197_p2_carry__2_i_11
       (.I0(\SRL_SIG_reg[0]_0 [26]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [26]),
        .I4(icmp_ln62_fu_197_p2_carry__2[26]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__2_i_11_n_0));
  LUT6 #(
    .INIT(64'hBA8ABA8A0000BA8A)) 
    icmp_ln62_fu_197_p2_carry__2_i_12
       (.I0(\SRL_SIG_reg[0]_0 [24]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [24]),
        .I4(icmp_ln62_fu_197_p2_carry__2[24]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__2_i_12_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry__2_i_13
       (.I0(\SRL_SIG_reg[0]_0 [29]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [29]),
        .I4(icmp_ln62_fu_197_p2_carry__2[29]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__2_i_13_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry__2_i_14
       (.I0(\SRL_SIG_reg[0]_0 [27]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [27]),
        .I4(icmp_ln62_fu_197_p2_carry__2[27]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__2_i_14_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry__2_i_15
       (.I0(\SRL_SIG_reg[0]_0 [25]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [25]),
        .I4(icmp_ln62_fu_197_p2_carry__2[25]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry__2_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry__2_i_2
       (.I0(\SRL_SIG_reg[0]_0 [29]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [29]),
        .I3(icmp_ln62_fu_197_p2_carry__2[29]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry__2_i_10_n_0),
        .O(\j_fu_78_reg[30] [2]));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry__2_i_3
       (.I0(\SRL_SIG_reg[0]_0 [27]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [27]),
        .I3(icmp_ln62_fu_197_p2_carry__2[27]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry__2_i_11_n_0),
        .O(\j_fu_78_reg[30] [1]));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry__2_i_4
       (.I0(\SRL_SIG_reg[0]_0 [25]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [25]),
        .I3(icmp_ln62_fu_197_p2_carry__2[25]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry__2_i_12_n_0),
        .O(\j_fu_78_reg[30] [0]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry__2_i_5
       (.I0(icmp_ln62_fu_197_p2_carry__2_i_9_n_0),
        .I1(\SRL_SIG_reg[0]_0 [30]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [30]),
        .I4(icmp_ln62_fu_197_p2_carry__2[30]),
        .I5(ap_loop_init),
        .O(\SRL_SIG_reg[0][30]_0 [3]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry__2_i_6
       (.I0(icmp_ln62_fu_197_p2_carry__2_i_13_n_0),
        .I1(\SRL_SIG_reg[0]_0 [28]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [28]),
        .I4(icmp_ln62_fu_197_p2_carry__2[28]),
        .I5(ap_loop_init),
        .O(\SRL_SIG_reg[0][30]_0 [2]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry__2_i_7
       (.I0(icmp_ln62_fu_197_p2_carry__2_i_14_n_0),
        .I1(\SRL_SIG_reg[0]_0 [26]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [26]),
        .I4(icmp_ln62_fu_197_p2_carry__2[26]),
        .I5(ap_loop_init),
        .O(\SRL_SIG_reg[0][30]_0 [1]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry__2_i_8
       (.I0(icmp_ln62_fu_197_p2_carry__2_i_15_n_0),
        .I1(\SRL_SIG_reg[0]_0 [24]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [24]),
        .I4(icmp_ln62_fu_197_p2_carry__2[24]),
        .I5(ap_loop_init),
        .O(\SRL_SIG_reg[0][30]_0 [0]));
  LUT4 #(
    .INIT(16'h04F7)) 
    icmp_ln62_fu_197_p2_carry__2_i_9
       (.I0(\SRL_SIG_reg[1]_1 [31]),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(\SRL_SIG_reg[0]_0 [31]),
        .O(icmp_ln62_fu_197_p2_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry_i_1
       (.I0(\SRL_SIG_reg[0]_0 [7]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [7]),
        .I3(icmp_ln62_fu_197_p2_carry__2[7]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry_i_11_n_0),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hD0DDD0D0D000D0D0)) 
    icmp_ln62_fu_197_p2_carry_i_11
       (.I0(icmp_ln62_fu_197_p2_carry__2[6]),
        .I1(ap_loop_init),
        .I2(\SRL_SIG_reg[0]_0 [6]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [6]),
        .O(icmp_ln62_fu_197_p2_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hD0DDD0D0D000D0D0)) 
    icmp_ln62_fu_197_p2_carry_i_12
       (.I0(icmp_ln62_fu_197_p2_carry__2[4]),
        .I1(ap_loop_init),
        .I2(\SRL_SIG_reg[0]_0 [4]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [4]),
        .O(icmp_ln62_fu_197_p2_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hD0DDD0D0D000D0D0)) 
    icmp_ln62_fu_197_p2_carry_i_13
       (.I0(icmp_ln62_fu_197_p2_carry__2[2]),
        .I1(ap_loop_init),
        .I2(\SRL_SIG_reg[0]_0 [2]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [2]),
        .O(icmp_ln62_fu_197_p2_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hD0DDD0D0D000D0D0)) 
    icmp_ln62_fu_197_p2_carry_i_14
       (.I0(icmp_ln62_fu_197_p2_carry__2[0]),
        .I1(ap_loop_init),
        .I2(\SRL_SIG_reg[0]_0 [0]),
        .I3(mOutPtr[1]),
        .I4(mOutPtr[0]),
        .I5(\SRL_SIG_reg[1]_1 [0]),
        .O(icmp_ln62_fu_197_p2_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry_i_15
       (.I0(\SRL_SIG_reg[0]_0 [7]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [7]),
        .I4(icmp_ln62_fu_197_p2_carry__2[7]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry_i_16
       (.I0(\SRL_SIG_reg[0]_0 [5]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [5]),
        .I4(icmp_ln62_fu_197_p2_carry__2[5]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry_i_17
       (.I0(\SRL_SIG_reg[0]_0 [3]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [3]),
        .I4(icmp_ln62_fu_197_p2_carry__2[3]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h45754575BA8A4575)) 
    icmp_ln62_fu_197_p2_carry_i_18
       (.I0(\SRL_SIG_reg[0]_0 [1]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(\SRL_SIG_reg[1]_1 [1]),
        .I4(icmp_ln62_fu_197_p2_carry__2[1]),
        .I5(ap_loop_init),
        .O(icmp_ln62_fu_197_p2_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry_i_2
       (.I0(\SRL_SIG_reg[0]_0 [5]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [5]),
        .I3(icmp_ln62_fu_197_p2_carry__2[5]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry_i_12_n_0),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry_i_3
       (.I0(\SRL_SIG_reg[0]_0 [3]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [3]),
        .I3(icmp_ln62_fu_197_p2_carry__2[3]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry_i_13_n_0),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hFFFFE2FFE2E200E2)) 
    icmp_ln62_fu_197_p2_carry_i_4
       (.I0(\SRL_SIG_reg[0]_0 [1]),
        .I1(icmp_ln62_fu_197_p2_carry),
        .I2(\SRL_SIG_reg[1]_1 [1]),
        .I3(icmp_ln62_fu_197_p2_carry__2[1]),
        .I4(ap_loop_init),
        .I5(icmp_ln62_fu_197_p2_carry_i_14_n_0),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry_i_5
       (.I0(icmp_ln62_fu_197_p2_carry_i_15_n_0),
        .I1(\SRL_SIG_reg[0]_0 [6]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [6]),
        .I4(icmp_ln62_fu_197_p2_carry__2[6]),
        .I5(ap_loop_init),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry_i_6
       (.I0(icmp_ln62_fu_197_p2_carry_i_16_n_0),
        .I1(\SRL_SIG_reg[0]_0 [4]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [4]),
        .I4(icmp_ln62_fu_197_p2_carry__2[4]),
        .I5(ap_loop_init),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    icmp_ln62_fu_197_p2_carry_i_7
       (.I0(icmp_ln62_fu_197_p2_carry_i_17_n_0),
        .I1(\SRL_SIG_reg[0]_0 [2]),
        .I2(icmp_ln62_fu_197_p2_carry),
        .I3(\SRL_SIG_reg[1]_1 [2]),
        .I4(icmp_ln62_fu_197_p2_carry__2[2]),
        .I5(ap_loop_init),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h080808A2A2A208A2)) 
    icmp_ln62_fu_197_p2_carry_i_8
       (.I0(icmp_ln62_fu_197_p2_carry_i_18_n_0),
        .I1(icmp_ln62_fu_197_p2_carry__2[0]),
        .I2(ap_loop_init),
        .I3(\SRL_SIG_reg[0]_0 [0]),
        .I4(icmp_ln62_fu_197_p2_carry),
        .I5(\SRL_SIG_reg[1]_1 [0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w32_d4_S" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d4_S
   (out_mat_cols_channel_empty_n,
    out_mat_cols_channel_full_n,
    ap_clk_0,
    out,
    ap_clk_1,
    ap_clk_2,
    ap_clk_3,
    ap_clk_4,
    ap_clk_5,
    ap_rst_n_inv,
    ap_clk,
    push,
    ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready,
    full_n_reg_0,
    mOutPtr16_out,
    in);
  output out_mat_cols_channel_empty_n;
  output out_mat_cols_channel_full_n;
  output [31:0]ap_clk_0;
  output [31:0]out;
  output [0:0]ap_clk_1;
  output [3:0]ap_clk_2;
  output [3:0]ap_clk_3;
  output [3:0]ap_clk_4;
  output [3:0]ap_clk_5;
  input ap_rst_n_inv;
  input ap_clk;
  input push;
  input ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready;
  input full_n_reg_0;
  input mOutPtr16_out;
  input [31:0]in;

  wire ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready;
  wire ap_clk;
  wire [31:0]ap_clk_0;
  wire [0:0]ap_clk_1;
  wire [3:0]ap_clk_2;
  wire [3:0]ap_clk_3;
  wire [3:0]ap_clk_4;
  wire [3:0]ap_clk_5;
  wire ap_rst_n_inv;
  wire empty_n_i_1__6_n_0;
  wire full_n_i_1__6_n_0;
  wire full_n_reg_0;
  wire [31:0]in;
  wire mOutPtr16_out;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr[2]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire \mOutPtr_reg_n_0_[2] ;
  wire [31:0]out;
  wire out_mat_cols_channel_empty_n;
  wire out_mat_cols_channel_full_n;
  wire push;

  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg_10 U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg
       (.\SRL_SIG_reg[3][31]_srl4_0 (\mOutPtr_reg_n_0_[1] ),
        .\SRL_SIG_reg[3][31]_srl4_1 (\mOutPtr_reg_n_0_[2] ),
        .\SRL_SIG_reg[3][31]_srl4_2 (\mOutPtr_reg_n_0_[0] ),
        .ap_clk(ap_clk),
        .ap_clk_0(ap_clk_0),
        .ap_clk_1(ap_clk_1),
        .ap_clk_2(ap_clk_2),
        .ap_clk_3(ap_clk_3),
        .ap_clk_4(ap_clk_4),
        .ap_clk_5(ap_clk_5),
        .in(in),
        .out(out),
        .push(push));
  LUT6 #(
    .INIT(64'hFFFEFFFFFF00FF00)) 
    empty_n_i_1__6
       (.I0(\mOutPtr_reg_n_0_[2] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(push),
        .I4(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .I5(out_mat_cols_channel_empty_n),
        .O(empty_n_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__6_n_0),
        .Q(out_mat_cols_channel_empty_n),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFCFFFFFAA8AAAAA)) 
    full_n_i_1__6
       (.I0(full_n_reg_0),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(mOutPtr16_out),
        .I3(\mOutPtr_reg_n_0_[2] ),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .I5(out_mat_cols_channel_full_n),
        .O(full_n_i_1__6_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__6_n_0),
        .Q(out_mat_cols_channel_full_n),
        .S(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h8778)) 
    \mOutPtr[0]_i_1 
       (.I0(out_mat_cols_channel_empty_n),
        .I1(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .I2(push),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE7771888)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(push),
        .I2(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .I3(out_mat_cols_channel_empty_n),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE7F7F7F01808080)) 
    \mOutPtr[2]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(push),
        .I3(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .I4(out_mat_cols_channel_empty_n),
        .I5(\mOutPtr_reg_n_0_[2] ),
        .O(\mOutPtr[2]_i_1_n_0 ));
  FDSE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[2]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[2] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w32_d4_S" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d4_S_3
   (out_mat_rows_channel_empty_n,
    out_mat_rows_channel_full_n,
    DI,
    out,
    S,
    \i_fu_62_reg[14] ,
    \i_fu_62_reg[22] ,
    \i_fu_62_reg[30] ,
    \i_fu_62_reg[30]_0 ,
    ap_rst_n_inv,
    ap_clk,
    icmp_ln116_1_fu_138_p2_carry__2,
    push,
    ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready,
    full_n_reg_0,
    mOutPtr16_out,
    in);
  output out_mat_rows_channel_empty_n;
  output out_mat_rows_channel_full_n;
  output [3:0]DI;
  output [27:0]out;
  output [0:0]S;
  output [3:0]\i_fu_62_reg[14] ;
  output [3:0]\i_fu_62_reg[22] ;
  output [0:0]\i_fu_62_reg[30] ;
  output [3:0]\i_fu_62_reg[30]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input [30:0]icmp_ln116_1_fu_138_p2_carry__2;
  input push;
  input ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready;
  input full_n_reg_0;
  input mOutPtr16_out;
  input [31:0]in;

  wire ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready;
  wire [3:0]DI;
  wire [0:0]S;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire empty_n_i_1__5_n_0;
  wire full_n_i_1__5_n_0;
  wire full_n_reg_0;
  wire [3:0]\i_fu_62_reg[14] ;
  wire [3:0]\i_fu_62_reg[22] ;
  wire [0:0]\i_fu_62_reg[30] ;
  wire [3:0]\i_fu_62_reg[30]_0 ;
  wire [30:0]icmp_ln116_1_fu_138_p2_carry__2;
  wire [31:0]in;
  wire [2:0]mOutPtr;
  wire mOutPtr16_out;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr[2]_i_1_n_0 ;
  wire [27:0]out;
  wire out_mat_rows_channel_empty_n;
  wire out_mat_rows_channel_full_n;
  wire push;

  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg
       (.DI(DI),
        .S(S),
        .ap_clk(ap_clk),
        .\i_fu_62_reg[14] (\i_fu_62_reg[14] ),
        .\i_fu_62_reg[22] (\i_fu_62_reg[22] ),
        .\i_fu_62_reg[30] (\i_fu_62_reg[30] ),
        .\i_fu_62_reg[30]_0 (\i_fu_62_reg[30]_0 ),
        .icmp_ln116_1_fu_138_p2_carry__2(icmp_ln116_1_fu_138_p2_carry__2),
        .in(in),
        .mOutPtr(mOutPtr),
        .out(out),
        .push(push));
  LUT6 #(
    .INIT(64'hFFFEFFFFFF00FF00)) 
    empty_n_i_1__5
       (.I0(mOutPtr[2]),
        .I1(mOutPtr[1]),
        .I2(mOutPtr[0]),
        .I3(push),
        .I4(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .I5(out_mat_rows_channel_empty_n),
        .O(empty_n_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__5_n_0),
        .Q(out_mat_rows_channel_empty_n),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFCFFFFFAA8AAAAA)) 
    full_n_i_1__5
       (.I0(full_n_reg_0),
        .I1(mOutPtr[0]),
        .I2(mOutPtr16_out),
        .I3(mOutPtr[2]),
        .I4(mOutPtr[1]),
        .I5(out_mat_rows_channel_full_n),
        .O(full_n_i_1__5_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__5_n_0),
        .Q(out_mat_rows_channel_full_n),
        .S(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h8778)) 
    \mOutPtr[0]_i_1 
       (.I0(out_mat_rows_channel_empty_n),
        .I1(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .I2(push),
        .I3(mOutPtr[0]),
        .O(\mOutPtr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE7771888)) 
    \mOutPtr[1]_i_1 
       (.I0(mOutPtr[0]),
        .I1(push),
        .I2(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .I3(out_mat_rows_channel_empty_n),
        .I4(mOutPtr[1]),
        .O(\mOutPtr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE7F7F7F01808080)) 
    \mOutPtr[2]_i_1 
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(push),
        .I3(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .I4(out_mat_rows_channel_empty_n),
        .I5(mOutPtr[2]),
        .O(\mOutPtr[2]_i_1_n_0 ));
  FDSE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(mOutPtr[0]),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(mOutPtr[1]),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[2]_i_1_n_0 ),
        .Q(mOutPtr[2]),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w32_d4_S_ShiftReg" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg
   (DI,
    out,
    S,
    \i_fu_62_reg[14] ,
    \i_fu_62_reg[22] ,
    \i_fu_62_reg[30] ,
    \i_fu_62_reg[30]_0 ,
    icmp_ln116_1_fu_138_p2_carry__2,
    mOutPtr,
    push,
    in,
    ap_clk);
  output [3:0]DI;
  output [27:0]out;
  output [0:0]S;
  output [3:0]\i_fu_62_reg[14] ;
  output [3:0]\i_fu_62_reg[22] ;
  output [0:0]\i_fu_62_reg[30] ;
  output [3:0]\i_fu_62_reg[30]_0 ;
  input [30:0]icmp_ln116_1_fu_138_p2_carry__2;
  input [2:0]mOutPtr;
  input push;
  input [31:0]in;
  input ap_clk;

  wire [3:0]DI;
  wire [0:0]S;
  wire [1:0]addr;
  wire ap_clk;
  wire [3:0]\i_fu_62_reg[14] ;
  wire [3:0]\i_fu_62_reg[22] ;
  wire [0:0]\i_fu_62_reg[30] ;
  wire [3:0]\i_fu_62_reg[30]_0 ;
  wire [30:0]icmp_ln116_1_fu_138_p2_carry__2;
  wire [31:0]in;
  wire [2:0]mOutPtr;
  wire [27:0]out;
  wire [31:0]out_mat_rows_channel_dout;
  wire push;

  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][0]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[0]),
        .Q(out_mat_rows_channel_dout[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[3][0]_srl4_i_3 
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[2]),
        .O(addr[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[3][0]_srl4_i_4 
       (.I0(mOutPtr[1]),
        .I1(mOutPtr[2]),
        .O(addr[1]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][10]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][10]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[10]),
        .Q(out[8]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][11]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[11]),
        .Q(out[9]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][12]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[12]),
        .Q(out[10]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][13]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][13]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[13]),
        .Q(out[11]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][14]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[14]),
        .Q(out[12]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][15]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][15]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[15]),
        .Q(out[13]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][16]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][16]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[16]),
        .Q(out[14]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][17]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][17]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[17]),
        .Q(out[15]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][18]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[18]),
        .Q(out[16]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][19]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[19]),
        .Q(out[17]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][1]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[1]),
        .Q(out_mat_rows_channel_dout[1]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][20]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[20]),
        .Q(out[18]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][21]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[21]),
        .Q(out[19]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][22]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[22]),
        .Q(out[20]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][23]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[23]),
        .Q(out[21]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][24]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[24]),
        .Q(out[22]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][25]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[25]),
        .Q(out[23]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][26]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[26]),
        .Q(out[24]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][27]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[27]),
        .Q(out[25]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][28]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[28]),
        .Q(out[26]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][29]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[29]),
        .Q(out[27]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][2]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[2]),
        .Q(out[0]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][30]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[30]),
        .Q(out_mat_rows_channel_dout[30]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][31]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][31]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[31]),
        .Q(out_mat_rows_channel_dout[31]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][3]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[3]),
        .Q(out[1]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][4]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[4]),
        .Q(out[2]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][5]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[5]),
        .Q(out[3]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][6]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[6]),
        .Q(out[4]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][7]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[7]),
        .Q(out[5]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][8]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[8]),
        .Q(out[6]));
  (* srl_bus_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_rows_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][9]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[9]),
        .Q(out[7]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry__0_i_1
       (.I0(out[12]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[14]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[15]),
        .I3(out[13]),
        .O(\i_fu_62_reg[14] [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry__0_i_2
       (.I0(out[10]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[12]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[13]),
        .I3(out[11]),
        .O(\i_fu_62_reg[14] [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry__0_i_3
       (.I0(out[8]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[10]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[11]),
        .I3(out[9]),
        .O(\i_fu_62_reg[14] [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry__0_i_4
       (.I0(out[6]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[8]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[9]),
        .I3(out[7]),
        .O(\i_fu_62_reg[14] [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry__1_i_1
       (.I0(out[20]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[22]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[23]),
        .I3(out[21]),
        .O(\i_fu_62_reg[22] [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry__1_i_2
       (.I0(out[18]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[20]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[21]),
        .I3(out[19]),
        .O(\i_fu_62_reg[22] [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry__1_i_3
       (.I0(out[16]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[18]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[19]),
        .I3(out[17]),
        .O(\i_fu_62_reg[22] [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry__1_i_4
       (.I0(out[14]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[16]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[17]),
        .I3(out[15]),
        .O(\i_fu_62_reg[22] [0]));
  LUT3 #(
    .INIT(8'h10)) 
    icmp_ln116_1_fu_138_p2_carry__2_i_1
       (.I0(icmp_ln116_1_fu_138_p2_carry__2[30]),
        .I1(out_mat_rows_channel_dout[31]),
        .I2(out_mat_rows_channel_dout[30]),
        .O(\i_fu_62_reg[30]_0 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry__2_i_2
       (.I0(out[26]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[28]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[29]),
        .I3(out[27]),
        .O(\i_fu_62_reg[30]_0 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry__2_i_3
       (.I0(out[24]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[26]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[27]),
        .I3(out[25]),
        .O(\i_fu_62_reg[30]_0 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry__2_i_4
       (.I0(out[22]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[24]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[25]),
        .I3(out[23]),
        .O(\i_fu_62_reg[30]_0 [0]));
  LUT3 #(
    .INIT(8'h21)) 
    icmp_ln116_1_fu_138_p2_carry__2_i_5
       (.I0(out_mat_rows_channel_dout[30]),
        .I1(out_mat_rows_channel_dout[31]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[30]),
        .O(\i_fu_62_reg[30] ));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry_i_1
       (.I0(out[4]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[6]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[7]),
        .I3(out[5]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry_i_2
       (.I0(out[2]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[4]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[5]),
        .I3(out[3]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry_i_3
       (.I0(out[0]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[2]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[3]),
        .I3(out[1]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln116_1_fu_138_p2_carry_i_4
       (.I0(out_mat_rows_channel_dout[0]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[0]),
        .I2(icmp_ln116_1_fu_138_p2_carry__2[1]),
        .I3(out_mat_rows_channel_dout[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln116_1_fu_138_p2_carry_i_8
       (.I0(out_mat_rows_channel_dout[0]),
        .I1(icmp_ln116_1_fu_138_p2_carry__2[0]),
        .I2(out_mat_rows_channel_dout[1]),
        .I3(icmp_ln116_1_fu_138_p2_carry__2[1]),
        .O(S));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_fifo_w32_d4_S_ShiftReg" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg_10
   (ap_clk_0,
    out,
    ap_clk_1,
    ap_clk_2,
    ap_clk_3,
    ap_clk_4,
    ap_clk_5,
    \SRL_SIG_reg[3][31]_srl4_0 ,
    \SRL_SIG_reg[3][31]_srl4_1 ,
    \SRL_SIG_reg[3][31]_srl4_2 ,
    push,
    in,
    ap_clk);
  output [31:0]ap_clk_0;
  output [31:0]out;
  output [0:0]ap_clk_1;
  output [3:0]ap_clk_2;
  output [3:0]ap_clk_3;
  output [3:0]ap_clk_4;
  output [3:0]ap_clk_5;
  input \SRL_SIG_reg[3][31]_srl4_0 ;
  input \SRL_SIG_reg[3][31]_srl4_1 ;
  input \SRL_SIG_reg[3][31]_srl4_2 ;
  input push;
  input [31:0]in;
  input ap_clk;

  wire \SRL_SIG_reg[3][31]_srl4_0 ;
  wire \SRL_SIG_reg[3][31]_srl4_1 ;
  wire \SRL_SIG_reg[3][31]_srl4_2 ;
  wire [1:0]addr;
  wire ap_clk;
  wire [31:0]ap_clk_0;
  wire [0:0]ap_clk_1;
  wire [3:0]ap_clk_2;
  wire [3:0]ap_clk_3;
  wire [3:0]ap_clk_4;
  wire [3:0]ap_clk_5;
  wire [31:0]in;
  wire [31:0]out;
  wire push;
  wire \sub_reg_176[12]_i_2_n_0 ;
  wire \sub_reg_176[12]_i_3_n_0 ;
  wire \sub_reg_176[12]_i_4_n_0 ;
  wire \sub_reg_176[12]_i_5_n_0 ;
  wire \sub_reg_176[16]_i_2_n_0 ;
  wire \sub_reg_176[16]_i_3_n_0 ;
  wire \sub_reg_176[16]_i_4_n_0 ;
  wire \sub_reg_176[16]_i_5_n_0 ;
  wire \sub_reg_176[20]_i_2_n_0 ;
  wire \sub_reg_176[20]_i_3_n_0 ;
  wire \sub_reg_176[20]_i_4_n_0 ;
  wire \sub_reg_176[20]_i_5_n_0 ;
  wire \sub_reg_176[24]_i_2_n_0 ;
  wire \sub_reg_176[24]_i_3_n_0 ;
  wire \sub_reg_176[24]_i_4_n_0 ;
  wire \sub_reg_176[24]_i_5_n_0 ;
  wire \sub_reg_176[28]_i_2_n_0 ;
  wire \sub_reg_176[28]_i_3_n_0 ;
  wire \sub_reg_176[28]_i_4_n_0 ;
  wire \sub_reg_176[28]_i_5_n_0 ;
  wire \sub_reg_176[31]_i_3_n_0 ;
  wire \sub_reg_176[31]_i_4_n_0 ;
  wire \sub_reg_176[31]_i_5_n_0 ;
  wire \sub_reg_176[4]_i_2_n_0 ;
  wire \sub_reg_176[4]_i_3_n_0 ;
  wire \sub_reg_176[4]_i_4_n_0 ;
  wire \sub_reg_176[4]_i_5_n_0 ;
  wire \sub_reg_176[8]_i_2_n_0 ;
  wire \sub_reg_176[8]_i_3_n_0 ;
  wire \sub_reg_176[8]_i_4_n_0 ;
  wire \sub_reg_176[8]_i_5_n_0 ;
  wire \sub_reg_176_reg[12]_i_1_n_0 ;
  wire \sub_reg_176_reg[12]_i_1_n_1 ;
  wire \sub_reg_176_reg[12]_i_1_n_2 ;
  wire \sub_reg_176_reg[12]_i_1_n_3 ;
  wire \sub_reg_176_reg[16]_i_1_n_0 ;
  wire \sub_reg_176_reg[16]_i_1_n_1 ;
  wire \sub_reg_176_reg[16]_i_1_n_2 ;
  wire \sub_reg_176_reg[16]_i_1_n_3 ;
  wire \sub_reg_176_reg[20]_i_1_n_0 ;
  wire \sub_reg_176_reg[20]_i_1_n_1 ;
  wire \sub_reg_176_reg[20]_i_1_n_2 ;
  wire \sub_reg_176_reg[20]_i_1_n_3 ;
  wire \sub_reg_176_reg[24]_i_1_n_0 ;
  wire \sub_reg_176_reg[24]_i_1_n_1 ;
  wire \sub_reg_176_reg[24]_i_1_n_2 ;
  wire \sub_reg_176_reg[24]_i_1_n_3 ;
  wire \sub_reg_176_reg[28]_i_1_n_0 ;
  wire \sub_reg_176_reg[28]_i_1_n_1 ;
  wire \sub_reg_176_reg[28]_i_1_n_2 ;
  wire \sub_reg_176_reg[28]_i_1_n_3 ;
  wire \sub_reg_176_reg[31]_i_2_n_2 ;
  wire \sub_reg_176_reg[31]_i_2_n_3 ;
  wire \sub_reg_176_reg[4]_i_1_n_0 ;
  wire \sub_reg_176_reg[4]_i_1_n_1 ;
  wire \sub_reg_176_reg[4]_i_1_n_2 ;
  wire \sub_reg_176_reg[4]_i_1_n_3 ;
  wire \sub_reg_176_reg[8]_i_1_n_0 ;
  wire \sub_reg_176_reg[8]_i_1_n_1 ;
  wire \sub_reg_176_reg[8]_i_1_n_2 ;
  wire \sub_reg_176_reg[8]_i_1_n_3 ;
  wire [3:2]\NLW_sub_reg_176_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_sub_reg_176_reg[31]_i_2_O_UNCONNECTED ;

  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][0]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[0]),
        .Q(out[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[3][0]_srl4_i_3__0 
       (.I0(\SRL_SIG_reg[3][31]_srl4_2 ),
        .I1(\SRL_SIG_reg[3][31]_srl4_1 ),
        .O(addr[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[3][0]_srl4_i_4__0 
       (.I0(\SRL_SIG_reg[3][31]_srl4_0 ),
        .I1(\SRL_SIG_reg[3][31]_srl4_1 ),
        .O(addr[1]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][10]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][10]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][11]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][12]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][13]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][13]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][14]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][15]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][15]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][16]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][16]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[16]),
        .Q(out[16]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][17]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][17]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[17]),
        .Q(out[17]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][18]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[18]),
        .Q(out[18]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][19]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[19]),
        .Q(out[19]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][1]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][20]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[20]),
        .Q(out[20]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][21]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[21]),
        .Q(out[21]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][22]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[22]),
        .Q(out[22]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][23]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[23]),
        .Q(out[23]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][24]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[24]),
        .Q(out[24]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][25]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[25]),
        .Q(out[25]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][26]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[26]),
        .Q(out[26]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][27]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[27]),
        .Q(out[27]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][28]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[28]),
        .Q(out[28]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][29]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[29]),
        .Q(out[29]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][2]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][30]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[30]),
        .Q(out[30]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][31]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][31]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[31]),
        .Q(out[31]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][3]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][4]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][5]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][6]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][7]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][8]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3] " *) 
  (* srl_name = "inst/\\out_mat_cols_channel_U/U_quantizationdithering_accel_fifo_w32_d4_S_ShiftReg/SRL_SIG_reg[3][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[3][9]_srl4 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[9]),
        .Q(out[9]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry__0_i_1
       (.I0(out[15]),
        .I1(out[14]),
        .O(ap_clk_3[3]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry__0_i_2
       (.I0(out[13]),
        .I1(out[12]),
        .O(ap_clk_3[2]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry__0_i_3
       (.I0(out[11]),
        .I1(out[10]),
        .O(ap_clk_3[1]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry__0_i_4
       (.I0(out[9]),
        .I1(out[8]),
        .O(ap_clk_3[0]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry__1_i_1
       (.I0(out[23]),
        .I1(out[22]),
        .O(ap_clk_4[3]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry__1_i_2
       (.I0(out[21]),
        .I1(out[20]),
        .O(ap_clk_4[2]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry__1_i_3
       (.I0(out[19]),
        .I1(out[18]),
        .O(ap_clk_4[1]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry__1_i_4
       (.I0(out[17]),
        .I1(out[16]),
        .O(ap_clk_4[0]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry__2_i_1
       (.I0(out[31]),
        .I1(out[30]),
        .O(ap_clk_5[3]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry__2_i_2
       (.I0(out[29]),
        .I1(out[28]),
        .O(ap_clk_5[2]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry__2_i_3
       (.I0(out[27]),
        .I1(out[26]),
        .O(ap_clk_5[1]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry__2_i_4
       (.I0(out[25]),
        .I1(out[24]),
        .O(ap_clk_5[0]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry_i_1
       (.I0(out[1]),
        .I1(out[0]),
        .O(ap_clk_1));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry_i_2
       (.I0(out[7]),
        .I1(out[6]),
        .O(ap_clk_2[3]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry_i_3
       (.I0(out[5]),
        .I1(out[4]),
        .O(ap_clk_2[2]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln116_fu_120_p2_carry_i_4
       (.I0(out[3]),
        .I1(out[2]),
        .O(ap_clk_2[1]));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln116_fu_120_p2_carry_i_5
       (.I0(out[0]),
        .I1(out[1]),
        .O(ap_clk_2[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[0]_i_1 
       (.I0(out[0]),
        .O(ap_clk_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[12]_i_2 
       (.I0(out[12]),
        .O(\sub_reg_176[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[12]_i_3 
       (.I0(out[11]),
        .O(\sub_reg_176[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[12]_i_4 
       (.I0(out[10]),
        .O(\sub_reg_176[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[12]_i_5 
       (.I0(out[9]),
        .O(\sub_reg_176[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[16]_i_2 
       (.I0(out[16]),
        .O(\sub_reg_176[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[16]_i_3 
       (.I0(out[15]),
        .O(\sub_reg_176[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[16]_i_4 
       (.I0(out[14]),
        .O(\sub_reg_176[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[16]_i_5 
       (.I0(out[13]),
        .O(\sub_reg_176[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[20]_i_2 
       (.I0(out[20]),
        .O(\sub_reg_176[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[20]_i_3 
       (.I0(out[19]),
        .O(\sub_reg_176[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[20]_i_4 
       (.I0(out[18]),
        .O(\sub_reg_176[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[20]_i_5 
       (.I0(out[17]),
        .O(\sub_reg_176[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[24]_i_2 
       (.I0(out[24]),
        .O(\sub_reg_176[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[24]_i_3 
       (.I0(out[23]),
        .O(\sub_reg_176[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[24]_i_4 
       (.I0(out[22]),
        .O(\sub_reg_176[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[24]_i_5 
       (.I0(out[21]),
        .O(\sub_reg_176[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[28]_i_2 
       (.I0(out[28]),
        .O(\sub_reg_176[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[28]_i_3 
       (.I0(out[27]),
        .O(\sub_reg_176[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[28]_i_4 
       (.I0(out[26]),
        .O(\sub_reg_176[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[28]_i_5 
       (.I0(out[25]),
        .O(\sub_reg_176[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[31]_i_3 
       (.I0(out[31]),
        .O(\sub_reg_176[31]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[31]_i_4 
       (.I0(out[30]),
        .O(\sub_reg_176[31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[31]_i_5 
       (.I0(out[29]),
        .O(\sub_reg_176[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[4]_i_2 
       (.I0(out[4]),
        .O(\sub_reg_176[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[4]_i_3 
       (.I0(out[3]),
        .O(\sub_reg_176[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[4]_i_4 
       (.I0(out[2]),
        .O(\sub_reg_176[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[4]_i_5 
       (.I0(out[1]),
        .O(\sub_reg_176[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[8]_i_2 
       (.I0(out[8]),
        .O(\sub_reg_176[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[8]_i_3 
       (.I0(out[7]),
        .O(\sub_reg_176[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[8]_i_4 
       (.I0(out[6]),
        .O(\sub_reg_176[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_176[8]_i_5 
       (.I0(out[5]),
        .O(\sub_reg_176[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_176_reg[12]_i_1 
       (.CI(\sub_reg_176_reg[8]_i_1_n_0 ),
        .CO({\sub_reg_176_reg[12]_i_1_n_0 ,\sub_reg_176_reg[12]_i_1_n_1 ,\sub_reg_176_reg[12]_i_1_n_2 ,\sub_reg_176_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(out[12:9]),
        .O(ap_clk_0[12:9]),
        .S({\sub_reg_176[12]_i_2_n_0 ,\sub_reg_176[12]_i_3_n_0 ,\sub_reg_176[12]_i_4_n_0 ,\sub_reg_176[12]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_176_reg[16]_i_1 
       (.CI(\sub_reg_176_reg[12]_i_1_n_0 ),
        .CO({\sub_reg_176_reg[16]_i_1_n_0 ,\sub_reg_176_reg[16]_i_1_n_1 ,\sub_reg_176_reg[16]_i_1_n_2 ,\sub_reg_176_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(out[16:13]),
        .O(ap_clk_0[16:13]),
        .S({\sub_reg_176[16]_i_2_n_0 ,\sub_reg_176[16]_i_3_n_0 ,\sub_reg_176[16]_i_4_n_0 ,\sub_reg_176[16]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_176_reg[20]_i_1 
       (.CI(\sub_reg_176_reg[16]_i_1_n_0 ),
        .CO({\sub_reg_176_reg[20]_i_1_n_0 ,\sub_reg_176_reg[20]_i_1_n_1 ,\sub_reg_176_reg[20]_i_1_n_2 ,\sub_reg_176_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(out[20:17]),
        .O(ap_clk_0[20:17]),
        .S({\sub_reg_176[20]_i_2_n_0 ,\sub_reg_176[20]_i_3_n_0 ,\sub_reg_176[20]_i_4_n_0 ,\sub_reg_176[20]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_176_reg[24]_i_1 
       (.CI(\sub_reg_176_reg[20]_i_1_n_0 ),
        .CO({\sub_reg_176_reg[24]_i_1_n_0 ,\sub_reg_176_reg[24]_i_1_n_1 ,\sub_reg_176_reg[24]_i_1_n_2 ,\sub_reg_176_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(out[24:21]),
        .O(ap_clk_0[24:21]),
        .S({\sub_reg_176[24]_i_2_n_0 ,\sub_reg_176[24]_i_3_n_0 ,\sub_reg_176[24]_i_4_n_0 ,\sub_reg_176[24]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_176_reg[28]_i_1 
       (.CI(\sub_reg_176_reg[24]_i_1_n_0 ),
        .CO({\sub_reg_176_reg[28]_i_1_n_0 ,\sub_reg_176_reg[28]_i_1_n_1 ,\sub_reg_176_reg[28]_i_1_n_2 ,\sub_reg_176_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(out[28:25]),
        .O(ap_clk_0[28:25]),
        .S({\sub_reg_176[28]_i_2_n_0 ,\sub_reg_176[28]_i_3_n_0 ,\sub_reg_176[28]_i_4_n_0 ,\sub_reg_176[28]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_176_reg[31]_i_2 
       (.CI(\sub_reg_176_reg[28]_i_1_n_0 ),
        .CO({\NLW_sub_reg_176_reg[31]_i_2_CO_UNCONNECTED [3:2],\sub_reg_176_reg[31]_i_2_n_2 ,\sub_reg_176_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,out[30:29]}),
        .O({\NLW_sub_reg_176_reg[31]_i_2_O_UNCONNECTED [3],ap_clk_0[31:29]}),
        .S({1'b0,\sub_reg_176[31]_i_3_n_0 ,\sub_reg_176[31]_i_4_n_0 ,\sub_reg_176[31]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_176_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\sub_reg_176_reg[4]_i_1_n_0 ,\sub_reg_176_reg[4]_i_1_n_1 ,\sub_reg_176_reg[4]_i_1_n_2 ,\sub_reg_176_reg[4]_i_1_n_3 }),
        .CYINIT(out[0]),
        .DI(out[4:1]),
        .O(ap_clk_0[4:1]),
        .S({\sub_reg_176[4]_i_2_n_0 ,\sub_reg_176[4]_i_3_n_0 ,\sub_reg_176[4]_i_4_n_0 ,\sub_reg_176[4]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_176_reg[8]_i_1 
       (.CI(\sub_reg_176_reg[4]_i_1_n_0 ),
        .CO({\sub_reg_176_reg[8]_i_1_n_0 ,\sub_reg_176_reg[8]_i_1_n_1 ,\sub_reg_176_reg[8]_i_1_n_2 ,\sub_reg_176_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(out[8:5]),
        .O(ap_clk_0[8:5]),
        .S({\sub_reg_176[8]_i_2_n_0 ,\sub_reg_176[8]_i_3_n_0 ,\sub_reg_176[8]_i_4_n_0 ,\sub_reg_176[8]_i_5_n_0 }));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_flow_control_loop_pipe_sequential_init" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_flow_control_loop_pipe_sequential_init
   (SR,
    grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg,
    E,
    ap_done_cache_reg_0,
    ADDRARDADDR,
    S,
    grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1,
    \col_index_fu_52_reg[12] ,
    \width_reg_156_reg[15] ,
    \col_index_fu_52_reg[15] ,
    \col_index_fu_52_reg[0] ,
    D,
    grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg_0,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg,
    CO,
    Q,
    \col_index_fu_52_reg[15]_0 ,
    tmp_3_reg_1527_pp0_iter3_reg,
    icmp_ln130_fu_178_p2_carry__0);
  output [0:0]SR;
  output grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg;
  output [0:0]E;
  output [1:0]ap_done_cache_reg_0;
  output [9:0]ADDRARDADDR;
  output [3:0]S;
  output [9:0]grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1;
  output [1:0]\col_index_fu_52_reg[12] ;
  output [1:0]\width_reg_156_reg[15] ;
  output [2:0]\col_index_fu_52_reg[15] ;
  output \col_index_fu_52_reg[0] ;
  output [0:0]D;
  output grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg_0;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg;
  input [0:0]CO;
  input [2:0]Q;
  input [15:0]\col_index_fu_52_reg[15]_0 ;
  input [9:0]tmp_3_reg_1527_pp0_iter3_reg;
  input [15:0]icmp_ln130_fu_178_p2_carry__0;

  wire [9:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire [1:0]ap_done_cache_reg_0;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__2_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \col_index_fu_52_reg[0] ;
  wire [1:0]\col_index_fu_52_reg[12] ;
  wire [2:0]\col_index_fu_52_reg[15] ;
  wire [15:0]\col_index_fu_52_reg[15]_0 ;
  wire grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg;
  wire grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg;
  wire grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg_0;
  wire [9:0]grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1;
  wire [15:0]icmp_ln130_fu_178_p2_carry__0;
  wire icmp_ln130_fu_178_p2_carry__0_i_3_n_0;
  wire icmp_ln130_fu_178_p2_carry_i_5_n_0;
  wire icmp_ln130_fu_178_p2_carry_i_6_n_0;
  wire icmp_ln130_fu_178_p2_carry_i_7_n_0;
  wire icmp_ln130_fu_178_p2_carry_i_8_n_0;
  wire [9:0]tmp_3_reg_1527_pp0_iter3_reg;
  wire [1:0]\width_reg_156_reg[15] ;

  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry__0_i_1
       (.I0(\col_index_fu_52_reg[15]_0 [8]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1[7]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry__0_i_2
       (.I0(\col_index_fu_52_reg[15]_0 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry__0_i_3
       (.I0(\col_index_fu_52_reg[15]_0 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1[5]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry__0_i_4
       (.I0(\col_index_fu_52_reg[15]_0 [5]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry__1_i_1
       (.I0(\col_index_fu_52_reg[15]_0 [12]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(\col_index_fu_52_reg[12] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry__1_i_2
       (.I0(\col_index_fu_52_reg[15]_0 [11]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(\col_index_fu_52_reg[12] [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry__1_i_3
       (.I0(\col_index_fu_52_reg[15]_0 [10]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1[9]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry__1_i_4
       (.I0(\col_index_fu_52_reg[15]_0 [9]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1[8]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry__2_i_1
       (.I0(\col_index_fu_52_reg[15]_0 [15]),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\col_index_fu_52_reg[15] [2]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry__2_i_2
       (.I0(\col_index_fu_52_reg[15]_0 [14]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(\col_index_fu_52_reg[15] [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry__2_i_3
       (.I0(\col_index_fu_52_reg[15]_0 [13]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(\col_index_fu_52_reg[15] [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry_i_1
       (.I0(\col_index_fu_52_reg[15]_0 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(\col_index_fu_52_reg[0] ));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry_i_2
       (.I0(\col_index_fu_52_reg[15]_0 [4]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry_i_3
       (.I0(\col_index_fu_52_reg[15]_0 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry_i_4
       (.I0(\col_index_fu_52_reg[15]_0 [2]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    add_ln130_fu_184_p2_carry_i_5
       (.I0(\col_index_fu_52_reg[15]_0 [1]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .O(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1[0]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hFFFF4700)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(CO),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(ap_done_cache),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(ap_done_cache_reg_0[0]));
  LUT4 #(
    .INIT(16'hE200)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_done_cache),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(CO),
        .I3(Q[1]),
        .O(ap_done_cache_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_done_cache_i_1
       (.I0(CO),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFD5D)) 
    ap_loop_init_int_i_1__2
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I3(CO),
        .O(ap_loop_init_int_i_1__2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__2_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \col_index_fu_52[0]_i_1 
       (.I0(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\col_index_fu_52_reg[15]_0 [0]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \col_index_fu_52[15]_i_1 
       (.I0(CO),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \col_index_fu_52[15]_i_2 
       (.I0(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I1(CO),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_i_1
       (.I0(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I1(CO),
        .I2(Q[0]),
        .O(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg_0));
  LUT4 #(
    .INIT(16'h6A55)) 
    icmp_ln130_fu_178_p2_carry__0_i_1
       (.I0(icmp_ln130_fu_178_p2_carry__0[15]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I3(\col_index_fu_52_reg[15]_0 [15]),
        .O(\width_reg_156_reg[15] [1]));
  LUT5 #(
    .INIT(32'h0888A222)) 
    icmp_ln130_fu_178_p2_carry__0_i_2
       (.I0(icmp_ln130_fu_178_p2_carry__0_i_3_n_0),
        .I1(\col_index_fu_52_reg[15]_0 [14]),
        .I2(ap_loop_init_int),
        .I3(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I4(icmp_ln130_fu_178_p2_carry__0[14]),
        .O(\width_reg_156_reg[15] [0]));
  LUT6 #(
    .INIT(64'h2A15000000C02AD5)) 
    icmp_ln130_fu_178_p2_carry__0_i_3
       (.I0(\col_index_fu_52_reg[15]_0 [12]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I3(icmp_ln130_fu_178_p2_carry__0[12]),
        .I4(\col_index_fu_52_reg[15]_0 [13]),
        .I5(icmp_ln130_fu_178_p2_carry__0[13]),
        .O(icmp_ln130_fu_178_p2_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h0888A222)) 
    icmp_ln130_fu_178_p2_carry_i_1
       (.I0(icmp_ln130_fu_178_p2_carry_i_5_n_0),
        .I1(\col_index_fu_52_reg[15]_0 [11]),
        .I2(ap_loop_init_int),
        .I3(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I4(icmp_ln130_fu_178_p2_carry__0[11]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h0888A222)) 
    icmp_ln130_fu_178_p2_carry_i_2
       (.I0(icmp_ln130_fu_178_p2_carry_i_6_n_0),
        .I1(\col_index_fu_52_reg[15]_0 [8]),
        .I2(ap_loop_init_int),
        .I3(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I4(icmp_ln130_fu_178_p2_carry__0[8]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h0888A222)) 
    icmp_ln130_fu_178_p2_carry_i_3
       (.I0(icmp_ln130_fu_178_p2_carry_i_7_n_0),
        .I1(\col_index_fu_52_reg[15]_0 [5]),
        .I2(ap_loop_init_int),
        .I3(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I4(icmp_ln130_fu_178_p2_carry__0[5]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h0888A222)) 
    icmp_ln130_fu_178_p2_carry_i_4
       (.I0(icmp_ln130_fu_178_p2_carry_i_8_n_0),
        .I1(\col_index_fu_52_reg[15]_0 [2]),
        .I2(ap_loop_init_int),
        .I3(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I4(icmp_ln130_fu_178_p2_carry__0[2]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h2A15000000C02AD5)) 
    icmp_ln130_fu_178_p2_carry_i_5
       (.I0(\col_index_fu_52_reg[15]_0 [9]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I3(icmp_ln130_fu_178_p2_carry__0[9]),
        .I4(\col_index_fu_52_reg[15]_0 [10]),
        .I5(icmp_ln130_fu_178_p2_carry__0[10]),
        .O(icmp_ln130_fu_178_p2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h2A15000000C02AD5)) 
    icmp_ln130_fu_178_p2_carry_i_6
       (.I0(\col_index_fu_52_reg[15]_0 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I3(icmp_ln130_fu_178_p2_carry__0[6]),
        .I4(\col_index_fu_52_reg[15]_0 [7]),
        .I5(icmp_ln130_fu_178_p2_carry__0[7]),
        .O(icmp_ln130_fu_178_p2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h2A15000000C02AD5)) 
    icmp_ln130_fu_178_p2_carry_i_7
       (.I0(\col_index_fu_52_reg[15]_0 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I3(icmp_ln130_fu_178_p2_carry__0[3]),
        .I4(\col_index_fu_52_reg[15]_0 [4]),
        .I5(icmp_ln130_fu_178_p2_carry__0[4]),
        .O(icmp_ln130_fu_178_p2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h2A15000000C02AD5)) 
    icmp_ln130_fu_178_p2_carry_i_8
       (.I0(\col_index_fu_52_reg[15]_0 [0]),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I3(icmp_ln130_fu_178_p2_carry__0[0]),
        .I4(\col_index_fu_52_reg[15]_0 [1]),
        .I5(icmp_ln130_fu_178_p2_carry__0[1]),
        .O(icmp_ln130_fu_178_p2_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hFF2A002A)) 
    ram_reg_i_10
       (.I0(\col_index_fu_52_reg[15]_0 [3]),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[2]),
        .I4(tmp_3_reg_1527_pp0_iter3_reg[2]),
        .O(ADDRARDADDR[2]));
  LUT5 #(
    .INIT(32'hFF2A002A)) 
    ram_reg_i_11
       (.I0(\col_index_fu_52_reg[15]_0 [2]),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[2]),
        .I4(tmp_3_reg_1527_pp0_iter3_reg[1]),
        .O(ADDRARDADDR[1]));
  LUT5 #(
    .INIT(32'hFF2A002A)) 
    ram_reg_i_12
       (.I0(\col_index_fu_52_reg[15]_0 [1]),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[2]),
        .I4(tmp_3_reg_1527_pp0_iter3_reg[0]),
        .O(ADDRARDADDR[0]));
  LUT4 #(
    .INIT(16'h0400)) 
    ram_reg_i_28
       (.I0(CO),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg));
  LUT5 #(
    .INIT(32'hFF2A002A)) 
    ram_reg_i_3
       (.I0(\col_index_fu_52_reg[15]_0 [10]),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[2]),
        .I4(tmp_3_reg_1527_pp0_iter3_reg[9]),
        .O(ADDRARDADDR[9]));
  LUT5 #(
    .INIT(32'hFF2A002A)) 
    ram_reg_i_4
       (.I0(\col_index_fu_52_reg[15]_0 [9]),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[2]),
        .I4(tmp_3_reg_1527_pp0_iter3_reg[8]),
        .O(ADDRARDADDR[8]));
  LUT5 #(
    .INIT(32'hFF2A002A)) 
    ram_reg_i_5
       (.I0(\col_index_fu_52_reg[15]_0 [8]),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[2]),
        .I4(tmp_3_reg_1527_pp0_iter3_reg[7]),
        .O(ADDRARDADDR[7]));
  LUT5 #(
    .INIT(32'hFF2A002A)) 
    ram_reg_i_6
       (.I0(\col_index_fu_52_reg[15]_0 [7]),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[2]),
        .I4(tmp_3_reg_1527_pp0_iter3_reg[6]),
        .O(ADDRARDADDR[6]));
  LUT5 #(
    .INIT(32'hFF2A002A)) 
    ram_reg_i_7
       (.I0(\col_index_fu_52_reg[15]_0 [6]),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[2]),
        .I4(tmp_3_reg_1527_pp0_iter3_reg[5]),
        .O(ADDRARDADDR[5]));
  LUT5 #(
    .INIT(32'hFF2A002A)) 
    ram_reg_i_8
       (.I0(\col_index_fu_52_reg[15]_0 [5]),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[2]),
        .I4(tmp_3_reg_1527_pp0_iter3_reg[4]),
        .O(ADDRARDADDR[4]));
  LUT5 #(
    .INIT(32'hFF2A002A)) 
    ram_reg_i_9
       (.I0(\col_index_fu_52_reg[15]_0 [4]),
        .I1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[2]),
        .I4(tmp_3_reg_1527_pp0_iter3_reg[3]),
        .O(ADDRARDADDR[3]));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_flow_control_loop_pipe_sequential_init" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_flow_control_loop_pipe_sequential_init_15
   (D,
    \ap_CS_fsm_reg[0] ,
    grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg,
    \sof_2_reg_132_reg[0] ,
    ap_done_cache_reg_0,
    E,
    SR,
    S,
    \j_fu_74_reg[7] ,
    DI,
    \j_fu_74_reg[14] ,
    ap_loop_init_int_reg_0,
    \j_fu_74_reg[23] ,
    \j_fu_74_reg[22] ,
    ap_loop_init_int_reg_1,
    grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_0,
    grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_1,
    \j_fu_74_reg[30] ,
    grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_2,
    \axi_last_reg_195_reg[0] ,
    \icmp_ln121_reg_191_reg[0] ,
    ap_rst_n_inv,
    ap_clk,
    Q,
    out_mat_cols_channel_empty_n,
    out_mat_rows_channel_empty_n,
    \sof_2_reg_132_reg[0]_0 ,
    and_ln116_reg_189,
    CO,
    grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg,
    ap_loop_exit_ready_pp0_iter1_reg,
    \sof_2_reg_132_reg[0]_1 ,
    \icmp_ln121_reg_191_reg[0]_0 ,
    \icmp_ln121_reg_191_reg[0]_1 ,
    clear,
    ap_rst_n,
    out_mat_data_empty_n,
    m_axis_video_TREADY_int_regslice,
    \j_fu_74_reg[30]_0 ,
    axi_last_fu_168_p2_carry__1,
    out,
    \axi_last_reg_195_reg[0]_0 ,
    axi_last_reg_195);
  output [30:0]D;
  output \ap_CS_fsm_reg[0] ;
  output grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg;
  output \sof_2_reg_132_reg[0] ;
  output [1:0]ap_done_cache_reg_0;
  output [0:0]E;
  output [0:0]SR;
  output [3:0]S;
  output [3:0]\j_fu_74_reg[7] ;
  output [3:0]DI;
  output [3:0]\j_fu_74_reg[14] ;
  output [3:0]ap_loop_init_int_reg_0;
  output [3:0]\j_fu_74_reg[23] ;
  output [3:0]\j_fu_74_reg[22] ;
  output [3:0]ap_loop_init_int_reg_1;
  output [2:0]grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_0;
  output [3:0]grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_1;
  output [3:0]\j_fu_74_reg[30] ;
  output grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_2;
  output \axi_last_reg_195_reg[0] ;
  output \icmp_ln121_reg_191_reg[0] ;
  input ap_rst_n_inv;
  input ap_clk;
  input [2:0]Q;
  input out_mat_cols_channel_empty_n;
  input out_mat_rows_channel_empty_n;
  input \sof_2_reg_132_reg[0]_0 ;
  input and_ln116_reg_189;
  input [0:0]CO;
  input grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input \sof_2_reg_132_reg[0]_1 ;
  input \icmp_ln121_reg_191_reg[0]_0 ;
  input \icmp_ln121_reg_191_reg[0]_1 ;
  input clear;
  input ap_rst_n;
  input out_mat_data_empty_n;
  input m_axis_video_TREADY_int_regslice;
  input [30:0]\j_fu_74_reg[30]_0 ;
  input [31:0]axi_last_fu_168_p2_carry__1;
  input [31:0]out;
  input [0:0]\axi_last_reg_195_reg[0]_0 ;
  input axi_last_reg_195;

  wire [0:0]CO;
  wire [30:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire and_ln116_reg_189;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_NS_fsm1;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__1_n_0;
  wire [1:0]ap_done_cache_reg_0;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_init;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__4_n_0;
  wire [3:0]ap_loop_init_int_reg_0;
  wire [3:0]ap_loop_init_int_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_last_fu_168_p2_carry__0_i_5_n_0;
  wire axi_last_fu_168_p2_carry__0_i_6_n_0;
  wire axi_last_fu_168_p2_carry__0_i_7_n_0;
  wire axi_last_fu_168_p2_carry__0_i_8_n_0;
  wire [31:0]axi_last_fu_168_p2_carry__1;
  wire axi_last_fu_168_p2_carry__1_i_4_n_0;
  wire axi_last_fu_168_p2_carry__1_i_5_n_0;
  wire axi_last_fu_168_p2_carry_i_5_n_0;
  wire axi_last_fu_168_p2_carry_i_6_n_0;
  wire axi_last_fu_168_p2_carry_i_7_n_0;
  wire axi_last_fu_168_p2_carry_i_8_n_0;
  wire axi_last_reg_195;
  wire \axi_last_reg_195_reg[0] ;
  wire [0:0]\axi_last_reg_195_reg[0]_0 ;
  wire clear;
  wire grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg;
  wire grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg;
  wire [2:0]grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_0;
  wire [3:0]grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_1;
  wire grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_2;
  wire \icmp_ln121_reg_191_reg[0] ;
  wire \icmp_ln121_reg_191_reg[0]_0 ;
  wire \icmp_ln121_reg_191_reg[0]_1 ;
  wire \j_fu_74_reg[12]_i_1_n_0 ;
  wire \j_fu_74_reg[12]_i_1_n_1 ;
  wire \j_fu_74_reg[12]_i_1_n_2 ;
  wire \j_fu_74_reg[12]_i_1_n_3 ;
  wire [3:0]\j_fu_74_reg[14] ;
  wire \j_fu_74_reg[16]_i_1_n_0 ;
  wire \j_fu_74_reg[16]_i_1_n_1 ;
  wire \j_fu_74_reg[16]_i_1_n_2 ;
  wire \j_fu_74_reg[16]_i_1_n_3 ;
  wire \j_fu_74_reg[20]_i_1_n_0 ;
  wire \j_fu_74_reg[20]_i_1_n_1 ;
  wire \j_fu_74_reg[20]_i_1_n_2 ;
  wire \j_fu_74_reg[20]_i_1_n_3 ;
  wire [3:0]\j_fu_74_reg[22] ;
  wire [3:0]\j_fu_74_reg[23] ;
  wire \j_fu_74_reg[24]_i_1_n_0 ;
  wire \j_fu_74_reg[24]_i_1_n_1 ;
  wire \j_fu_74_reg[24]_i_1_n_2 ;
  wire \j_fu_74_reg[24]_i_1_n_3 ;
  wire \j_fu_74_reg[28]_i_1_n_0 ;
  wire \j_fu_74_reg[28]_i_1_n_1 ;
  wire \j_fu_74_reg[28]_i_1_n_2 ;
  wire \j_fu_74_reg[28]_i_1_n_3 ;
  wire [3:0]\j_fu_74_reg[30] ;
  wire [30:0]\j_fu_74_reg[30]_0 ;
  wire \j_fu_74_reg[30]_i_3_n_3 ;
  wire \j_fu_74_reg[4]_i_1_n_0 ;
  wire \j_fu_74_reg[4]_i_1_n_1 ;
  wire \j_fu_74_reg[4]_i_1_n_2 ;
  wire \j_fu_74_reg[4]_i_1_n_3 ;
  wire [3:0]\j_fu_74_reg[7] ;
  wire \j_fu_74_reg[8]_i_1_n_0 ;
  wire \j_fu_74_reg[8]_i_1_n_1 ;
  wire \j_fu_74_reg[8]_i_1_n_2 ;
  wire \j_fu_74_reg[8]_i_1_n_3 ;
  wire m_axis_video_TREADY_int_regslice;
  wire [31:0]out;
  wire out_mat_cols_channel_empty_n;
  wire out_mat_data_empty_n;
  wire out_mat_rows_channel_empty_n;
  wire [30:0]p_0_in;
  wire \sof_2_reg_132_reg[0] ;
  wire \sof_2_reg_132_reg[0]_0 ;
  wire \sof_2_reg_132_reg[0]_1 ;
  wire [3:1]\NLW_j_fu_74_reg[30]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_j_fu_74_reg[30]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFAA080808)) 
    \ap_CS_fsm[1]_i_1__1 
       (.I0(Q[2]),
        .I1(ap_done_cache),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(ap_block_pp0_stage0_subdone),
        .I5(clear),
        .O(ap_done_cache_reg_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00D0D0D0)) 
    \ap_CS_fsm[3]_i_1__0 
       (.I0(ap_done_cache),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(Q[2]),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(ap_block_pp0_stage0_subdone),
        .I5(Q[1]),
        .O(ap_done_cache_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    ap_done_cache_i_1__1
       (.I0(ap_block_pp0_stage0_subdone),
        .I1(ap_loop_exit_ready_pp0_iter1_reg),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(ap_done_cache),
        .O(ap_done_cache_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__1_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h7520)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1
       (.I0(ap_block_pp0_stage0_subdone),
        .I1(CO),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .O(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFDD5DDD)) 
    ap_loop_init_int_i_1__4
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(ap_loop_exit_ready_pp0_iter1_reg),
        .O(ap_loop_init_int_i_1__4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__4_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0888A222)) 
    axi_last_fu_168_p2_carry__0_i_1
       (.I0(axi_last_fu_168_p2_carry__0_i_5_n_0),
        .I1(\j_fu_74_reg[30]_0 [23]),
        .I2(ap_loop_init_int),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(axi_last_fu_168_p2_carry__1[23]),
        .O(\j_fu_74_reg[23] [3]));
  LUT5 #(
    .INIT(32'h0888A222)) 
    axi_last_fu_168_p2_carry__0_i_2
       (.I0(axi_last_fu_168_p2_carry__0_i_6_n_0),
        .I1(\j_fu_74_reg[30]_0 [18]),
        .I2(ap_loop_init_int),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(axi_last_fu_168_p2_carry__1[18]),
        .O(\j_fu_74_reg[23] [2]));
  LUT5 #(
    .INIT(32'h0888A222)) 
    axi_last_fu_168_p2_carry__0_i_3
       (.I0(axi_last_fu_168_p2_carry__0_i_7_n_0),
        .I1(\j_fu_74_reg[30]_0 [17]),
        .I2(ap_loop_init_int),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(axi_last_fu_168_p2_carry__1[17]),
        .O(\j_fu_74_reg[23] [1]));
  LUT5 #(
    .INIT(32'h0888A222)) 
    axi_last_fu_168_p2_carry__0_i_4
       (.I0(axi_last_fu_168_p2_carry__0_i_8_n_0),
        .I1(\j_fu_74_reg[30]_0 [12]),
        .I2(ap_loop_init_int),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(axi_last_fu_168_p2_carry__1[12]),
        .O(\j_fu_74_reg[23] [0]));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    axi_last_fu_168_p2_carry__0_i_5
       (.I0(axi_last_fu_168_p2_carry__1[22]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [22]),
        .I4(\j_fu_74_reg[30]_0 [21]),
        .I5(axi_last_fu_168_p2_carry__1[21]),
        .O(axi_last_fu_168_p2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    axi_last_fu_168_p2_carry__0_i_6
       (.I0(axi_last_fu_168_p2_carry__1[20]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [20]),
        .I4(\j_fu_74_reg[30]_0 [19]),
        .I5(axi_last_fu_168_p2_carry__1[19]),
        .O(axi_last_fu_168_p2_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    axi_last_fu_168_p2_carry__0_i_7
       (.I0(axi_last_fu_168_p2_carry__1[16]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [16]),
        .I4(\j_fu_74_reg[30]_0 [15]),
        .I5(axi_last_fu_168_p2_carry__1[15]),
        .O(axi_last_fu_168_p2_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    axi_last_fu_168_p2_carry__0_i_8
       (.I0(axi_last_fu_168_p2_carry__1[14]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [14]),
        .I4(\j_fu_74_reg[30]_0 [13]),
        .I5(axi_last_fu_168_p2_carry__1[13]),
        .O(axi_last_fu_168_p2_carry__0_i_8_n_0));
  LUT5 #(
    .INIT(32'h0000708F)) 
    axi_last_fu_168_p2_carry__1_i_1
       (.I0(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\j_fu_74_reg[30]_0 [30]),
        .I3(axi_last_fu_168_p2_carry__1[30]),
        .I4(axi_last_fu_168_p2_carry__1[31]),
        .O(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_0[2]));
  LUT5 #(
    .INIT(32'h0888A222)) 
    axi_last_fu_168_p2_carry__1_i_2
       (.I0(axi_last_fu_168_p2_carry__1_i_4_n_0),
        .I1(\j_fu_74_reg[30]_0 [29]),
        .I2(ap_loop_init_int),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(axi_last_fu_168_p2_carry__1[29]),
        .O(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_0[1]));
  LUT5 #(
    .INIT(32'h0888A222)) 
    axi_last_fu_168_p2_carry__1_i_3
       (.I0(axi_last_fu_168_p2_carry__1_i_5_n_0),
        .I1(\j_fu_74_reg[30]_0 [24]),
        .I2(ap_loop_init_int),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(axi_last_fu_168_p2_carry__1[24]),
        .O(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_0[0]));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    axi_last_fu_168_p2_carry__1_i_4
       (.I0(axi_last_fu_168_p2_carry__1[28]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [28]),
        .I4(\j_fu_74_reg[30]_0 [27]),
        .I5(axi_last_fu_168_p2_carry__1[27]),
        .O(axi_last_fu_168_p2_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    axi_last_fu_168_p2_carry__1_i_5
       (.I0(axi_last_fu_168_p2_carry__1[26]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [26]),
        .I4(\j_fu_74_reg[30]_0 [25]),
        .I5(axi_last_fu_168_p2_carry__1[25]),
        .O(axi_last_fu_168_p2_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h0888A222)) 
    axi_last_fu_168_p2_carry_i_1
       (.I0(axi_last_fu_168_p2_carry_i_5_n_0),
        .I1(\j_fu_74_reg[30]_0 [11]),
        .I2(ap_loop_init_int),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(axi_last_fu_168_p2_carry__1[11]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h0888A222)) 
    axi_last_fu_168_p2_carry_i_2
       (.I0(axi_last_fu_168_p2_carry_i_6_n_0),
        .I1(\j_fu_74_reg[30]_0 [6]),
        .I2(ap_loop_init_int),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(axi_last_fu_168_p2_carry__1[6]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h0888A222)) 
    axi_last_fu_168_p2_carry_i_3
       (.I0(axi_last_fu_168_p2_carry_i_7_n_0),
        .I1(\j_fu_74_reg[30]_0 [5]),
        .I2(ap_loop_init_int),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(axi_last_fu_168_p2_carry__1[5]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h0888A222)) 
    axi_last_fu_168_p2_carry_i_4
       (.I0(axi_last_fu_168_p2_carry_i_8_n_0),
        .I1(\j_fu_74_reg[30]_0 [2]),
        .I2(ap_loop_init_int),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(axi_last_fu_168_p2_carry__1[2]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    axi_last_fu_168_p2_carry_i_5
       (.I0(axi_last_fu_168_p2_carry__1[10]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [10]),
        .I4(\j_fu_74_reg[30]_0 [9]),
        .I5(axi_last_fu_168_p2_carry__1[9]),
        .O(axi_last_fu_168_p2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    axi_last_fu_168_p2_carry_i_6
       (.I0(axi_last_fu_168_p2_carry__1[8]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [8]),
        .I4(\j_fu_74_reg[30]_0 [7]),
        .I5(axi_last_fu_168_p2_carry__1[7]),
        .O(axi_last_fu_168_p2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    axi_last_fu_168_p2_carry_i_7
       (.I0(axi_last_fu_168_p2_carry__1[4]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [4]),
        .I4(\j_fu_74_reg[30]_0 [3]),
        .I5(axi_last_fu_168_p2_carry__1[3]),
        .O(axi_last_fu_168_p2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    axi_last_fu_168_p2_carry_i_8
       (.I0(axi_last_fu_168_p2_carry__1[0]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [0]),
        .I4(\j_fu_74_reg[30]_0 [1]),
        .I5(axi_last_fu_168_p2_carry__1[1]),
        .O(axi_last_fu_168_p2_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_last_reg_195[0]_i_1 
       (.I0(\axi_last_reg_195_reg[0]_0 ),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(axi_last_reg_195),
        .O(\axi_last_reg_195_reg[0] ));
  LUT4 #(
    .INIT(16'hFFC4)) 
    grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_i_1
       (.I0(ap_block_pp0_stage0_subdone),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(CO),
        .I3(Q[1]),
        .O(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_2));
  LUT6 #(
    .INIT(64'hF222FFFFA000A222)) 
    icmp_ln121_fu_156_p2_carry__0_i_1
       (.I0(out[14]),
        .I1(\j_fu_74_reg[30]_0 [14]),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\j_fu_74_reg[30]_0 [15]),
        .I5(out[15]),
        .O(\j_fu_74_reg[14] [3]));
  LUT6 #(
    .INIT(64'hFC404040FCF4F4F4)) 
    icmp_ln121_fu_156_p2_carry__0_i_2
       (.I0(\j_fu_74_reg[30]_0 [12]),
        .I1(out[12]),
        .I2(out[13]),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\j_fu_74_reg[30]_0 [13]),
        .O(\j_fu_74_reg[14] [2]));
  LUT6 #(
    .INIT(64'hF222FFFFA000A222)) 
    icmp_ln121_fu_156_p2_carry__0_i_3
       (.I0(out[10]),
        .I1(\j_fu_74_reg[30]_0 [10]),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\j_fu_74_reg[30]_0 [11]),
        .I5(out[11]),
        .O(\j_fu_74_reg[14] [1]));
  LUT6 #(
    .INIT(64'hF222FFFFA000A222)) 
    icmp_ln121_fu_156_p2_carry__0_i_4
       (.I0(out[8]),
        .I1(\j_fu_74_reg[30]_0 [8]),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\j_fu_74_reg[30]_0 [9]),
        .I5(out[9]),
        .O(\j_fu_74_reg[14] [0]));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    icmp_ln121_fu_156_p2_carry__0_i_5
       (.I0(out[14]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [14]),
        .I4(\j_fu_74_reg[30]_0 [15]),
        .I5(out[15]),
        .O(ap_loop_init_int_reg_0[3]));
  LUT6 #(
    .INIT(64'h2A15000000C02AD5)) 
    icmp_ln121_fu_156_p2_carry__0_i_6
       (.I0(\j_fu_74_reg[30]_0 [13]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(out[13]),
        .I4(\j_fu_74_reg[30]_0 [12]),
        .I5(out[12]),
        .O(ap_loop_init_int_reg_0[2]));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    icmp_ln121_fu_156_p2_carry__0_i_7
       (.I0(out[10]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [10]),
        .I4(\j_fu_74_reg[30]_0 [11]),
        .I5(out[11]),
        .O(ap_loop_init_int_reg_0[1]));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    icmp_ln121_fu_156_p2_carry__0_i_8
       (.I0(out[8]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [8]),
        .I4(\j_fu_74_reg[30]_0 [9]),
        .I5(out[9]),
        .O(ap_loop_init_int_reg_0[0]));
  LUT6 #(
    .INIT(64'hF222FFFFA000A222)) 
    icmp_ln121_fu_156_p2_carry__1_i_1
       (.I0(out[22]),
        .I1(\j_fu_74_reg[30]_0 [22]),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\j_fu_74_reg[30]_0 [23]),
        .I5(out[23]),
        .O(\j_fu_74_reg[22] [3]));
  LUT6 #(
    .INIT(64'hF222FFFFA000A222)) 
    icmp_ln121_fu_156_p2_carry__1_i_2
       (.I0(out[20]),
        .I1(\j_fu_74_reg[30]_0 [20]),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\j_fu_74_reg[30]_0 [21]),
        .I5(out[21]),
        .O(\j_fu_74_reg[22] [2]));
  LUT6 #(
    .INIT(64'hFC404040FCF4F4F4)) 
    icmp_ln121_fu_156_p2_carry__1_i_3
       (.I0(\j_fu_74_reg[30]_0 [18]),
        .I1(out[18]),
        .I2(out[19]),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\j_fu_74_reg[30]_0 [19]),
        .O(\j_fu_74_reg[22] [1]));
  LUT6 #(
    .INIT(64'hF222FFFFA000A222)) 
    icmp_ln121_fu_156_p2_carry__1_i_4
       (.I0(out[16]),
        .I1(\j_fu_74_reg[30]_0 [16]),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\j_fu_74_reg[30]_0 [17]),
        .I5(out[17]),
        .O(\j_fu_74_reg[22] [0]));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    icmp_ln121_fu_156_p2_carry__1_i_5
       (.I0(out[22]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [22]),
        .I4(\j_fu_74_reg[30]_0 [23]),
        .I5(out[23]),
        .O(ap_loop_init_int_reg_1[3]));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    icmp_ln121_fu_156_p2_carry__1_i_6
       (.I0(out[20]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [20]),
        .I4(\j_fu_74_reg[30]_0 [21]),
        .I5(out[21]),
        .O(ap_loop_init_int_reg_1[2]));
  LUT6 #(
    .INIT(64'h2A15000000C02AD5)) 
    icmp_ln121_fu_156_p2_carry__1_i_7
       (.I0(\j_fu_74_reg[30]_0 [19]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(out[19]),
        .I4(\j_fu_74_reg[30]_0 [18]),
        .I5(out[18]),
        .O(ap_loop_init_int_reg_1[1]));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    icmp_ln121_fu_156_p2_carry__1_i_8
       (.I0(out[16]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [16]),
        .I4(\j_fu_74_reg[30]_0 [17]),
        .I5(out[17]),
        .O(ap_loop_init_int_reg_1[0]));
  LUT5 #(
    .INIT(32'h44040404)) 
    icmp_ln121_fu_156_p2_carry__2_i_1
       (.I0(out[31]),
        .I1(out[30]),
        .I2(\j_fu_74_reg[30]_0 [30]),
        .I3(ap_loop_init_int),
        .I4(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(\j_fu_74_reg[30] [3]));
  LUT6 #(
    .INIT(64'hF222FFFFA000A222)) 
    icmp_ln121_fu_156_p2_carry__2_i_2
       (.I0(out[28]),
        .I1(\j_fu_74_reg[30]_0 [28]),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\j_fu_74_reg[30]_0 [29]),
        .I5(out[29]),
        .O(\j_fu_74_reg[30] [2]));
  LUT6 #(
    .INIT(64'hF222FFFFA000A222)) 
    icmp_ln121_fu_156_p2_carry__2_i_3
       (.I0(out[26]),
        .I1(\j_fu_74_reg[30]_0 [26]),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\j_fu_74_reg[30]_0 [27]),
        .I5(out[27]),
        .O(\j_fu_74_reg[30] [1]));
  LUT6 #(
    .INIT(64'hFC404040FCF4F4F4)) 
    icmp_ln121_fu_156_p2_carry__2_i_4
       (.I0(\j_fu_74_reg[30]_0 [24]),
        .I1(out[24]),
        .I2(out[25]),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\j_fu_74_reg[30]_0 [25]),
        .O(\j_fu_74_reg[30] [0]));
  LUT5 #(
    .INIT(32'h0000708F)) 
    icmp_ln121_fu_156_p2_carry__2_i_5
       (.I0(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\j_fu_74_reg[30]_0 [30]),
        .I3(out[30]),
        .I4(out[31]),
        .O(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_1[3]));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    icmp_ln121_fu_156_p2_carry__2_i_6
       (.I0(out[28]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [28]),
        .I4(\j_fu_74_reg[30]_0 [29]),
        .I5(out[29]),
        .O(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_1[2]));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    icmp_ln121_fu_156_p2_carry__2_i_7
       (.I0(out[26]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [26]),
        .I4(\j_fu_74_reg[30]_0 [27]),
        .I5(out[27]),
        .O(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_1[1]));
  LUT6 #(
    .INIT(64'h2A15000000C02AD5)) 
    icmp_ln121_fu_156_p2_carry__2_i_8
       (.I0(\j_fu_74_reg[30]_0 [25]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(out[25]),
        .I4(\j_fu_74_reg[30]_0 [24]),
        .I5(out[24]),
        .O(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg_reg_1[0]));
  LUT6 #(
    .INIT(64'hFC404040FCF4F4F4)) 
    icmp_ln121_fu_156_p2_carry_i_1
       (.I0(\j_fu_74_reg[30]_0 [6]),
        .I1(out[6]),
        .I2(out[7]),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\j_fu_74_reg[30]_0 [7]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hF222FFFFA000A222)) 
    icmp_ln121_fu_156_p2_carry_i_2
       (.I0(out[4]),
        .I1(\j_fu_74_reg[30]_0 [4]),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\j_fu_74_reg[30]_0 [5]),
        .I5(out[5]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hFC404040FCF4F4F4)) 
    icmp_ln121_fu_156_p2_carry_i_3
       (.I0(\j_fu_74_reg[30]_0 [2]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\j_fu_74_reg[30]_0 [3]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hF222FFFFA000A222)) 
    icmp_ln121_fu_156_p2_carry_i_4
       (.I0(out[0]),
        .I1(\j_fu_74_reg[30]_0 [0]),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\j_fu_74_reg[30]_0 [1]),
        .I5(out[1]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h2A15000000C02AD5)) 
    icmp_ln121_fu_156_p2_carry_i_5
       (.I0(\j_fu_74_reg[30]_0 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(out[7]),
        .I4(\j_fu_74_reg[30]_0 [6]),
        .I5(out[6]),
        .O(\j_fu_74_reg[7] [3]));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    icmp_ln121_fu_156_p2_carry_i_6
       (.I0(out[4]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [4]),
        .I4(\j_fu_74_reg[30]_0 [5]),
        .I5(out[5]),
        .O(\j_fu_74_reg[7] [2]));
  LUT6 #(
    .INIT(64'h2A15000000C02AD5)) 
    icmp_ln121_fu_156_p2_carry_i_7
       (.I0(\j_fu_74_reg[30]_0 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(out[3]),
        .I4(\j_fu_74_reg[30]_0 [2]),
        .I5(out[2]),
        .O(\j_fu_74_reg[7] [1]));
  LUT6 #(
    .INIT(64'h2A15000040406A55)) 
    icmp_ln121_fu_156_p2_carry_i_8
       (.I0(out[0]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I3(\j_fu_74_reg[30]_0 [0]),
        .I4(\j_fu_74_reg[30]_0 [1]),
        .I5(out[1]),
        .O(\j_fu_74_reg[7] [0]));
  LUT6 #(
    .INIT(64'hAAEAEAEAEAEAEAEA)) 
    \icmp_ln121_reg_191[0]_i_1 
       (.I0(CO),
        .I1(\icmp_ln121_reg_191_reg[0]_1 ),
        .I2(\icmp_ln121_reg_191_reg[0]_0 ),
        .I3(out_mat_data_empty_n),
        .I4(m_axis_video_TREADY_int_regslice),
        .I5(Q[2]),
        .O(\icmp_ln121_reg_191_reg[0] ));
  LUT2 #(
    .INIT(4'hB)) 
    \j_fu_74[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\j_fu_74_reg[30]_0 [0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[12]_i_2 
       (.I0(\j_fu_74_reg[30]_0 [12]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[12]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[12]_i_3 
       (.I0(\j_fu_74_reg[30]_0 [11]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[11]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[12]_i_4 
       (.I0(\j_fu_74_reg[30]_0 [10]),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[10]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[12]_i_5 
       (.I0(\j_fu_74_reg[30]_0 [9]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[9]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[16]_i_2 
       (.I0(\j_fu_74_reg[30]_0 [16]),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[16]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[16]_i_3 
       (.I0(\j_fu_74_reg[30]_0 [15]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[15]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[16]_i_4 
       (.I0(\j_fu_74_reg[30]_0 [14]),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[14]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[16]_i_5 
       (.I0(\j_fu_74_reg[30]_0 [13]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[13]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[20]_i_2 
       (.I0(\j_fu_74_reg[30]_0 [20]),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[20]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[20]_i_3 
       (.I0(\j_fu_74_reg[30]_0 [19]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[19]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[20]_i_4 
       (.I0(\j_fu_74_reg[30]_0 [18]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[18]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[20]_i_5 
       (.I0(\j_fu_74_reg[30]_0 [17]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[17]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[24]_i_2 
       (.I0(\j_fu_74_reg[30]_0 [24]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[24]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[24]_i_3 
       (.I0(\j_fu_74_reg[30]_0 [23]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[23]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[24]_i_4 
       (.I0(\j_fu_74_reg[30]_0 [22]),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[22]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[24]_i_5 
       (.I0(\j_fu_74_reg[30]_0 [21]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[21]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[28]_i_2 
       (.I0(\j_fu_74_reg[30]_0 [28]),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[28]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[28]_i_3 
       (.I0(\j_fu_74_reg[30]_0 [27]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[27]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[28]_i_4 
       (.I0(\j_fu_74_reg[30]_0 [26]),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[26]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[28]_i_5 
       (.I0(\j_fu_74_reg[30]_0 [25]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[25]));
  LUT4 #(
    .INIT(16'h4000)) 
    \j_fu_74[30]_i_1 
       (.I0(CO),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(ap_block_pp0_stage0_subdone),
        .O(SR));
  LUT3 #(
    .INIT(8'h80)) 
    \j_fu_74[30]_i_2 
       (.I0(ap_block_pp0_stage0_subdone),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(CO),
        .O(E));
  LUT5 #(
    .INIT(32'hF7777777)) 
    \j_fu_74[30]_i_4 
       (.I0(\icmp_ln121_reg_191_reg[0]_1 ),
        .I1(\icmp_ln121_reg_191_reg[0]_0 ),
        .I2(out_mat_data_empty_n),
        .I3(m_axis_video_TREADY_int_regslice),
        .I4(Q[2]),
        .O(ap_block_pp0_stage0_subdone));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[30]_i_5 
       (.I0(\j_fu_74_reg[30]_0 [30]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[30]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[30]_i_6 
       (.I0(\j_fu_74_reg[30]_0 [29]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[29]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[4]_i_2 
       (.I0(\j_fu_74_reg[30]_0 [0]),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[4]_i_3 
       (.I0(\j_fu_74_reg[30]_0 [4]),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[4]_i_4 
       (.I0(\j_fu_74_reg[30]_0 [3]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[4]_i_5 
       (.I0(\j_fu_74_reg[30]_0 [2]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[4]_i_6 
       (.I0(\j_fu_74_reg[30]_0 [1]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[8]_i_2 
       (.I0(\j_fu_74_reg[30]_0 [8]),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[8]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[8]_i_3 
       (.I0(\j_fu_74_reg[30]_0 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[7]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[8]_i_4 
       (.I0(\j_fu_74_reg[30]_0 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_74[8]_i_5 
       (.I0(\j_fu_74_reg[30]_0 [5]),
        .I1(ap_loop_init_int),
        .I2(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(p_0_in[5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_74_reg[12]_i_1 
       (.CI(\j_fu_74_reg[8]_i_1_n_0 ),
        .CO({\j_fu_74_reg[12]_i_1_n_0 ,\j_fu_74_reg[12]_i_1_n_1 ,\j_fu_74_reg[12]_i_1_n_2 ,\j_fu_74_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[12:9]),
        .S(p_0_in[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_74_reg[16]_i_1 
       (.CI(\j_fu_74_reg[12]_i_1_n_0 ),
        .CO({\j_fu_74_reg[16]_i_1_n_0 ,\j_fu_74_reg[16]_i_1_n_1 ,\j_fu_74_reg[16]_i_1_n_2 ,\j_fu_74_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[16:13]),
        .S(p_0_in[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_74_reg[20]_i_1 
       (.CI(\j_fu_74_reg[16]_i_1_n_0 ),
        .CO({\j_fu_74_reg[20]_i_1_n_0 ,\j_fu_74_reg[20]_i_1_n_1 ,\j_fu_74_reg[20]_i_1_n_2 ,\j_fu_74_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[20:17]),
        .S(p_0_in[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_74_reg[24]_i_1 
       (.CI(\j_fu_74_reg[20]_i_1_n_0 ),
        .CO({\j_fu_74_reg[24]_i_1_n_0 ,\j_fu_74_reg[24]_i_1_n_1 ,\j_fu_74_reg[24]_i_1_n_2 ,\j_fu_74_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[24:21]),
        .S(p_0_in[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_74_reg[28]_i_1 
       (.CI(\j_fu_74_reg[24]_i_1_n_0 ),
        .CO({\j_fu_74_reg[28]_i_1_n_0 ,\j_fu_74_reg[28]_i_1_n_1 ,\j_fu_74_reg[28]_i_1_n_2 ,\j_fu_74_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[28:25]),
        .S(p_0_in[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_74_reg[30]_i_3 
       (.CI(\j_fu_74_reg[28]_i_1_n_0 ),
        .CO({\NLW_j_fu_74_reg[30]_i_3_CO_UNCONNECTED [3:1],\j_fu_74_reg[30]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_j_fu_74_reg[30]_i_3_O_UNCONNECTED [3:2],D[30:29]}),
        .S({1'b0,1'b0,p_0_in[30:29]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_74_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\j_fu_74_reg[4]_i_1_n_0 ,\j_fu_74_reg[4]_i_1_n_1 ,\j_fu_74_reg[4]_i_1_n_2 ,\j_fu_74_reg[4]_i_1_n_3 }),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[4:1]),
        .S(p_0_in[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_74_reg[8]_i_1 
       (.CI(\j_fu_74_reg[4]_i_1_n_0 ),
        .CO({\j_fu_74_reg[8]_i_1_n_0 ,\j_fu_74_reg[8]_i_1_n_1 ,\j_fu_74_reg[8]_i_1_n_2 ,\j_fu_74_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[8:5]),
        .S(p_0_in[8:5]));
  LUT6 #(
    .INIT(64'h00E2E2E2AAAAAAAA)) 
    \sof_2_reg_132[0]_i_1 
       (.I0(\sof_2_reg_132_reg[0]_1 ),
        .I1(ap_loop_init),
        .I2(\sof_2_reg_132_reg[0]_0 ),
        .I3(\icmp_ln121_reg_191_reg[0]_0 ),
        .I4(\icmp_ln121_reg_191_reg[0]_1 ),
        .I5(ap_block_pp0_stage0_subdone),
        .O(\sof_2_reg_132_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sof_2_reg_132[0]_i_2 
       (.I0(ap_loop_init_int),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .O(ap_loop_init));
  LUT6 #(
    .INIT(64'hFFFFFF800000FF80)) 
    \sof_reg_78[0]_i_1 
       (.I0(Q[0]),
        .I1(out_mat_cols_channel_empty_n),
        .I2(out_mat_rows_channel_empty_n),
        .I3(\sof_2_reg_132_reg[0]_0 ),
        .I4(ap_NS_fsm1),
        .I5(and_ln116_reg_189),
        .O(\ap_CS_fsm_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF0202020)) 
    \sof_reg_78[0]_i_2 
       (.I0(ap_done_cache),
        .I1(grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90_ap_start_reg),
        .I2(Q[2]),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(ap_block_pp0_stage0_subdone),
        .O(ap_NS_fsm1));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_flow_control_loop_pipe_sequential_init" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_flow_control_loop_pipe_sequential_init_18
   (D,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg_reg,
    ap_block_state1_pp0_stage0_iter0,
    E,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg,
    \B_V_data_1_state_reg[0] ,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg_0,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg,
    \ap_CS_fsm_reg[3] ,
    s_axis_video_TVALID_int_regslice,
    Q,
    ap_phi_mux_last_phi_fu_117_p40_in,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg,
    axi_data_2_fu_841__0,
    s_axis_video_TLAST_int_regslice,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_axi_last_out);
  output [1:0]D;
  output grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg_reg;
  output ap_block_state1_pp0_stage0_iter0;
  output [0:0]E;
  output grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg;
  output \B_V_data_1_state_reg[0] ;
  output grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg_0;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg;
  input \ap_CS_fsm_reg[3] ;
  input s_axis_video_TVALID_int_regslice;
  input [3:0]Q;
  input ap_phi_mux_last_phi_fu_117_p40_in;
  input grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg;
  input axi_data_2_fu_841__0;
  input s_axis_video_TLAST_int_regslice;
  input grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_axi_last_out;

  wire \B_V_data_1_state[1]_i_5_n_0 ;
  wire \B_V_data_1_state_reg[0] ;
  wire [1:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire \ap_CS_fsm[2]_i_2_n_0 ;
  wire \ap_CS_fsm_reg[3] ;
  wire ap_block_state1_pp0_stage0_iter0;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__3_n_0;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire ap_phi_mux_last_phi_fu_117_p40_in;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_data_2_fu_841__0;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg_0;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_axi_last_out;
  wire s_axis_video_TLAST_int_regslice;
  wire s_axis_video_TVALID_int_regslice;

  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \B_V_data_1_state[1]_i_3 
       (.I0(ap_phi_mux_last_phi_fu_117_p40_in),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .I2(s_axis_video_TVALID_int_regslice),
        .I3(Q[3]),
        .I4(ap_block_state1_pp0_stage0_iter0),
        .I5(\B_V_data_1_state[1]_i_5_n_0 ),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg_reg));
  LUT6 #(
    .INIT(64'h0404000400040004)) 
    \B_V_data_1_state[1]_i_5 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ap_loop_init_int),
        .I5(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg),
        .O(\B_V_data_1_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEAAFAAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(Q[0]),
        .I1(ap_loop_init_int),
        .I2(\ap_CS_fsm[2]_i_2_n_0 ),
        .I3(ap_done_cache),
        .I4(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg),
        .I5(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h73FF)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(s_axis_video_TVALID_int_regslice),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\ap_CS_fsm_reg[3] ),
        .O(\ap_CS_fsm[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00C08888)) 
    \ap_CS_fsm[3]_i_1__1 
       (.I0(ap_done_cache),
        .I1(Q[1]),
        .I2(\ap_CS_fsm_reg[3] ),
        .I3(ap_loop_init_int),
        .I4(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    ap_done_cache_i_1__3
       (.I0(\ap_CS_fsm_reg[3] ),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg),
        .I3(ap_done_cache),
        .O(ap_done_cache_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__3_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7D75FDF5)) 
    ap_loop_init_int_i_1
       (.I0(ap_rst_n),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(s_axis_video_TVALID_int_regslice),
        .O(ap_loop_init_int_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0000000)) 
    \axi_data_2_fu_84[29]_i_1 
       (.I0(\ap_CS_fsm_reg[3] ),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg),
        .I3(s_axis_video_TVALID_int_regslice),
        .I4(Q[1]),
        .I5(axi_data_2_fu_841__0),
        .O(E));
  LUT6 #(
    .INIT(64'hBFFFBFBF80008080)) 
    \axi_last_fu_54[0]_i_1 
       (.I0(s_axis_video_TLAST_int_regslice),
        .I1(s_axis_video_TVALID_int_regslice),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\ap_CS_fsm_reg[3] ),
        .I5(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_axi_last_out),
        .O(\B_V_data_1_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF8A)) 
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_i_1
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\ap_CS_fsm_reg[3] ),
        .I3(Q[0]),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \start_reg_83[0]_i_2 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\ap_CS_fsm_reg[3] ),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg_reg));
  LUT4 #(
    .INIT(16'hF020)) 
    \start_reg_83[0]_i_3 
       (.I0(\ap_CS_fsm_reg[3] ),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158_ap_start_reg),
        .I3(s_axis_video_TVALID_int_regslice),
        .O(ap_block_state1_pp0_stage0_iter0));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_flow_control_loop_pipe_sequential_init" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_flow_control_loop_pipe_sequential_init_19
   (ap_loop_init_int_reg_0,
    axi_data_2_fu_841__0,
    D,
    ap_phi_mux_last_phi_fu_117_p40_in,
    \B_V_data_1_state_reg[0] ,
    \axi_last_reg_103_reg[0] ,
    \ap_CS_fsm_reg[8] ,
    ap_rst_n_inv,
    ap_clk,
    Q,
    s_axis_video_TVALID_int_regslice,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out,
    last_reg_114,
    ap_rst_n,
    s_axis_video_TLAST_int_regslice,
    select_ln81_reg_378,
    axi_last_4_loc_fu_92);
  output ap_loop_init_int_reg_0;
  output axi_data_2_fu_841__0;
  output [1:0]D;
  output ap_phi_mux_last_phi_fu_117_p40_in;
  output \B_V_data_1_state_reg[0] ;
  output \axi_last_reg_103_reg[0] ;
  output \ap_CS_fsm_reg[8] ;
  input ap_rst_n_inv;
  input ap_clk;
  input [1:0]Q;
  input s_axis_video_TVALID_int_regslice;
  input grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg;
  input grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out;
  input last_reg_114;
  input ap_rst_n;
  input s_axis_video_TLAST_int_regslice;
  input select_ln81_reg_378;
  input axi_last_4_loc_fu_92;

  wire \B_V_data_1_state_reg[0] ;
  wire [1:0]D;
  wire [1:0]Q;
  wire \ap_CS_fsm[10]_i_2_n_0 ;
  wire \ap_CS_fsm_reg[8] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__2_n_0;
  wire ap_loop_init_int_i_1__1_n_0;
  wire ap_loop_init_int_reg_0;
  wire ap_phi_mux_last_phi_fu_117_p40_in;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_data_2_fu_841__0;
  wire axi_last_4_loc_fu_92;
  wire \axi_last_4_loc_fu_92[0]_i_2_n_0 ;
  wire \axi_last_reg_103_reg[0] ;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg;
  wire last_reg_114;
  wire s_axis_video_TLAST_int_regslice;
  wire s_axis_video_TVALID_int_regslice;
  wire select_ln81_reg_378;

  LUT4 #(
    .INIT(16'hEA2A)) 
    \B_V_data_1_state[1]_i_4 
       (.I0(last_reg_114),
        .I1(ap_loop_init_int_reg_0),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .I3(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out),
        .O(ap_phi_mux_last_phi_fu_117_p40_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5D00)) 
    \ap_CS_fsm[10]_i_1 
       (.I0(\ap_CS_fsm[10]_i_2_n_0 ),
        .I1(ap_done_cache),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .I3(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h737F)) 
    \ap_CS_fsm[10]_i_2 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .I2(ap_loop_init_int_reg_0),
        .I3(last_reg_114),
        .O(\ap_CS_fsm[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFB000)) 
    \ap_CS_fsm[9]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .I1(ap_done_cache),
        .I2(\ap_CS_fsm[10]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hEF2FE020)) 
    ap_done_cache_i_1__2
       (.I0(last_reg_114),
        .I1(ap_loop_init_int_reg_0),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .I3(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out),
        .I4(ap_done_cache),
        .O(ap_done_cache_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__2_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFDF55DF5FDF5FDF5)) 
    ap_loop_init_int_i_1__1
       (.I0(ap_rst_n),
        .I1(last_reg_114),
        .I2(ap_loop_init_int_reg_0),
        .I3(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .I4(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out),
        .I5(s_axis_video_TVALID_int_regslice),
        .O(ap_loop_init_int_i_1__1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__1_n_0),
        .Q(ap_loop_init_int_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA0800000A0808080)) 
    \axi_data_2_fu_84[29]_i_3 
       (.I0(Q[1]),
        .I1(s_axis_video_TVALID_int_regslice),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .I3(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out),
        .I4(ap_loop_init_int_reg_0),
        .I5(last_reg_114),
        .O(axi_data_2_fu_841__0));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \axi_last_4_loc_fu_92[0]_i_1 
       (.I0(last_reg_114),
        .I1(\axi_last_4_loc_fu_92[0]_i_2_n_0 ),
        .I2(select_ln81_reg_378),
        .I3(Q[1]),
        .I4(\ap_CS_fsm[10]_i_2_n_0 ),
        .I5(axi_last_4_loc_fu_92),
        .O(\axi_last_reg_103_reg[0] ));
  LUT2 #(
    .INIT(4'h7)) 
    \axi_last_4_loc_fu_92[0]_i_2 
       (.I0(ap_loop_init_int_reg_0),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .O(\axi_last_4_loc_fu_92[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08008800)) 
    \axi_last_reg_103[0]_i_1 
       (.I0(s_axis_video_TLAST_int_regslice),
        .I1(s_axis_video_TVALID_int_regslice),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out),
        .I3(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .I4(ap_loop_init_int_reg_0),
        .I5(last_reg_114),
        .O(\B_V_data_1_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hABAAFBAA)) 
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg_i_1
       (.I0(Q[0]),
        .I1(last_reg_114),
        .I2(ap_loop_init_int_reg_0),
        .I3(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206_ap_start_reg),
        .I4(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_last_out),
        .O(\ap_CS_fsm_reg[8] ));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_flow_control_loop_pipe_sequential_init" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_flow_control_loop_pipe_sequential_init_20
   (D,
    ap_enable_reg_pp0_iter1_reg,
    ap_loop_init,
    ap_rst_n_0,
    s_axis_video_TREADY_int_regslice__1,
    p_14_in,
    push,
    E,
    SR,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg,
    \icmp_ln62_reg_275_reg[0] ,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_1,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1,
    icmp_ln62_reg_275,
    \last_reg_153_reg[0] ,
    \last_reg_153_reg[0]_0 ,
    ap_rst_n,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg,
    CO,
    \B_V_data_1_state_reg[1] ,
    Q,
    in_mat_data_full_n,
    ap_done_cache_reg_0,
    \axi_last_3_fu_82_reg[0] ,
    \j_fu_78_reg[30] );
  output [30:0]D;
  output ap_enable_reg_pp0_iter1_reg;
  output ap_loop_init;
  output ap_rst_n_0;
  output s_axis_video_TREADY_int_regslice__1;
  output p_14_in;
  output push;
  output [0:0]E;
  output [0:0]SR;
  output [1:0]grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg;
  output \icmp_ln62_reg_275_reg[0] ;
  output [0:0]grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0;
  output grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_1;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1;
  input icmp_ln62_reg_275;
  input \last_reg_153_reg[0] ;
  input \last_reg_153_reg[0]_0 ;
  input ap_rst_n;
  input grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg;
  input [0:0]CO;
  input \B_V_data_1_state_reg[1] ;
  input [2:0]Q;
  input in_mat_data_full_n;
  input ap_done_cache_reg_0;
  input \axi_last_3_fu_82_reg[0] ;
  input [30:0]\j_fu_78_reg[30] ;

  wire \B_V_data_1_state_reg[1] ;
  wire [0:0]CO;
  wire [30:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm[7]_i_3_n_0 ;
  wire \ap_CS_fsm[7]_i_5_n_0 ;
  wire ap_block_pp0_stage0_11001__0;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__4_n_0;
  wire ap_done_cache_reg_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_loop_init;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_inv;
  wire \axi_last_3_fu_82_reg[0] ;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg;
  wire [1:0]grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg;
  wire [0:0]grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_1;
  wire icmp_ln62_reg_275;
  wire \icmp_ln62_reg_275_reg[0] ;
  wire in_mat_data_full_n;
  wire \j_fu_78[12]_i_3_n_0 ;
  wire \j_fu_78[12]_i_5_n_0 ;
  wire \j_fu_78[16]_i_3_n_0 ;
  wire \j_fu_78[16]_i_5_n_0 ;
  wire \j_fu_78[20]_i_3_n_0 ;
  wire \j_fu_78[20]_i_5_n_0 ;
  wire \j_fu_78[24]_i_3_n_0 ;
  wire \j_fu_78[24]_i_5_n_0 ;
  wire \j_fu_78[28]_i_3_n_0 ;
  wire \j_fu_78[28]_i_5_n_0 ;
  wire \j_fu_78[30]_i_5_n_0 ;
  wire \j_fu_78[4]_i_4_n_0 ;
  wire \j_fu_78[4]_i_6_n_0 ;
  wire \j_fu_78[8]_i_3_n_0 ;
  wire \j_fu_78[8]_i_5_n_0 ;
  wire \j_fu_78_reg[12]_i_1_n_0 ;
  wire \j_fu_78_reg[12]_i_1_n_1 ;
  wire \j_fu_78_reg[12]_i_1_n_2 ;
  wire \j_fu_78_reg[12]_i_1_n_3 ;
  wire \j_fu_78_reg[16]_i_1_n_0 ;
  wire \j_fu_78_reg[16]_i_1_n_1 ;
  wire \j_fu_78_reg[16]_i_1_n_2 ;
  wire \j_fu_78_reg[16]_i_1_n_3 ;
  wire \j_fu_78_reg[20]_i_1_n_0 ;
  wire \j_fu_78_reg[20]_i_1_n_1 ;
  wire \j_fu_78_reg[20]_i_1_n_2 ;
  wire \j_fu_78_reg[20]_i_1_n_3 ;
  wire \j_fu_78_reg[24]_i_1_n_0 ;
  wire \j_fu_78_reg[24]_i_1_n_1 ;
  wire \j_fu_78_reg[24]_i_1_n_2 ;
  wire \j_fu_78_reg[24]_i_1_n_3 ;
  wire \j_fu_78_reg[28]_i_1_n_0 ;
  wire \j_fu_78_reg[28]_i_1_n_1 ;
  wire \j_fu_78_reg[28]_i_1_n_2 ;
  wire \j_fu_78_reg[28]_i_1_n_3 ;
  wire [30:0]\j_fu_78_reg[30] ;
  wire \j_fu_78_reg[30]_i_3_n_3 ;
  wire \j_fu_78_reg[4]_i_1_n_0 ;
  wire \j_fu_78_reg[4]_i_1_n_1 ;
  wire \j_fu_78_reg[4]_i_1_n_2 ;
  wire \j_fu_78_reg[4]_i_1_n_3 ;
  wire \j_fu_78_reg[8]_i_1_n_0 ;
  wire \j_fu_78_reg[8]_i_1_n_1 ;
  wire \j_fu_78_reg[8]_i_1_n_2 ;
  wire \j_fu_78_reg[8]_i_1_n_3 ;
  wire \last_reg_153_reg[0] ;
  wire \last_reg_153_reg[0]_0 ;
  wire [30:0]p_0_in;
  wire p_14_in;
  wire push;
  wire s_axis_video_TREADY_int_regslice__1;
  wire [3:1]\NLW_j_fu_78_reg[30]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_j_fu_78_reg[30]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \B_V_data_1_state[1]_i_2 
       (.I0(\B_V_data_1_state_reg[1] ),
        .I1(ap_block_pp0_stage0_11001__0),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I5(p_14_in),
        .O(s_axis_video_TREADY_int_regslice__1));
  LUT5 #(
    .INIT(32'h00008000)) 
    \SRL_SIG[0][29]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(icmp_ln62_reg_275),
        .I2(in_mat_data_full_n),
        .I3(Q[1]),
        .I4(ap_block_pp0_stage0_11001__0),
        .O(push));
  LUT6 #(
    .INIT(64'hFFFABBBBAAAAAAAA)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(Q[0]),
        .I1(ap_done_cache),
        .I2(ap_block_pp0_stage0_11001__0),
        .I3(CO),
        .I4(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I5(Q[1]),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg[0]));
  LUT5 #(
    .INIT(32'h1F100000)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(CO),
        .I1(ap_block_pp0_stage0_11001__0),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I3(ap_done_cache),
        .I4(Q[1]),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg[1]));
  LUT6 #(
    .INIT(64'h880088000C00FFFF)) 
    \ap_CS_fsm[7]_i_2 
       (.I0(\ap_CS_fsm[7]_i_3_n_0 ),
        .I1(CO),
        .I2(\last_reg_153_reg[0] ),
        .I3(ap_done_cache_reg_0),
        .I4(in_mat_data_full_n),
        .I5(\ap_CS_fsm[7]_i_5_n_0 ),
        .O(ap_block_pp0_stage0_11001__0));
  LUT4 #(
    .INIT(16'h407F)) 
    \ap_CS_fsm[7]_i_3 
       (.I0(\axi_last_3_fu_82_reg[0] ),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I3(\last_reg_153_reg[0]_0 ),
        .O(\ap_CS_fsm[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ap_CS_fsm[7]_i_5 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(icmp_ln62_reg_275),
        .O(\ap_CS_fsm[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1F10)) 
    ap_done_cache_i_1__4
       (.I0(CO),
        .I1(ap_block_pp0_stage0_11001__0),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I3(ap_done_cache),
        .O(ap_done_cache_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__4_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h88A08800)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I3(ap_block_pp0_stage0_11001__0),
        .I4(CO),
        .O(ap_rst_n_0));
  LUT5 #(
    .INIT(32'hDD5DDDFD)) 
    ap_loop_init_int_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I3(ap_block_pp0_stage0_11001__0),
        .I4(CO),
        .O(ap_loop_init_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00A8)) 
    \axi_data_fu_86[29]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(ap_loop_init_int),
        .I3(ap_block_pp0_stage0_11001__0),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0));
  LUT6 #(
    .INIT(64'h4700000047FF0000)) 
    \axi_data_fu_86[29]_i_3 
       (.I0(\axi_last_3_fu_82_reg[0] ),
        .I1(ap_loop_init),
        .I2(\last_reg_153_reg[0]_0 ),
        .I3(\ap_CS_fsm[7]_i_5_n_0 ),
        .I4(CO),
        .I5(\last_reg_153_reg[0] ),
        .O(p_14_in));
  LUT4 #(
    .INIT(16'hFFE0)) 
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_i_1
       (.I0(CO),
        .I1(ap_block_pp0_stage0_11001__0),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I3(Q[0]),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_1));
  LUT2 #(
    .INIT(4'h8)) 
    icmp_ln62_fu_197_p2_carry_i_10
       (.I0(ap_loop_init_int),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(ap_loop_init));
  LUT3 #(
    .INIT(8'hE2)) 
    \icmp_ln62_reg_275[0]_i_1 
       (.I0(CO),
        .I1(ap_block_pp0_stage0_11001__0),
        .I2(icmp_ln62_reg_275),
        .O(\icmp_ln62_reg_275_reg[0] ));
  LUT2 #(
    .INIT(4'hB)) 
    \j_fu_78[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\j_fu_78_reg[30] [0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[12]_i_2 
       (.I0(\j_fu_78_reg[30] [12]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[12]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[12]_i_3 
       (.I0(\j_fu_78_reg[30] [11]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[12]_i_4 
       (.I0(\j_fu_78_reg[30] [10]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[10]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[12]_i_5 
       (.I0(\j_fu_78_reg[30] [9]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[16]_i_2 
       (.I0(\j_fu_78_reg[30] [16]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[16]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[16]_i_3 
       (.I0(\j_fu_78_reg[30] [15]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[16]_i_4 
       (.I0(\j_fu_78_reg[30] [14]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[14]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[16]_i_5 
       (.I0(\j_fu_78_reg[30] [13]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[20]_i_2 
       (.I0(\j_fu_78_reg[30] [20]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[20]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[20]_i_3 
       (.I0(\j_fu_78_reg[30] [19]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[20]_i_4 
       (.I0(\j_fu_78_reg[30] [18]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[18]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[20]_i_5 
       (.I0(\j_fu_78_reg[30] [17]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[24]_i_2 
       (.I0(\j_fu_78_reg[30] [24]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[24]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[24]_i_3 
       (.I0(\j_fu_78_reg[30] [23]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[24]_i_4 
       (.I0(\j_fu_78_reg[30] [22]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[22]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[24]_i_5 
       (.I0(\j_fu_78_reg[30] [21]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[28]_i_2 
       (.I0(\j_fu_78_reg[30] [28]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[28]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[28]_i_3 
       (.I0(\j_fu_78_reg[30] [27]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[28]_i_4 
       (.I0(\j_fu_78_reg[30] [26]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[26]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[28]_i_5 
       (.I0(\j_fu_78_reg[30] [25]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[28]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \j_fu_78[30]_i_1 
       (.I0(CO),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_block_pp0_stage0_11001__0),
        .I3(ap_loop_init_int),
        .O(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \j_fu_78[30]_i_2 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(CO),
        .I2(ap_block_pp0_stage0_11001__0),
        .O(E));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[30]_i_4 
       (.I0(\j_fu_78_reg[30] [30]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[30]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[30]_i_5 
       (.I0(\j_fu_78_reg[30] [29]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[30]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[4]_i_2 
       (.I0(\j_fu_78_reg[30] [0]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[4]_i_3 
       (.I0(\j_fu_78_reg[30] [4]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[4]_i_4 
       (.I0(\j_fu_78_reg[30] [3]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[4]_i_5 
       (.I0(\j_fu_78_reg[30] [2]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[4]_i_6 
       (.I0(\j_fu_78_reg[30] [1]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[8]_i_2 
       (.I0(\j_fu_78_reg[30] [8]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[8]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[8]_i_3 
       (.I0(\j_fu_78_reg[30] [7]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[8]_i_4 
       (.I0(\j_fu_78_reg[30] [6]),
        .I1(ap_loop_init_int),
        .I2(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_fu_78[8]_i_5 
       (.I0(\j_fu_78_reg[30] [5]),
        .I1(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\j_fu_78[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_78_reg[12]_i_1 
       (.CI(\j_fu_78_reg[8]_i_1_n_0 ),
        .CO({\j_fu_78_reg[12]_i_1_n_0 ,\j_fu_78_reg[12]_i_1_n_1 ,\j_fu_78_reg[12]_i_1_n_2 ,\j_fu_78_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[12:9]),
        .S({p_0_in[12],\j_fu_78[12]_i_3_n_0 ,p_0_in[10],\j_fu_78[12]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_78_reg[16]_i_1 
       (.CI(\j_fu_78_reg[12]_i_1_n_0 ),
        .CO({\j_fu_78_reg[16]_i_1_n_0 ,\j_fu_78_reg[16]_i_1_n_1 ,\j_fu_78_reg[16]_i_1_n_2 ,\j_fu_78_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[16:13]),
        .S({p_0_in[16],\j_fu_78[16]_i_3_n_0 ,p_0_in[14],\j_fu_78[16]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_78_reg[20]_i_1 
       (.CI(\j_fu_78_reg[16]_i_1_n_0 ),
        .CO({\j_fu_78_reg[20]_i_1_n_0 ,\j_fu_78_reg[20]_i_1_n_1 ,\j_fu_78_reg[20]_i_1_n_2 ,\j_fu_78_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[20:17]),
        .S({p_0_in[20],\j_fu_78[20]_i_3_n_0 ,p_0_in[18],\j_fu_78[20]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_78_reg[24]_i_1 
       (.CI(\j_fu_78_reg[20]_i_1_n_0 ),
        .CO({\j_fu_78_reg[24]_i_1_n_0 ,\j_fu_78_reg[24]_i_1_n_1 ,\j_fu_78_reg[24]_i_1_n_2 ,\j_fu_78_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[24:21]),
        .S({p_0_in[24],\j_fu_78[24]_i_3_n_0 ,p_0_in[22],\j_fu_78[24]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_78_reg[28]_i_1 
       (.CI(\j_fu_78_reg[24]_i_1_n_0 ),
        .CO({\j_fu_78_reg[28]_i_1_n_0 ,\j_fu_78_reg[28]_i_1_n_1 ,\j_fu_78_reg[28]_i_1_n_2 ,\j_fu_78_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[28:25]),
        .S({p_0_in[28],\j_fu_78[28]_i_3_n_0 ,p_0_in[26],\j_fu_78[28]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_78_reg[30]_i_3 
       (.CI(\j_fu_78_reg[28]_i_1_n_0 ),
        .CO({\NLW_j_fu_78_reg[30]_i_3_CO_UNCONNECTED [3:1],\j_fu_78_reg[30]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_j_fu_78_reg[30]_i_3_O_UNCONNECTED [3:2],D[30:29]}),
        .S({1'b0,1'b0,p_0_in[30],\j_fu_78[30]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_78_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\j_fu_78_reg[4]_i_1_n_0 ,\j_fu_78_reg[4]_i_1_n_1 ,\j_fu_78_reg[4]_i_1_n_2 ,\j_fu_78_reg[4]_i_1_n_3 }),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[4:1]),
        .S({p_0_in[4],\j_fu_78[4]_i_4_n_0 ,p_0_in[2],\j_fu_78[4]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_fu_78_reg[8]_i_1 
       (.CI(\j_fu_78_reg[4]_i_1_n_0 ),
        .CO({\j_fu_78_reg[8]_i_1_n_0 ,\j_fu_78_reg[8]_i_1_n_1 ,\j_fu_78_reg[8]_i_1_n_2 ,\j_fu_78_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[8:5]),
        .S({p_0_in[8],\j_fu_78[8]_i_3_n_0 ,p_0_in[6],\j_fu_78[8]_i_5_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFD5150000C000)) 
    \last_reg_153[0]_i_1 
       (.I0(ap_loop_init),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln62_reg_275),
        .I3(\last_reg_153_reg[0] ),
        .I4(ap_block_pp0_stage0_11001__0),
        .I5(\last_reg_153_reg[0]_0 ),
        .O(ap_enable_reg_pp0_iter1_reg));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_flow_control_loop_pipe_sequential_init" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_flow_control_loop_pipe_sequential_init_9
   (ap_done_cache_reg_0,
    xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready,
    ap_block_pp0_stage0_11001__0,
    \ap_CS_fsm_reg[4] ,
    SR,
    grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg_reg,
    p_8_in,
    ap_rst_n_inv,
    ap_clk,
    in_mat_rows_c_empty_n,
    in_mat_cols_c_empty_n,
    xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start,
    Q,
    grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg,
    ap_loop_exit_ready_pp0_iter4_reg,
    ap_rst_n,
    ap_enable_reg_pp0_iter3,
    cmp147_reg_1532_pp0_iter2_reg,
    ap_enable_reg_pp0_iter5,
    icmp_ln199_reg_1519_pp0_iter4_reg,
    out_mat_data_full_n,
    ap_done_cache_reg_1,
    in_mat_data_empty_n,
    \mOutPtr_reg[0] ,
    icmp_ln185_reg_1508);
  output [1:0]ap_done_cache_reg_0;
  output xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready;
  output ap_block_pp0_stage0_11001__0;
  output \ap_CS_fsm_reg[4] ;
  output [0:0]SR;
  output [0:0]grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg_reg;
  output p_8_in;
  input ap_rst_n_inv;
  input ap_clk;
  input in_mat_rows_c_empty_n;
  input in_mat_cols_c_empty_n;
  input xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start;
  input [2:0]Q;
  input grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg;
  input ap_loop_exit_ready_pp0_iter4_reg;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter3;
  input cmp147_reg_1532_pp0_iter2_reg;
  input ap_enable_reg_pp0_iter5;
  input icmp_ln199_reg_1519_pp0_iter4_reg;
  input out_mat_data_full_n;
  input ap_done_cache_reg_1;
  input in_mat_data_empty_n;
  input \mOutPtr_reg[0] ;
  input icmp_ln185_reg_1508;

  wire [2:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[4] ;
  wire ap_block_pp0_stage0_11001__0;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_0;
  wire [1:0]ap_done_cache_reg_0;
  wire ap_done_cache_reg_1;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter5;
  wire ap_loop_exit_ready_pp0_iter4_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__3_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire cmp147_reg_1532_pp0_iter2_reg;
  wire grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg;
  wire [0:0]grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg_reg;
  wire icmp_ln185_reg_1508;
  wire icmp_ln199_reg_1519_pp0_iter4_reg;
  wire in_mat_cols_c_empty_n;
  wire in_mat_data_empty_n;
  wire in_mat_rows_c_empty_n;
  wire \mOutPtr_reg[0] ;
  wire out_mat_data_full_n;
  wire p_8_in;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start;

  LUT6 #(
    .INIT(64'hFFFF7F007F007F00)) 
    \ap_CS_fsm[0]_i_1__1 
       (.I0(in_mat_rows_c_empty_n),
        .I1(in_mat_cols_c_empty_n),
        .I2(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .I3(Q[0]),
        .I4(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready),
        .I5(Q[2]),
        .O(ap_done_cache_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h2200F200)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(ap_done_cache),
        .I1(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg),
        .I2(ap_loop_exit_ready_pp0_iter4_reg),
        .I3(Q[2]),
        .I4(ap_block_pp0_stage0_11001__0),
        .O(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready));
  LUT6 #(
    .INIT(64'hFFFFFFFFDD000D00)) 
    \ap_CS_fsm[4]_i_1__1 
       (.I0(ap_done_cache),
        .I1(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg),
        .I2(ap_loop_exit_ready_pp0_iter4_reg),
        .I3(Q[2]),
        .I4(ap_block_pp0_stage0_11001__0),
        .I5(Q[1]),
        .O(ap_done_cache_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    ap_done_cache_i_1__0
       (.I0(ap_block_pp0_stage0_11001__0),
        .I1(ap_loop_exit_ready_pp0_iter4_reg),
        .I2(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg),
        .I3(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDDFFDD5D)) 
    ap_loop_init_int_i_1__3
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg),
        .I3(ap_block_pp0_stage0_11001__0),
        .I4(ap_loop_exit_ready_pp0_iter4_reg),
        .O(ap_loop_init_int_i_1__3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__3_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \col_index_1_fu_164[14]_i_1 
       (.I0(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(ap_block_pp0_stage0_11001__0),
        .O(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h0F080808)) 
    \empty_36_fu_128[2]_i_1 
       (.I0(ap_enable_reg_pp0_iter3),
        .I1(cmp147_reg_1532_pp0_iter2_reg),
        .I2(ap_block_pp0_stage0_11001__0),
        .I3(ap_loop_init_int),
        .I4(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg),
        .O(SR));
  LUT6 #(
    .INIT(64'hBF33BFBFFFFFFFFF)) 
    \mOutPtr[0]_i_2 
       (.I0(ap_block_pp0_stage0_11001__0),
        .I1(Q[2]),
        .I2(ap_loop_exit_ready_pp0_iter4_reg),
        .I3(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg),
        .I4(ap_done_cache),
        .I5(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .O(\ap_CS_fsm_reg[4] ));
  LUT2 #(
    .INIT(4'h2)) 
    \mOutPtr[0]_i_2__0 
       (.I0(\mOutPtr_reg[0] ),
        .I1(icmp_ln185_reg_1508),
        .O(p_8_in));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    ram_reg_i_29
       (.I0(ap_enable_reg_pp0_iter5),
        .I1(icmp_ln199_reg_1519_pp0_iter4_reg),
        .I2(out_mat_data_full_n),
        .I3(p_8_in),
        .I4(ap_done_cache_reg_1),
        .I5(in_mat_data_empty_n),
        .O(ap_block_pp0_stage0_11001__0));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_regslice_both" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_regslice_both
   (\B_V_data_1_state_reg[1]_0 ,
    s_axis_video_TVALID_int_regslice,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg,
    D,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0,
    ap_rst_n_inv,
    ap_clk,
    s_axis_video_TREADY_int_regslice__1,
    s_axis_video_TVALID,
    ap_rst_n,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg,
    \axi_data_2_fu_84_reg[29] ,
    \axi_data_2_fu_84_reg[0] ,
    p_14_in,
    Q,
    s_axis_video_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output s_axis_video_TVALID_int_regslice;
  output grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg;
  output [29:0]D;
  output [29:0]grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0;
  input ap_rst_n_inv;
  input ap_clk;
  input s_axis_video_TREADY_int_regslice__1;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg;
  input [29:0]\axi_data_2_fu_84_reg[29] ;
  input \axi_data_2_fu_84_reg[0] ;
  input p_14_in;
  input [29:0]Q;
  input [29:0]s_axis_video_TDATA;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A_reg_n_0_[0] ;
  wire \B_V_data_1_payload_A_reg_n_0_[10] ;
  wire \B_V_data_1_payload_A_reg_n_0_[11] ;
  wire \B_V_data_1_payload_A_reg_n_0_[12] ;
  wire \B_V_data_1_payload_A_reg_n_0_[13] ;
  wire \B_V_data_1_payload_A_reg_n_0_[14] ;
  wire \B_V_data_1_payload_A_reg_n_0_[15] ;
  wire \B_V_data_1_payload_A_reg_n_0_[16] ;
  wire \B_V_data_1_payload_A_reg_n_0_[17] ;
  wire \B_V_data_1_payload_A_reg_n_0_[18] ;
  wire \B_V_data_1_payload_A_reg_n_0_[19] ;
  wire \B_V_data_1_payload_A_reg_n_0_[1] ;
  wire \B_V_data_1_payload_A_reg_n_0_[20] ;
  wire \B_V_data_1_payload_A_reg_n_0_[21] ;
  wire \B_V_data_1_payload_A_reg_n_0_[22] ;
  wire \B_V_data_1_payload_A_reg_n_0_[23] ;
  wire \B_V_data_1_payload_A_reg_n_0_[24] ;
  wire \B_V_data_1_payload_A_reg_n_0_[25] ;
  wire \B_V_data_1_payload_A_reg_n_0_[26] ;
  wire \B_V_data_1_payload_A_reg_n_0_[27] ;
  wire \B_V_data_1_payload_A_reg_n_0_[28] ;
  wire \B_V_data_1_payload_A_reg_n_0_[29] ;
  wire \B_V_data_1_payload_A_reg_n_0_[2] ;
  wire \B_V_data_1_payload_A_reg_n_0_[3] ;
  wire \B_V_data_1_payload_A_reg_n_0_[4] ;
  wire \B_V_data_1_payload_A_reg_n_0_[5] ;
  wire \B_V_data_1_payload_A_reg_n_0_[6] ;
  wire \B_V_data_1_payload_A_reg_n_0_[7] ;
  wire \B_V_data_1_payload_A_reg_n_0_[8] ;
  wire \B_V_data_1_payload_A_reg_n_0_[9] ;
  wire \B_V_data_1_payload_B_reg_n_0_[0] ;
  wire \B_V_data_1_payload_B_reg_n_0_[10] ;
  wire \B_V_data_1_payload_B_reg_n_0_[11] ;
  wire \B_V_data_1_payload_B_reg_n_0_[12] ;
  wire \B_V_data_1_payload_B_reg_n_0_[13] ;
  wire \B_V_data_1_payload_B_reg_n_0_[14] ;
  wire \B_V_data_1_payload_B_reg_n_0_[15] ;
  wire \B_V_data_1_payload_B_reg_n_0_[16] ;
  wire \B_V_data_1_payload_B_reg_n_0_[17] ;
  wire \B_V_data_1_payload_B_reg_n_0_[18] ;
  wire \B_V_data_1_payload_B_reg_n_0_[19] ;
  wire \B_V_data_1_payload_B_reg_n_0_[1] ;
  wire \B_V_data_1_payload_B_reg_n_0_[20] ;
  wire \B_V_data_1_payload_B_reg_n_0_[21] ;
  wire \B_V_data_1_payload_B_reg_n_0_[22] ;
  wire \B_V_data_1_payload_B_reg_n_0_[23] ;
  wire \B_V_data_1_payload_B_reg_n_0_[24] ;
  wire \B_V_data_1_payload_B_reg_n_0_[25] ;
  wire \B_V_data_1_payload_B_reg_n_0_[26] ;
  wire \B_V_data_1_payload_B_reg_n_0_[27] ;
  wire \B_V_data_1_payload_B_reg_n_0_[28] ;
  wire \B_V_data_1_payload_B_reg_n_0_[29] ;
  wire \B_V_data_1_payload_B_reg_n_0_[2] ;
  wire \B_V_data_1_payload_B_reg_n_0_[3] ;
  wire \B_V_data_1_payload_B_reg_n_0_[4] ;
  wire \B_V_data_1_payload_B_reg_n_0_[5] ;
  wire \B_V_data_1_payload_B_reg_n_0_[6] ;
  wire \B_V_data_1_payload_B_reg_n_0_[7] ;
  wire \B_V_data_1_payload_B_reg_n_0_[8] ;
  wire \B_V_data_1_payload_B_reg_n_0_[9] ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__1_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__1_n_0 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [29:0]D;
  wire [29:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \axi_data_2_fu_84_reg[0] ;
  wire [29:0]\axi_data_2_fu_84_reg[29] ;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg;
  wire [29:0]grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0;
  wire p_14_in;
  wire [29:0]s_axis_video_TDATA;
  wire s_axis_video_TREADY_int_regslice__1;
  wire s_axis_video_TVALID;
  wire s_axis_video_TVALID_int_regslice;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[29]_i_1 
       (.I0(s_axis_video_TVALID_int_regslice),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[0]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[10]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[11]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[12]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[13]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[14]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[15]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[16]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[17]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[18]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[19]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[1]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[20]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[21]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[22]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[23]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[24]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[25]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[26]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[27]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[28]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[29]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[2]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[3]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[4]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[5]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[6]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[7]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[8]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(s_axis_video_TDATA[9]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \B_V_data_1_payload_B[29]_i_1 
       (.I0(s_axis_video_TVALID_int_regslice),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[0]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[10]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[11]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[12]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[13]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[14]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[15]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[16]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[17]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[18]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[19]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[1]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[20]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[21]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[22]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[23]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[24]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[25]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[26]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[27]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[28]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[29]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[2]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[3]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[4]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[5]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[6]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[7]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[8]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(s_axis_video_TDATA[9]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__1
       (.I0(s_axis_video_TREADY_int_regslice__1),
        .I1(s_axis_video_TVALID_int_regslice),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__1_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__1_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1
       (.I0(s_axis_video_TVALID),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA2A0AA00)) 
    \B_V_data_1_state[0]_i_1__1 
       (.I0(ap_rst_n),
        .I1(s_axis_video_TREADY_int_regslice__1),
        .I2(s_axis_video_TVALID),
        .I3(s_axis_video_TVALID_int_regslice),
        .I4(\B_V_data_1_state_reg[1]_0 ),
        .O(\B_V_data_1_state[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBFBB)) 
    \B_V_data_1_state[1]_i_1__1 
       (.I0(s_axis_video_TREADY_int_regslice__1),
        .I1(s_axis_video_TVALID_int_regslice),
        .I2(s_axis_video_TVALID),
        .I3(\B_V_data_1_state_reg[1]_0 ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__1_n_0 ),
        .Q(s_axis_video_TVALID_int_regslice),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[7]_i_4 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(s_axis_video_TVALID_int_regslice),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[0]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [0]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[10]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [10]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[11]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [11]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[12]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [12]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[13]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [13]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[14]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [14]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[15]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [15]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[16]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [16]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[17]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [17]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[18]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [18]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[19]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [19]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[1]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [1]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[20]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [20]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[21]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [21]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[22]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [22]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[23]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [23]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[24]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [24]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[24] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[24] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[25]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [25]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[25] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[25] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[26]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [26]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[26] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[26] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[27]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [27]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[27] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[27] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[28]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [28]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[28] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[28] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[29]_i_2 
       (.I0(\axi_data_2_fu_84_reg[29] [29]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[29] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[29] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[2]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [2]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[3]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [3]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[4]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [4]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[5]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [5]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[6]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [6]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[7]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [7]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[8]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [8]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \axi_data_2_fu_84[9]_i_1 
       (.I0(\axi_data_2_fu_84_reg[29] [9]),
        .I1(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .I2(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I3(\axi_data_2_fu_84_reg[0] ),
        .I4(B_V_data_1_sel),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[0]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[0]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[10]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .I3(Q[10]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[10]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[11]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .I3(Q[11]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[11]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[12]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .I3(Q[12]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[12]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[13]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .I3(Q[13]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[13]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[14]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .I3(Q[14]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[14]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[15]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .I3(Q[15]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[15]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[16]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .I3(Q[16]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[16]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[17]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .I3(Q[17]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[17]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[18]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .I3(Q[18]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[18]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[19]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .I3(Q[19]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[19]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[1]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I3(Q[1]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[1]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[20]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .I3(Q[20]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[20]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[21]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .I3(Q[21]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[21]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[22]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .I3(Q[22]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[22]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[23]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .I3(Q[23]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[23]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[24]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[24] ),
        .I3(Q[24]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[24] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[24]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[25]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[25] ),
        .I3(Q[25]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[25] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[25]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[26]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[26] ),
        .I3(Q[26]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[26] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[26]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[27]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[27] ),
        .I3(Q[27]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[27] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[27]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[28]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[28] ),
        .I3(Q[28]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[28] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[28]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[29]_i_2 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[29] ),
        .I3(Q[29]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[29] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[29]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[2]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .I3(Q[2]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[2]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[3]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .I3(Q[3]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[3]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[4]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .I3(Q[4]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[4]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[5]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .I3(Q[5]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[5]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[6]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .I3(Q[6]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[6]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[7]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .I3(Q[7]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[7]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[8]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .I3(Q[8]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[8]));
  LUT6 #(
    .INIT(64'hFF887700F780F780)) 
    \axi_data_fu_86[9]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .I3(Q[9]),
        .I4(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I5(B_V_data_1_sel),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg_0[9]));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_regslice_both" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_regslice_both__parameterized1
   (m_axis_video_TLAST,
    ap_rst_n_inv,
    ap_clk,
    B_V_data_1_sel_wr_reg_0,
    m_axis_video_TREADY,
    ap_rst_n,
    axi_last_reg_195);
  output [0:0]m_axis_video_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input B_V_data_1_sel_wr_reg_0;
  input m_axis_video_TREADY;
  input ap_rst_n;
  input axi_last_reg_195;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__3_n_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1__2_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__4_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__4_n_0;
  wire B_V_data_1_sel_wr_reg_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__3_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_last_reg_195;
  wire [0:0]m_axis_video_TLAST;
  wire m_axis_video_TREADY;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1__3 
       (.I0(axi_last_reg_195),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__3_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__3_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \B_V_data_1_payload_B[0]_i_1__2 
       (.I0(axi_last_reg_195),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1__2_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1__2_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__4
       (.I0(m_axis_video_TREADY),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__4_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__4_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__4
       (.I0(B_V_data_1_sel_wr_reg_0),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__4_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__4_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA2AA8080)) 
    \B_V_data_1_state[0]_i_1__3 
       (.I0(ap_rst_n),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr_reg_0),
        .I3(m_axis_video_TREADY),
        .I4(\B_V_data_1_state_reg_n_0_[0] ),
        .O(\B_V_data_1_state[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hF7F5)) 
    \B_V_data_1_state[1]_i_1__2 
       (.I0(\B_V_data_1_state_reg_n_0_[0] ),
        .I1(B_V_data_1_sel_wr_reg_0),
        .I2(m_axis_video_TREADY),
        .I3(\B_V_data_1_state_reg_n_0_[1] ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__3_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_TLAST[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(m_axis_video_TLAST));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_regslice_both" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_regslice_both__parameterized1_14
   (m_axis_video_TUSER,
    ap_rst_n_inv,
    ap_clk,
    B_V_data_1_sel_wr_reg_0,
    m_axis_video_TREADY,
    ap_rst_n,
    \B_V_data_1_payload_A_reg[0]_0 );
  output [0:0]m_axis_video_TUSER;
  input ap_rst_n_inv;
  input ap_clk;
  input B_V_data_1_sel_wr_reg_0;
  input m_axis_video_TREADY;
  input ap_rst_n;
  input \B_V_data_1_payload_A_reg[0]_0 ;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__2_n_0 ;
  wire \B_V_data_1_payload_A_reg[0]_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1__1_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__3_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__3_n_0;
  wire B_V_data_1_sel_wr_reg_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__4_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire m_axis_video_TREADY;
  wire [0:0]m_axis_video_TUSER;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1__2 
       (.I0(\B_V_data_1_payload_A_reg[0]_0 ),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__2_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__2_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \B_V_data_1_payload_B[0]_i_1__1 
       (.I0(\B_V_data_1_payload_A_reg[0]_0 ),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1__1_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1__1_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__3
       (.I0(m_axis_video_TREADY),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__3_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__3_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__3
       (.I0(B_V_data_1_sel_wr_reg_0),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__3_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__3_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA2AA8080)) 
    \B_V_data_1_state[0]_i_1__4 
       (.I0(ap_rst_n),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr_reg_0),
        .I3(m_axis_video_TREADY),
        .I4(\B_V_data_1_state_reg_n_0_[0] ),
        .O(\B_V_data_1_state[0]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hF7F5)) 
    \B_V_data_1_state[1]_i_1__3 
       (.I0(\B_V_data_1_state_reg_n_0_[0] ),
        .I1(B_V_data_1_sel_wr_reg_0),
        .I2(m_axis_video_TREADY),
        .I3(\B_V_data_1_state_reg_n_0_[1] ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__4_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_TUSER[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(m_axis_video_TUSER));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_regslice_both" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_regslice_both__parameterized1_16
   (s_axis_video_TLAST_int_regslice,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg,
    ap_rst_n_inv,
    ap_clk,
    s_axis_video_TREADY_int_regslice__1,
    s_axis_video_TVALID,
    ap_rst_n,
    s_axis_video_TLAST,
    grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg,
    p_14_in,
    axi_last_2_reg_148);
  output s_axis_video_TLAST_int_regslice;
  output grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg;
  input ap_rst_n_inv;
  input ap_clk;
  input s_axis_video_TREADY_int_regslice__1;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input [0:0]s_axis_video_TLAST;
  input grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg;
  input p_14_in;
  input axi_last_2_reg_148;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__1_n_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1__0_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__1_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axi_last_2_reg_148;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg;
  wire grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg;
  wire p_14_in;
  wire [0:0]s_axis_video_TLAST;
  wire s_axis_video_TLAST_int_regslice;
  wire s_axis_video_TREADY_int_regslice__1;
  wire s_axis_video_TVALID;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1__1 
       (.I0(s_axis_video_TLAST),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__1_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__1_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \B_V_data_1_payload_B[0]_i_1__0 
       (.I0(s_axis_video_TLAST),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1__0_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1__0_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1
       (.I0(s_axis_video_TREADY_int_regslice__1),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__1
       (.I0(s_axis_video_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__1_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__1_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA2A0AA00)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(s_axis_video_TREADY_int_regslice__1),
        .I2(s_axis_video_TVALID),
        .I3(\B_V_data_1_state_reg_n_0_[0] ),
        .I4(\B_V_data_1_state_reg_n_0_[1] ),
        .O(\B_V_data_1_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFBB)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(s_axis_video_TREADY_int_regslice__1),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(s_axis_video_TVALID),
        .I3(\B_V_data_1_state_reg_n_0_[1] ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \axi_last_3_fu_82[0]_i_1 
       (.I0(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg),
        .I1(p_14_in),
        .I2(B_V_data_1_payload_B),
        .I3(B_V_data_1_sel),
        .I4(B_V_data_1_payload_A),
        .I5(axi_last_2_reg_148),
        .O(grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178_ap_start_reg_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_last_fu_54[0]_i_2 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(s_axis_video_TLAST_int_regslice));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_regslice_both" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_regslice_both__parameterized1_17
   (\B_V_data_1_payload_B_reg[0]_0 ,
    ap_rst_n_inv,
    ap_clk,
    s_axis_video_TREADY_int_regslice__1,
    s_axis_video_TVALID,
    ap_rst_n,
    s_axis_video_TUSER,
    \start_reg_83_reg[0] ,
    ap_block_state1_pp0_stage0_iter0,
    start_reg_83);
  output \B_V_data_1_payload_B_reg[0]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input s_axis_video_TREADY_int_regslice__1;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input [0:0]s_axis_video_TUSER;
  input \start_reg_83_reg[0] ;
  input ap_block_state1_pp0_stage0_iter0;
  input start_reg_83;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__0_n_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1_n_0 ;
  wire \B_V_data_1_payload_B_reg[0]_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__0_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__0_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__0_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire ap_block_state1_pp0_stage0_iter0;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire s_axis_video_TREADY_int_regslice__1;
  wire [0:0]s_axis_video_TUSER;
  wire s_axis_video_TVALID;
  wire start_reg_83;
  wire \start_reg_83_reg[0] ;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1__0 
       (.I0(s_axis_video_TUSER),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__0_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__0_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \B_V_data_1_payload_B[0]_i_1 
       (.I0(s_axis_video_TUSER),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__0
       (.I0(s_axis_video_TREADY_int_regslice__1),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__0_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__0_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__0
       (.I0(s_axis_video_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__0_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__0_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA2A0AA00)) 
    \B_V_data_1_state[0]_i_1__0 
       (.I0(ap_rst_n),
        .I1(s_axis_video_TREADY_int_regslice__1),
        .I2(s_axis_video_TVALID),
        .I3(\B_V_data_1_state_reg_n_0_[0] ),
        .I4(\B_V_data_1_state_reg_n_0_[1] ),
        .O(\B_V_data_1_state[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBFBB)) 
    \B_V_data_1_state[1]_i_1__0 
       (.I0(s_axis_video_TREADY_int_regslice__1),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(s_axis_video_TVALID),
        .I3(\B_V_data_1_state_reg_n_0_[1] ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__0_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \start_reg_83[0]_i_1 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .I3(\start_reg_83_reg[0] ),
        .I4(ap_block_state1_pp0_stage0_iter0),
        .I5(start_reg_83),
        .O(\B_V_data_1_payload_B_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_regslice_both" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_regslice_both__parameterized2
   (m_axis_video_TREADY_int_regslice,
    \B_V_data_1_state_reg[0]_0 ,
    D,
    ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready,
    empty_n_reg,
    mOutPtr16_out,
    empty_n_reg_0,
    mOutPtr16_out_0,
    m_axis_video_TDATA,
    ap_rst_n_inv,
    ap_clk,
    Q,
    out_mat_rows_channel_empty_n,
    out_mat_cols_channel_empty_n,
    CO,
    m_axis_video_TREADY,
    push_2,
    push_3,
    ap_rst_n,
    \B_V_data_1_state_reg[1]_0 ,
    out_mat_data_empty_n,
    icmp_ln121_reg_191,
    ap_enable_reg_pp0_iter1,
    \B_V_data_1_payload_B_reg[23]_0 );
  output m_axis_video_TREADY_int_regslice;
  output \B_V_data_1_state_reg[0]_0 ;
  output [1:0]D;
  output ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready;
  output empty_n_reg;
  output mOutPtr16_out;
  output empty_n_reg_0;
  output mOutPtr16_out_0;
  output [23:0]m_axis_video_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input [3:0]Q;
  input out_mat_rows_channel_empty_n;
  input out_mat_cols_channel_empty_n;
  input [0:0]CO;
  input m_axis_video_TREADY;
  input push_2;
  input push_3;
  input ap_rst_n;
  input \B_V_data_1_state_reg[1]_0 ;
  input out_mat_data_empty_n;
  input icmp_ln121_reg_191;
  input ap_enable_reg_pp0_iter1;
  input [23:0]\B_V_data_1_payload_B_reg[23]_0 ;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A_reg_n_0_[0] ;
  wire \B_V_data_1_payload_A_reg_n_0_[10] ;
  wire \B_V_data_1_payload_A_reg_n_0_[11] ;
  wire \B_V_data_1_payload_A_reg_n_0_[12] ;
  wire \B_V_data_1_payload_A_reg_n_0_[13] ;
  wire \B_V_data_1_payload_A_reg_n_0_[14] ;
  wire \B_V_data_1_payload_A_reg_n_0_[15] ;
  wire \B_V_data_1_payload_A_reg_n_0_[16] ;
  wire \B_V_data_1_payload_A_reg_n_0_[17] ;
  wire \B_V_data_1_payload_A_reg_n_0_[18] ;
  wire \B_V_data_1_payload_A_reg_n_0_[19] ;
  wire \B_V_data_1_payload_A_reg_n_0_[1] ;
  wire \B_V_data_1_payload_A_reg_n_0_[20] ;
  wire \B_V_data_1_payload_A_reg_n_0_[21] ;
  wire \B_V_data_1_payload_A_reg_n_0_[22] ;
  wire \B_V_data_1_payload_A_reg_n_0_[23] ;
  wire \B_V_data_1_payload_A_reg_n_0_[2] ;
  wire \B_V_data_1_payload_A_reg_n_0_[3] ;
  wire \B_V_data_1_payload_A_reg_n_0_[4] ;
  wire \B_V_data_1_payload_A_reg_n_0_[5] ;
  wire \B_V_data_1_payload_A_reg_n_0_[6] ;
  wire \B_V_data_1_payload_A_reg_n_0_[7] ;
  wire \B_V_data_1_payload_A_reg_n_0_[8] ;
  wire \B_V_data_1_payload_A_reg_n_0_[9] ;
  wire [23:0]\B_V_data_1_payload_B_reg[23]_0 ;
  wire \B_V_data_1_payload_B_reg_n_0_[0] ;
  wire \B_V_data_1_payload_B_reg_n_0_[10] ;
  wire \B_V_data_1_payload_B_reg_n_0_[11] ;
  wire \B_V_data_1_payload_B_reg_n_0_[12] ;
  wire \B_V_data_1_payload_B_reg_n_0_[13] ;
  wire \B_V_data_1_payload_B_reg_n_0_[14] ;
  wire \B_V_data_1_payload_B_reg_n_0_[15] ;
  wire \B_V_data_1_payload_B_reg_n_0_[16] ;
  wire \B_V_data_1_payload_B_reg_n_0_[17] ;
  wire \B_V_data_1_payload_B_reg_n_0_[18] ;
  wire \B_V_data_1_payload_B_reg_n_0_[19] ;
  wire \B_V_data_1_payload_B_reg_n_0_[1] ;
  wire \B_V_data_1_payload_B_reg_n_0_[20] ;
  wire \B_V_data_1_payload_B_reg_n_0_[21] ;
  wire \B_V_data_1_payload_B_reg_n_0_[22] ;
  wire \B_V_data_1_payload_B_reg_n_0_[23] ;
  wire \B_V_data_1_payload_B_reg_n_0_[2] ;
  wire \B_V_data_1_payload_B_reg_n_0_[3] ;
  wire \B_V_data_1_payload_B_reg_n_0_[4] ;
  wire \B_V_data_1_payload_B_reg_n_0_[5] ;
  wire \B_V_data_1_payload_B_reg_n_0_[6] ;
  wire \B_V_data_1_payload_B_reg_n_0_[7] ;
  wire \B_V_data_1_payload_B_reg_n_0_[8] ;
  wire \B_V_data_1_payload_B_reg_n_0_[9] ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__2_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__2_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__2_n_0 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [0:0]CO;
  wire ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready;
  wire [1:0]D;
  wire [3:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire empty_n_reg;
  wire empty_n_reg_0;
  wire icmp_ln121_reg_191;
  wire mOutPtr16_out;
  wire mOutPtr16_out_0;
  wire [23:0]m_axis_video_TDATA;
  wire m_axis_video_TREADY;
  wire m_axis_video_TREADY_int_regslice;
  wire out_mat_cols_channel_empty_n;
  wire out_mat_data_empty_n;
  wire out_mat_rows_channel_empty_n;
  wire push_2;
  wire push_3;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[23]_i_1 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(m_axis_video_TREADY_int_regslice),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [0]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [10]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [11]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [12]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [13]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [14]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [15]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [16]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [17]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [18]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [19]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [1]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [20]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [21]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [22]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [23]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [2]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [3]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [4]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [5]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [6]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [7]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [8]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_B_reg[23]_0 [9]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \B_V_data_1_payload_B[23]_i_1 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(m_axis_video_TREADY_int_regslice),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [0]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [10]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [11]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [12]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [13]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [14]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [15]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [16]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [17]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [18]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [19]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [1]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [20]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [21]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [22]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [23]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [2]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [3]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [4]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [5]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [6]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [7]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [8]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_B_reg[23]_0 [9]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__2
       (.I0(m_axis_video_TREADY),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__2_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__2_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    B_V_data_1_sel_wr_i_1__2
       (.I0(Q[2]),
        .I1(m_axis_video_TREADY_int_regslice),
        .I2(out_mat_data_empty_n),
        .I3(icmp_ln121_reg_191),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__2_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__2_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8AAA8080)) 
    \B_V_data_1_state[0]_i_1__2 
       (.I0(ap_rst_n),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(m_axis_video_TREADY_int_regslice),
        .I3(m_axis_video_TREADY),
        .I4(\B_V_data_1_state_reg[0]_0 ),
        .O(\B_V_data_1_state[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hF7F5)) 
    \B_V_data_1_state[1]_i_1__4 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(m_axis_video_TREADY),
        .I3(m_axis_video_TREADY_int_regslice),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__2_n_0 ),
        .Q(\B_V_data_1_state_reg[0]_0 ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(m_axis_video_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFF2A2A2A)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(Q[0]),
        .I1(out_mat_rows_channel_empty_n),
        .I2(out_mat_cols_channel_empty_n),
        .I3(Q[3]),
        .I4(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4FFF444444444444)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(CO),
        .I1(Q[1]),
        .I2(m_axis_video_TREADY),
        .I3(m_axis_video_TREADY_int_regslice),
        .I4(\B_V_data_1_state_reg[0]_0 ),
        .I5(Q[3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000080AA0000)) 
    full_n_i_2
       (.I0(out_mat_cols_channel_empty_n),
        .I1(m_axis_video_TREADY),
        .I2(m_axis_video_TREADY_int_regslice),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .I4(Q[3]),
        .I5(push_2),
        .O(empty_n_reg));
  LUT6 #(
    .INIT(64'h0000000080AA0000)) 
    full_n_i_2__0
       (.I0(out_mat_rows_channel_empty_n),
        .I1(m_axis_video_TREADY),
        .I2(m_axis_video_TREADY_int_regslice),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .I4(Q[3]),
        .I5(push_3),
        .O(empty_n_reg_0));
  LUT6 #(
    .INIT(64'h7F55FFFF00000000)) 
    full_n_i_3
       (.I0(out_mat_cols_channel_empty_n),
        .I1(m_axis_video_TREADY),
        .I2(m_axis_video_TREADY_int_regslice),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .I4(Q[3]),
        .I5(push_2),
        .O(mOutPtr16_out));
  LUT6 #(
    .INIT(64'h7F55FFFF00000000)) 
    full_n_i_3__0
       (.I0(out_mat_rows_channel_empty_n),
        .I1(m_axis_video_TREADY),
        .I2(m_axis_video_TREADY_int_regslice),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .I4(Q[3]),
        .I5(push_3),
        .O(mOutPtr16_out_0));
  LUT4 #(
    .INIT(16'h8F00)) 
    \int_isr[0]_i_3 
       (.I0(m_axis_video_TREADY),
        .I1(m_axis_video_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(Q[3]),
        .O(ColorMat2AXIvideo_16_1080_1920_1_2_U0_ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[0]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[10]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[11]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[12]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[13]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[14]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[15]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[16]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[17]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[18]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[19]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[1]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[20]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[21]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[22]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[23]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[2]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[3]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[4]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[5]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[6]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[7]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[8]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_video_TDATA[9]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .I2(B_V_data_1_sel),
        .O(m_axis_video_TDATA[9]));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0
   (xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start,
    start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n,
    ap_rst_n_inv,
    ap_clk,
    in_mat_rows_c9_channel_empty_n,
    in_mat_cols_c10_channel_empty_n,
    start_once_reg,
    xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready,
    \mOutPtr_reg[0]_0 );
  output xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start;
  output start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n;
  input ap_rst_n_inv;
  input ap_clk;
  input in_mat_rows_c9_channel_empty_n;
  input in_mat_cols_c10_channel_empty_n;
  input start_once_reg;
  input xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready;
  input \mOutPtr_reg[0]_0 ;

  wire ap_clk;
  wire ap_rst_n_inv;
  wire empty_n_i_1__7_n_0;
  wire full_n_i_1__7_n_0;
  wire in_mat_cols_c10_channel_empty_n;
  wire in_mat_rows_c9_channel_empty_n;
  wire mOutPtr0__2;
  wire mOutPtr17_out;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n;
  wire start_once_reg;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start;

  LUT5 #(
    .INIT(32'hFFEFFF00)) 
    empty_n_i_1__7
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(mOutPtr0__2),
        .I3(mOutPtr17_out),
        .I4(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .O(empty_n_i_1__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__7_n_0),
        .Q(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFF3AAA2)) 
    full_n_i_1__7
       (.I0(mOutPtr0__2),
        .I1(mOutPtr17_out),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n),
        .O(full_n_i_1__7_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__7_n_0),
        .Q(start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n),
        .S(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF7FF08000800F7FF)) 
    \mOutPtr[0]_i_1 
       (.I0(in_mat_rows_c9_channel_empty_n),
        .I1(in_mat_cols_c10_channel_empty_n),
        .I2(start_once_reg),
        .I3(start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n),
        .I4(\mOutPtr_reg[0]_0 ),
        .I5(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6798)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(mOutPtr17_out),
        .I2(mOutPtr0__2),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000700000000000)) 
    \mOutPtr[1]_i_2 
       (.I0(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .I1(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready),
        .I2(in_mat_rows_c9_channel_empty_n),
        .I3(in_mat_cols_c10_channel_empty_n),
        .I4(start_once_reg),
        .I5(start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n),
        .O(mOutPtr17_out));
  LUT6 #(
    .INIT(64'hF7FF000000000000)) 
    \mOutPtr[1]_i_3 
       (.I0(in_mat_rows_c9_channel_empty_n),
        .I1(in_mat_cols_c10_channel_empty_n),
        .I2(start_once_reg),
        .I3(start_for_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_full_n),
        .I4(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .I5(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready),
        .O(mOutPtr0__2));
  FDSE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s
   (icmp_ln185_reg_1508,
    icmp_ln199_reg_1519,
    empty_n_reg,
    \ap_CS_fsm_reg[0]_0 ,
    Q,
    pop__0,
    xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready,
    \ap_CS_fsm_reg[4]_0 ,
    ap_enable_reg_pp0_iter5_reg,
    \write_word_reg_1691_reg[23] ,
    ap_clk,
    E,
    A,
    ap_rst_n_inv,
    in_mat_data_empty_n,
    push,
    \mOutPtr_reg[0] ,
    xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start,
    int_ap_idle_reg,
    out_mat_rows_channel_empty_n,
    Block_entry1_proc_U0_ap_start,
    int_ap_idle_reg_0,
    ap_rst_n,
    in_mat_rows_c_empty_n,
    in_mat_cols_c_empty_n,
    out_mat_data_full_n,
    D,
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] );
  output icmp_ln185_reg_1508;
  output icmp_ln199_reg_1519;
  output empty_n_reg;
  output \ap_CS_fsm_reg[0]_0 ;
  output [0:0]Q;
  output pop__0;
  output xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready;
  output \ap_CS_fsm_reg[4]_0 ;
  output [0:0]ap_enable_reg_pp0_iter5_reg;
  output [23:0]\write_word_reg_1691_reg[23] ;
  input ap_clk;
  input [0:0]E;
  input [15:0]A;
  input ap_rst_n_inv;
  input in_mat_data_empty_n;
  input push;
  input [0:0]\mOutPtr_reg[0] ;
  input xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start;
  input [0:0]int_ap_idle_reg;
  input out_mat_rows_channel_empty_n;
  input Block_entry1_proc_U0_ap_start;
  input [0:0]int_ap_idle_reg_0;
  input ap_rst_n;
  input in_mat_rows_c_empty_n;
  input in_mat_cols_c_empty_n;
  input out_mat_data_full_n;
  input [15:0]D;
  input [29:0]\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ;

  wire [15:0]A;
  wire Block_entry1_proc_U0_ap_start;
  wire [15:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]add_ln130_fu_184_p2;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire \ap_CS_fsm_reg[4]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire [4:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire [0:0]ap_enable_reg_pp0_iter5_reg;
  wire [29:0]\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire bound_reg_175_reg_i_1_n_2;
  wire bound_reg_175_reg_i_1_n_3;
  wire bound_reg_175_reg_i_2_n_0;
  wire bound_reg_175_reg_i_2_n_1;
  wire bound_reg_175_reg_i_2_n_2;
  wire bound_reg_175_reg_i_2_n_3;
  wire bound_reg_175_reg_i_3_n_0;
  wire bound_reg_175_reg_i_3_n_1;
  wire bound_reg_175_reg_i_3_n_2;
  wire bound_reg_175_reg_i_3_n_3;
  wire bound_reg_175_reg_i_4_n_0;
  wire bound_reg_175_reg_i_4_n_1;
  wire bound_reg_175_reg_i_4_n_2;
  wire bound_reg_175_reg_i_4_n_3;
  wire bound_reg_175_reg_n_100;
  wire bound_reg_175_reg_n_101;
  wire bound_reg_175_reg_n_102;
  wire bound_reg_175_reg_n_103;
  wire bound_reg_175_reg_n_104;
  wire bound_reg_175_reg_n_105;
  wire bound_reg_175_reg_n_74;
  wire bound_reg_175_reg_n_75;
  wire bound_reg_175_reg_n_76;
  wire bound_reg_175_reg_n_77;
  wire bound_reg_175_reg_n_78;
  wire bound_reg_175_reg_n_79;
  wire bound_reg_175_reg_n_80;
  wire bound_reg_175_reg_n_81;
  wire bound_reg_175_reg_n_82;
  wire bound_reg_175_reg_n_83;
  wire bound_reg_175_reg_n_84;
  wire bound_reg_175_reg_n_85;
  wire bound_reg_175_reg_n_86;
  wire bound_reg_175_reg_n_87;
  wire bound_reg_175_reg_n_88;
  wire bound_reg_175_reg_n_89;
  wire bound_reg_175_reg_n_90;
  wire bound_reg_175_reg_n_91;
  wire bound_reg_175_reg_n_92;
  wire bound_reg_175_reg_n_93;
  wire bound_reg_175_reg_n_94;
  wire bound_reg_175_reg_n_95;
  wire bound_reg_175_reg_n_96;
  wire bound_reg_175_reg_n_97;
  wire bound_reg_175_reg_n_98;
  wire bound_reg_175_reg_n_99;
  wire empty_n_reg;
  wire grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg;
  wire grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_n_42;
  wire [9:0]grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_address0;
  wire grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg;
  wire grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_n_1;
  wire grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_n_14;
  wire icmp_ln185_reg_1508;
  wire icmp_ln199_reg_1519;
  wire [15:0]in_col_loop_bound_fu_123_p2;
  wire [15:0]in_col_loop_bound_reg_163;
  wire in_mat_cols_c_empty_n;
  wire in_mat_data_empty_n;
  wire in_mat_rows_c_empty_n;
  wire [0:0]int_ap_idle_reg;
  wire [0:0]int_ap_idle_reg_0;
  wire [0:0]\mOutPtr_reg[0] ;
  wire [8:0]offset_buffer_1_d1;
  wire [8:0]offset_buffer_1_q0;
  wire [8:0]offset_buffer_2_q0;
  wire [8:0]offset_buffer_3_d1;
  wire [8:0]offset_buffer_3_q0;
  wire offset_buffer_4_ce0;
  wire offset_buffer_4_ce1;
  wire [8:0]offset_buffer_4_q0;
  wire offset_buffer_4_we1;
  wire [9:0]offset_buffer_5_address1;
  wire [8:0]offset_buffer_5_d1;
  wire [8:0]offset_buffer_5_q0;
  wire offset_buffer_5_we1;
  wire [8:0]offset_buffer_q0;
  wire out_mat_data_full_n;
  wire out_mat_rows_channel_empty_n;
  wire pop__0;
  wire push;
  wire [16:0]sub146_fu_131_p2;
  wire sub146_fu_131_p2_carry__0_i_1_n_0;
  wire sub146_fu_131_p2_carry__0_i_2_n_0;
  wire sub146_fu_131_p2_carry__0_i_3_n_0;
  wire sub146_fu_131_p2_carry__0_i_4_n_0;
  wire sub146_fu_131_p2_carry__0_n_0;
  wire sub146_fu_131_p2_carry__0_n_1;
  wire sub146_fu_131_p2_carry__0_n_2;
  wire sub146_fu_131_p2_carry__0_n_3;
  wire sub146_fu_131_p2_carry__1_i_1_n_0;
  wire sub146_fu_131_p2_carry__1_i_2_n_0;
  wire sub146_fu_131_p2_carry__1_i_3_n_0;
  wire sub146_fu_131_p2_carry__1_i_4_n_0;
  wire sub146_fu_131_p2_carry__1_n_0;
  wire sub146_fu_131_p2_carry__1_n_1;
  wire sub146_fu_131_p2_carry__1_n_2;
  wire sub146_fu_131_p2_carry__1_n_3;
  wire sub146_fu_131_p2_carry__2_i_1_n_0;
  wire sub146_fu_131_p2_carry__2_i_2_n_0;
  wire sub146_fu_131_p2_carry__2_i_3_n_0;
  wire sub146_fu_131_p2_carry__2_n_1;
  wire sub146_fu_131_p2_carry__2_n_2;
  wire sub146_fu_131_p2_carry__2_n_3;
  wire sub146_fu_131_p2_carry_i_1_n_0;
  wire sub146_fu_131_p2_carry_i_2_n_0;
  wire sub146_fu_131_p2_carry_i_3_n_0;
  wire sub146_fu_131_p2_carry_i_4_n_0;
  wire sub146_fu_131_p2_carry_n_0;
  wire sub146_fu_131_p2_carry_n_1;
  wire sub146_fu_131_p2_carry_n_2;
  wire sub146_fu_131_p2_carry_n_3;
  wire [16:0]sub146_reg_170;
  wire [9:0]tmp_3_reg_1527_pp0_iter3_reg;
  wire [15:0]width_reg_156;
  wire [23:0]\write_word_reg_1691_reg[23] ;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start;
  wire NLW_bound_reg_175_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_bound_reg_175_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_bound_reg_175_reg_OVERFLOW_UNCONNECTED;
  wire NLW_bound_reg_175_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_bound_reg_175_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_bound_reg_175_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_bound_reg_175_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_bound_reg_175_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_bound_reg_175_reg_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_bound_reg_175_reg_P_UNCONNECTED;
  wire [47:0]NLW_bound_reg_175_reg_PCOUT_UNCONNECTED;
  wire [3:2]NLW_bound_reg_175_reg_i_1_CO_UNCONNECTED;
  wire [3:3]NLW_bound_reg_175_reg_i_1_O_UNCONNECTED;
  wire [3:3]NLW_sub146_fu_131_p2_carry__2_CO_UNCONNECTED;

  LUT4 #(
    .INIT(16'h8000)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(Q),
        .I1(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .I2(in_mat_cols_c_empty_n),
        .I3(in_mat_rows_c_empty_n),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm1),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    bound_reg_175_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_bound_reg_175_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,in_col_loop_bound_fu_123_p2}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_bound_reg_175_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_bound_reg_175_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_bound_reg_175_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(E),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_NS_fsm1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_CS_fsm_state4),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_bound_reg_175_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_bound_reg_175_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_bound_reg_175_reg_P_UNCONNECTED[47:32],bound_reg_175_reg_n_74,bound_reg_175_reg_n_75,bound_reg_175_reg_n_76,bound_reg_175_reg_n_77,bound_reg_175_reg_n_78,bound_reg_175_reg_n_79,bound_reg_175_reg_n_80,bound_reg_175_reg_n_81,bound_reg_175_reg_n_82,bound_reg_175_reg_n_83,bound_reg_175_reg_n_84,bound_reg_175_reg_n_85,bound_reg_175_reg_n_86,bound_reg_175_reg_n_87,bound_reg_175_reg_n_88,bound_reg_175_reg_n_89,bound_reg_175_reg_n_90,bound_reg_175_reg_n_91,bound_reg_175_reg_n_92,bound_reg_175_reg_n_93,bound_reg_175_reg_n_94,bound_reg_175_reg_n_95,bound_reg_175_reg_n_96,bound_reg_175_reg_n_97,bound_reg_175_reg_n_98,bound_reg_175_reg_n_99,bound_reg_175_reg_n_100,bound_reg_175_reg_n_101,bound_reg_175_reg_n_102,bound_reg_175_reg_n_103,bound_reg_175_reg_n_104,bound_reg_175_reg_n_105}),
        .PATTERNBDETECT(NLW_bound_reg_175_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_bound_reg_175_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_bound_reg_175_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_bound_reg_175_reg_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bound_reg_175_reg_i_1
       (.CI(bound_reg_175_reg_i_2_n_0),
        .CO({NLW_bound_reg_175_reg_i_1_CO_UNCONNECTED[3:2],bound_reg_175_reg_i_1_n_2,bound_reg_175_reg_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_bound_reg_175_reg_i_1_O_UNCONNECTED[3],in_col_loop_bound_fu_123_p2[15:13]}),
        .S({1'b0,width_reg_156[15:13]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bound_reg_175_reg_i_2
       (.CI(bound_reg_175_reg_i_3_n_0),
        .CO({bound_reg_175_reg_i_2_n_0,bound_reg_175_reg_i_2_n_1,bound_reg_175_reg_i_2_n_2,bound_reg_175_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in_col_loop_bound_fu_123_p2[12:9]),
        .S(width_reg_156[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bound_reg_175_reg_i_3
       (.CI(bound_reg_175_reg_i_4_n_0),
        .CO({bound_reg_175_reg_i_3_n_0,bound_reg_175_reg_i_3_n_1,bound_reg_175_reg_i_3_n_2,bound_reg_175_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in_col_loop_bound_fu_123_p2[8:5]),
        .S(width_reg_156[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bound_reg_175_reg_i_4
       (.CI(1'b0),
        .CO({bound_reg_175_reg_i_4_n_0,bound_reg_175_reg_i_4_n_1,bound_reg_175_reg_i_4_n_2,bound_reg_175_reg_i_4_n_3}),
        .CYINIT(width_reg_156[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in_col_loop_bound_fu_123_p2[4:1]),
        .S(width_reg_156[4:1]));
  LUT1 #(
    .INIT(2'h1)) 
    bound_reg_175_reg_i_5
       (.I0(width_reg_156[0]),
        .O(in_col_loop_bound_fu_123_p2[0]));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97
       (.ADDRBWRADDR(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_address0),
        .D(add_ln130_fu_184_p2),
        .DIADI({offset_buffer_1_d1[8],offset_buffer_1_d1[1:0]}),
        .DOBDO(offset_buffer_1_q0),
        .P({bound_reg_175_reg_n_74,bound_reg_175_reg_n_75,bound_reg_175_reg_n_76,bound_reg_175_reg_n_77,bound_reg_175_reg_n_78,bound_reg_175_reg_n_79,bound_reg_175_reg_n_80,bound_reg_175_reg_n_81,bound_reg_175_reg_n_82,bound_reg_175_reg_n_83,bound_reg_175_reg_n_84,bound_reg_175_reg_n_85,bound_reg_175_reg_n_86,bound_reg_175_reg_n_87,bound_reg_175_reg_n_88,bound_reg_175_reg_n_89,bound_reg_175_reg_n_90,bound_reg_175_reg_n_91,bound_reg_175_reg_n_92,bound_reg_175_reg_n_93,bound_reg_175_reg_n_94,bound_reg_175_reg_n_95,bound_reg_175_reg_n_96,bound_reg_175_reg_n_97,bound_reg_175_reg_n_98,bound_reg_175_reg_n_99,bound_reg_175_reg_n_100,bound_reg_175_reg_n_101,bound_reg_175_reg_n_102,bound_reg_175_reg_n_103,bound_reg_175_reg_n_104,bound_reg_175_reg_n_105}),
        .Q({ap_CS_fsm_state5,ap_CS_fsm_state4,ap_CS_fsm_state3,Q}),
        .WEA(offset_buffer_4_ce1),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4]_0 ),
        .\ap_CS_fsm_reg[4]_0 ({offset_buffer_3_d1[8],offset_buffer_3_d1[1:0]}),
        .\ap_CS_fsm_reg[4]_1 ({offset_buffer_5_d1[8],offset_buffer_5_d1[1:0]}),
        .ap_clk(ap_clk),
        .ap_done_cache_reg({ap_NS_fsm[4],ap_NS_fsm[0]}),
        .ap_enable_reg_pp0_iter1_reg_0(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_n_42),
        .ap_enable_reg_pp0_iter5_reg_0(ap_enable_reg_pp0_iter5_reg),
        .\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 (\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] ),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\cmp147_reg_1532_reg[0]_0 (sub146_reg_170),
        .empty_n_reg(empty_n_reg),
        .grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg),
        .grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .icmp_ln185_reg_1508(icmp_ln185_reg_1508),
        .icmp_ln190_fu_420_p2_carry__0_0(in_col_loop_bound_reg_163),
        .\icmp_ln199_reg_1519_reg[0]_0 (icmp_ln199_reg_1519),
        .\icmp_ln199_reg_1519_reg[0]_1 (width_reg_156),
        .in_mat_cols_c_empty_n(in_mat_cols_c_empty_n),
        .in_mat_data_empty_n(in_mat_data_empty_n),
        .in_mat_rows_c_empty_n(in_mat_rows_c_empty_n),
        .\mOutPtr_reg[0] (\mOutPtr_reg[0] ),
        .offset_buffer_4_ce0(offset_buffer_4_ce0),
        .offset_buffer_4_we1(offset_buffer_4_we1),
        .offset_buffer_5_we1(offset_buffer_5_we1),
        .out_mat_data_full_n(out_mat_data_full_n),
        .pop__0(pop__0),
        .push(push),
        .ram_reg(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_n_1),
        .\select_ln221_1_reg_1585_reg[8]_0 (offset_buffer_3_q0),
        .\select_ln221_1_reg_1585_reg[8]_1 (offset_buffer_2_q0),
        .\select_ln221_2_reg_1590_reg[8]_0 (offset_buffer_5_q0),
        .\select_ln221_2_reg_1590_reg[8]_1 (offset_buffer_4_q0),
        .\select_ln221_reg_1580_reg[8]_0 (offset_buffer_q0),
        .tmp_3_reg_1527_pp0_iter3_reg(tmp_3_reg_1527_pp0_iter3_reg),
        .\write_word_reg_1691_reg[23]_0 (\write_word_reg_1691_reg[23] ),
        .xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready),
        .xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start));
  FDRE #(
    .INIT(1'b0)) 
    grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_n_42),
        .Q(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg),
        .R(ap_rst_n_inv));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1 grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86
       (.ADDRARDADDR(offset_buffer_5_address1),
        .D(add_ln130_fu_184_p2),
        .Q({ap_CS_fsm_state5,ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .ap_clk(ap_clk),
        .ap_done_cache_reg({ap_NS_fsm1,ap_NS_fsm[2]}),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_n_1),
        .grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg_0(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_n_14),
        .icmp_ln130_fu_178_p2_carry__0_0(width_reg_156),
        .tmp_3_reg_1527_pp0_iter3_reg(tmp_3_reg_1527_pp0_iter3_reg));
  FDRE #(
    .INIT(1'b0)) 
    grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_n_14),
        .Q(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .R(ap_rst_n_inv));
  FDRE \in_col_loop_bound_reg_163_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[0]),
        .Q(in_col_loop_bound_reg_163[0]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[10]),
        .Q(in_col_loop_bound_reg_163[10]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[11]),
        .Q(in_col_loop_bound_reg_163[11]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[12]),
        .Q(in_col_loop_bound_reg_163[12]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[13]),
        .Q(in_col_loop_bound_reg_163[13]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[14]),
        .Q(in_col_loop_bound_reg_163[14]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[15]),
        .Q(in_col_loop_bound_reg_163[15]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[1]),
        .Q(in_col_loop_bound_reg_163[1]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[2]),
        .Q(in_col_loop_bound_reg_163[2]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[3]),
        .Q(in_col_loop_bound_reg_163[3]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[4]),
        .Q(in_col_loop_bound_reg_163[4]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[5]),
        .Q(in_col_loop_bound_reg_163[5]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[6]),
        .Q(in_col_loop_bound_reg_163[6]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[7]),
        .Q(in_col_loop_bound_reg_163[7]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[8]),
        .Q(in_col_loop_bound_reg_163[8]),
        .R(1'b0));
  FDRE \in_col_loop_bound_reg_163_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_col_loop_bound_fu_123_p2[9]),
        .Q(in_col_loop_bound_reg_163[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    int_ap_idle_i_2
       (.I0(Q),
        .I1(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start),
        .I2(int_ap_idle_reg),
        .I3(out_mat_rows_channel_empty_n),
        .I4(Block_entry1_proc_U0_ap_start),
        .I5(int_ap_idle_reg_0),
        .O(\ap_CS_fsm_reg[0]_0 ));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb offset_buffer_1_U
       (.ADDRARDADDR(offset_buffer_5_address1),
        .ADDRBWRADDR(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_address0),
        .DIADI({offset_buffer_1_d1[8],offset_buffer_1_d1[1:0]}),
        .DOBDO(offset_buffer_1_q0),
        .WEA(offset_buffer_4_ce1),
        .ap_clk(ap_clk),
        .offset_buffer_4_ce0(offset_buffer_4_ce0),
        .offset_buffer_5_we1(offset_buffer_5_we1));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb_4 offset_buffer_2_U
       (.ADDRARDADDR(offset_buffer_5_address1),
        .ADDRBWRADDR(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_address0),
        .WEA(offset_buffer_4_ce1),
        .ap_clk(ap_clk),
        .offset_buffer_4_ce0(offset_buffer_4_ce0),
        .offset_buffer_4_we1(offset_buffer_4_we1),
        .ram_reg_0(offset_buffer_2_q0),
        .ram_reg_1({offset_buffer_3_d1[8],offset_buffer_3_d1[1:0]}));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb_5 offset_buffer_3_U
       (.ADDRARDADDR(offset_buffer_5_address1),
        .ADDRBWRADDR(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_address0),
        .WEA(offset_buffer_4_ce1),
        .ap_clk(ap_clk),
        .offset_buffer_4_ce0(offset_buffer_4_ce0),
        .offset_buffer_5_we1(offset_buffer_5_we1),
        .ram_reg_0(offset_buffer_3_q0),
        .ram_reg_1({offset_buffer_3_d1[8],offset_buffer_3_d1[1:0]}));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb_6 offset_buffer_4_U
       (.ADDRARDADDR(offset_buffer_5_address1),
        .ADDRBWRADDR(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_address0),
        .WEA(offset_buffer_4_ce1),
        .ap_clk(ap_clk),
        .offset_buffer_4_ce0(offset_buffer_4_ce0),
        .offset_buffer_4_we1(offset_buffer_4_we1),
        .ram_reg_0(offset_buffer_4_q0),
        .ram_reg_1({offset_buffer_5_d1[8],offset_buffer_5_d1[1:0]}));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb_7 offset_buffer_5_U
       (.ADDRARDADDR(offset_buffer_5_address1),
        .ADDRBWRADDR(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_address0),
        .WEA(offset_buffer_4_ce1),
        .ap_clk(ap_clk),
        .offset_buffer_4_ce0(offset_buffer_4_ce0),
        .offset_buffer_5_we1(offset_buffer_5_we1),
        .ram_reg_0(offset_buffer_5_q0),
        .ram_reg_1({offset_buffer_5_d1[8],offset_buffer_5_d1[1:0]}));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb_8 offset_buffer_U
       (.ADDRARDADDR(offset_buffer_5_address1),
        .ADDRBWRADDR(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_address0),
        .DIADI({offset_buffer_1_d1[8],offset_buffer_1_d1[1:0]}),
        .WEA(offset_buffer_4_ce1),
        .ap_clk(ap_clk),
        .offset_buffer_4_ce0(offset_buffer_4_ce0),
        .offset_buffer_4_we1(offset_buffer_4_we1),
        .ram_reg_0(offset_buffer_q0));
  CARRY4 sub146_fu_131_p2_carry
       (.CI(1'b0),
        .CO({sub146_fu_131_p2_carry_n_0,sub146_fu_131_p2_carry_n_1,sub146_fu_131_p2_carry_n_2,sub146_fu_131_p2_carry_n_3}),
        .CYINIT(in_col_loop_bound_reg_163[0]),
        .DI(in_col_loop_bound_reg_163[4:1]),
        .O(sub146_fu_131_p2[4:1]),
        .S({sub146_fu_131_p2_carry_i_1_n_0,sub146_fu_131_p2_carry_i_2_n_0,sub146_fu_131_p2_carry_i_3_n_0,sub146_fu_131_p2_carry_i_4_n_0}));
  CARRY4 sub146_fu_131_p2_carry__0
       (.CI(sub146_fu_131_p2_carry_n_0),
        .CO({sub146_fu_131_p2_carry__0_n_0,sub146_fu_131_p2_carry__0_n_1,sub146_fu_131_p2_carry__0_n_2,sub146_fu_131_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(in_col_loop_bound_reg_163[8:5]),
        .O(sub146_fu_131_p2[8:5]),
        .S({sub146_fu_131_p2_carry__0_i_1_n_0,sub146_fu_131_p2_carry__0_i_2_n_0,sub146_fu_131_p2_carry__0_i_3_n_0,sub146_fu_131_p2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry__0_i_1
       (.I0(in_col_loop_bound_reg_163[8]),
        .O(sub146_fu_131_p2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry__0_i_2
       (.I0(in_col_loop_bound_reg_163[7]),
        .O(sub146_fu_131_p2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry__0_i_3
       (.I0(in_col_loop_bound_reg_163[6]),
        .O(sub146_fu_131_p2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry__0_i_4
       (.I0(in_col_loop_bound_reg_163[5]),
        .O(sub146_fu_131_p2_carry__0_i_4_n_0));
  CARRY4 sub146_fu_131_p2_carry__1
       (.CI(sub146_fu_131_p2_carry__0_n_0),
        .CO({sub146_fu_131_p2_carry__1_n_0,sub146_fu_131_p2_carry__1_n_1,sub146_fu_131_p2_carry__1_n_2,sub146_fu_131_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(in_col_loop_bound_reg_163[12:9]),
        .O(sub146_fu_131_p2[12:9]),
        .S({sub146_fu_131_p2_carry__1_i_1_n_0,sub146_fu_131_p2_carry__1_i_2_n_0,sub146_fu_131_p2_carry__1_i_3_n_0,sub146_fu_131_p2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry__1_i_1
       (.I0(in_col_loop_bound_reg_163[12]),
        .O(sub146_fu_131_p2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry__1_i_2
       (.I0(in_col_loop_bound_reg_163[11]),
        .O(sub146_fu_131_p2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry__1_i_3
       (.I0(in_col_loop_bound_reg_163[10]),
        .O(sub146_fu_131_p2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry__1_i_4
       (.I0(in_col_loop_bound_reg_163[9]),
        .O(sub146_fu_131_p2_carry__1_i_4_n_0));
  CARRY4 sub146_fu_131_p2_carry__2
       (.CI(sub146_fu_131_p2_carry__1_n_0),
        .CO({NLW_sub146_fu_131_p2_carry__2_CO_UNCONNECTED[3],sub146_fu_131_p2_carry__2_n_1,sub146_fu_131_p2_carry__2_n_2,sub146_fu_131_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in_col_loop_bound_reg_163[14:13]}),
        .O(sub146_fu_131_p2[16:13]),
        .S({1'b1,sub146_fu_131_p2_carry__2_i_1_n_0,sub146_fu_131_p2_carry__2_i_2_n_0,sub146_fu_131_p2_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry__2_i_1
       (.I0(in_col_loop_bound_reg_163[15]),
        .O(sub146_fu_131_p2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry__2_i_2
       (.I0(in_col_loop_bound_reg_163[14]),
        .O(sub146_fu_131_p2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry__2_i_3
       (.I0(in_col_loop_bound_reg_163[13]),
        .O(sub146_fu_131_p2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry_i_1
       (.I0(in_col_loop_bound_reg_163[4]),
        .O(sub146_fu_131_p2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry_i_2
       (.I0(in_col_loop_bound_reg_163[3]),
        .O(sub146_fu_131_p2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry_i_3
       (.I0(in_col_loop_bound_reg_163[2]),
        .O(sub146_fu_131_p2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sub146_fu_131_p2_carry_i_4
       (.I0(in_col_loop_bound_reg_163[1]),
        .O(sub146_fu_131_p2_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \sub146_reg_170[0]_i_1 
       (.I0(in_col_loop_bound_reg_163[0]),
        .O(sub146_fu_131_p2[0]));
  FDRE \sub146_reg_170_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[0]),
        .Q(sub146_reg_170[0]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[10]),
        .Q(sub146_reg_170[10]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[11]),
        .Q(sub146_reg_170[11]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[12]),
        .Q(sub146_reg_170[12]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[13]),
        .Q(sub146_reg_170[13]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[14]),
        .Q(sub146_reg_170[14]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[15]),
        .Q(sub146_reg_170[15]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[16]),
        .Q(sub146_reg_170[16]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[1]),
        .Q(sub146_reg_170[1]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[2]),
        .Q(sub146_reg_170[2]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[3]),
        .Q(sub146_reg_170[3]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[4]),
        .Q(sub146_reg_170[4]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[5]),
        .Q(sub146_reg_170[5]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[6]),
        .Q(sub146_reg_170[6]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[7]),
        .Q(sub146_reg_170[7]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[8]),
        .Q(sub146_reg_170[8]),
        .R(1'b0));
  FDRE \sub146_reg_170_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(sub146_fu_131_p2[9]),
        .Q(sub146_reg_170[9]),
        .R(1'b0));
  FDRE \width_reg_156_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(D[0]),
        .Q(width_reg_156[0]),
        .R(1'b0));
  FDRE \width_reg_156_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(D[10]),
        .Q(width_reg_156[10]),
        .R(1'b0));
  FDRE \width_reg_156_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(D[11]),
        .Q(width_reg_156[11]),
        .R(1'b0));
  FDRE \width_reg_156_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(D[12]),
        .Q(width_reg_156[12]),
        .R(1'b0));
  FDRE \width_reg_156_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(D[13]),
        .Q(width_reg_156[13]),
        .R(1'b0));
  FDRE \width_reg_156_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(D[14]),
        .Q(width_reg_156[14]),
        .R(1'b0));
  FDRE \width_reg_156_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(D[15]),
        .Q(width_reg_156[15]),
        .R(1'b0));
  FDRE \width_reg_156_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(D[1]),
        .Q(width_reg_156[1]),
        .R(1'b0));
  FDRE \width_reg_156_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(D[2]),
        .Q(width_reg_156[2]),
        .R(1'b0));
  FDRE \width_reg_156_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(D[3]),
        .Q(width_reg_156[3]),
        .R(1'b0));
  FDRE \width_reg_156_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(D[4]),
        .Q(width_reg_156[4]),
        .R(1'b0));
  FDRE \width_reg_156_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(D[5]),
        .Q(width_reg_156[5]),
        .R(1'b0));
  FDRE \width_reg_156_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(D[6]),
        .Q(width_reg_156[6]),
        .R(1'b0));
  FDRE \width_reg_156_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(D[7]),
        .Q(width_reg_156[7]),
        .R(1'b0));
  FDRE \width_reg_156_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(D[8]),
        .Q(width_reg_156[8]),
        .R(1'b0));
  FDRE \width_reg_156_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(D[9]),
        .Q(width_reg_156[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb
   (DOBDO,
    ap_clk,
    offset_buffer_5_we1,
    offset_buffer_4_ce0,
    ADDRARDADDR,
    ADDRBWRADDR,
    DIADI,
    WEA);
  output [8:0]DOBDO;
  input ap_clk;
  input offset_buffer_5_we1;
  input offset_buffer_4_ce0;
  input [9:0]ADDRARDADDR;
  input [9:0]ADDRBWRADDR;
  input [2:0]DIADI;
  input [0:0]WEA;

  wire [9:0]ADDRARDADDR;
  wire [9:0]ADDRBWRADDR;
  wire [2:0]DIADI;
  wire [8:0]DOBDO;
  wire [0:0]WEA;
  wire ap_clk;
  wire offset_buffer_4_ce0;
  wire offset_buffer_5_we1;
  wire [15:0]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:9]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8640" *) 
  (* RTL_RAM_NAME = "inst/xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/offset_buffer_1_U/ram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI[2],DIADI[2],DIADI[2],DIADI[2],DIADI[2],DIADI[2],DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_ram_reg_DOBDO_UNCONNECTED[15:9],DOBDO}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(offset_buffer_5_we1),
        .ENBWREN(offset_buffer_4_ce0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb_4
   (ram_reg_0,
    ap_clk,
    offset_buffer_4_we1,
    offset_buffer_4_ce0,
    ADDRARDADDR,
    ADDRBWRADDR,
    ram_reg_1,
    WEA);
  output [8:0]ram_reg_0;
  input ap_clk;
  input offset_buffer_4_we1;
  input offset_buffer_4_ce0;
  input [9:0]ADDRARDADDR;
  input [9:0]ADDRBWRADDR;
  input [2:0]ram_reg_1;
  input [0:0]WEA;

  wire [9:0]ADDRARDADDR;
  wire [9:0]ADDRBWRADDR;
  wire [0:0]WEA;
  wire ap_clk;
  wire offset_buffer_4_ce0;
  wire offset_buffer_4_we1;
  wire [8:0]ram_reg_0;
  wire [2:0]ram_reg_1;
  wire [15:0]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:9]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8640" *) 
  (* RTL_RAM_NAME = "inst/xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/offset_buffer_2_U/ram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_ram_reg_DOBDO_UNCONNECTED[15:9],ram_reg_0}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(offset_buffer_4_we1),
        .ENBWREN(offset_buffer_4_ce0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb_5
   (ram_reg_0,
    ap_clk,
    offset_buffer_5_we1,
    offset_buffer_4_ce0,
    ADDRARDADDR,
    ADDRBWRADDR,
    ram_reg_1,
    WEA);
  output [8:0]ram_reg_0;
  input ap_clk;
  input offset_buffer_5_we1;
  input offset_buffer_4_ce0;
  input [9:0]ADDRARDADDR;
  input [9:0]ADDRBWRADDR;
  input [2:0]ram_reg_1;
  input [0:0]WEA;

  wire [9:0]ADDRARDADDR;
  wire [9:0]ADDRBWRADDR;
  wire [0:0]WEA;
  wire ap_clk;
  wire offset_buffer_4_ce0;
  wire offset_buffer_5_we1;
  wire [8:0]ram_reg_0;
  wire [2:0]ram_reg_1;
  wire [15:0]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:9]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8640" *) 
  (* RTL_RAM_NAME = "inst/xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/offset_buffer_3_U/ram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_ram_reg_DOBDO_UNCONNECTED[15:9],ram_reg_0}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(offset_buffer_5_we1),
        .ENBWREN(offset_buffer_4_ce0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb_6
   (ram_reg_0,
    ap_clk,
    offset_buffer_4_we1,
    offset_buffer_4_ce0,
    ADDRARDADDR,
    ADDRBWRADDR,
    ram_reg_1,
    WEA);
  output [8:0]ram_reg_0;
  input ap_clk;
  input offset_buffer_4_we1;
  input offset_buffer_4_ce0;
  input [9:0]ADDRARDADDR;
  input [9:0]ADDRBWRADDR;
  input [2:0]ram_reg_1;
  input [0:0]WEA;

  wire [9:0]ADDRARDADDR;
  wire [9:0]ADDRBWRADDR;
  wire [0:0]WEA;
  wire ap_clk;
  wire offset_buffer_4_ce0;
  wire offset_buffer_4_we1;
  wire [8:0]ram_reg_0;
  wire [2:0]ram_reg_1;
  wire [15:0]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:9]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8640" *) 
  (* RTL_RAM_NAME = "inst/xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/offset_buffer_4_U/ram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_ram_reg_DOBDO_UNCONNECTED[15:9],ram_reg_0}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(offset_buffer_4_we1),
        .ENBWREN(offset_buffer_4_ce0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb_7
   (ram_reg_0,
    ap_clk,
    offset_buffer_5_we1,
    offset_buffer_4_ce0,
    ADDRARDADDR,
    ADDRBWRADDR,
    ram_reg_1,
    WEA);
  output [8:0]ram_reg_0;
  input ap_clk;
  input offset_buffer_5_we1;
  input offset_buffer_4_ce0;
  input [9:0]ADDRARDADDR;
  input [9:0]ADDRBWRADDR;
  input [2:0]ram_reg_1;
  input [0:0]WEA;

  wire [9:0]ADDRARDADDR;
  wire [9:0]ADDRBWRADDR;
  wire [0:0]WEA;
  wire ap_clk;
  wire offset_buffer_4_ce0;
  wire offset_buffer_5_we1;
  wire [8:0]ram_reg_0;
  wire [2:0]ram_reg_1;
  wire [15:0]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:9]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8640" *) 
  (* RTL_RAM_NAME = "inst/xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/offset_buffer_5_U/ram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1[2],ram_reg_1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_ram_reg_DOBDO_UNCONNECTED[15:9],ram_reg_0}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(offset_buffer_5_we1),
        .ENBWREN(offset_buffer_4_ce0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_s_offset_buffer_RAM_bkb_8
   (ram_reg_0,
    ap_clk,
    offset_buffer_4_we1,
    offset_buffer_4_ce0,
    ADDRARDADDR,
    ADDRBWRADDR,
    DIADI,
    WEA);
  output [8:0]ram_reg_0;
  input ap_clk;
  input offset_buffer_4_we1;
  input offset_buffer_4_ce0;
  input [9:0]ADDRARDADDR;
  input [9:0]ADDRBWRADDR;
  input [2:0]DIADI;
  input [0:0]WEA;

  wire [9:0]ADDRARDADDR;
  wire [9:0]ADDRBWRADDR;
  wire [2:0]DIADI;
  wire [0:0]WEA;
  wire ap_clk;
  wire offset_buffer_4_ce0;
  wire offset_buffer_4_we1;
  wire [8:0]ram_reg_0;
  wire [15:0]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:9]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8640" *) 
  (* RTL_RAM_NAME = "inst/xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/offset_buffer_U/ram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI[2],DIADI[2],DIADI[2],DIADI[2],DIADI[2],DIADI[2],DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_ram_reg_DOBDO_UNCONNECTED[15:9],ram_reg_0}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(offset_buffer_4_we1),
        .ENBWREN(offset_buffer_4_ce0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL
   (icmp_ln185_reg_1508,
    \icmp_ln199_reg_1519_reg[0]_0 ,
    tmp_3_reg_1527_pp0_iter3_reg,
    empty_n_reg,
    offset_buffer_5_we1,
    offset_buffer_4_we1,
    pop__0,
    ap_done_cache_reg,
    xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready,
    \ap_CS_fsm_reg[4] ,
    ap_enable_reg_pp0_iter5_reg_0,
    WEA,
    offset_buffer_4_ce0,
    ADDRBWRADDR,
    DIADI,
    \ap_CS_fsm_reg[4]_0 ,
    \ap_CS_fsm_reg[4]_1 ,
    ap_enable_reg_pp0_iter1_reg_0,
    \write_word_reg_1691_reg[23]_0 ,
    ap_clk,
    ap_rst_n_inv,
    in_mat_data_empty_n,
    push,
    \mOutPtr_reg[0] ,
    D,
    ram_reg,
    Q,
    in_mat_rows_c_empty_n,
    in_mat_cols_c_empty_n,
    xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start,
    grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg,
    out_mat_data_full_n,
    grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg,
    ap_rst_n,
    P,
    icmp_ln190_fu_420_p2_carry__0_0,
    \icmp_ln199_reg_1519_reg[0]_1 ,
    \cmp147_reg_1532_reg[0]_0 ,
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 ,
    DOBDO,
    \select_ln221_reg_1580_reg[8]_0 ,
    \select_ln221_1_reg_1585_reg[8]_0 ,
    \select_ln221_1_reg_1585_reg[8]_1 ,
    \select_ln221_2_reg_1590_reg[8]_0 ,
    \select_ln221_2_reg_1590_reg[8]_1 );
  output icmp_ln185_reg_1508;
  output \icmp_ln199_reg_1519_reg[0]_0 ;
  output [9:0]tmp_3_reg_1527_pp0_iter3_reg;
  output empty_n_reg;
  output offset_buffer_5_we1;
  output offset_buffer_4_we1;
  output pop__0;
  output [1:0]ap_done_cache_reg;
  output xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready;
  output \ap_CS_fsm_reg[4] ;
  output [0:0]ap_enable_reg_pp0_iter5_reg_0;
  output [0:0]WEA;
  output offset_buffer_4_ce0;
  output [9:0]ADDRBWRADDR;
  output [2:0]DIADI;
  output [2:0]\ap_CS_fsm_reg[4]_0 ;
  output [2:0]\ap_CS_fsm_reg[4]_1 ;
  output ap_enable_reg_pp0_iter1_reg_0;
  output [23:0]\write_word_reg_1691_reg[23]_0 ;
  input ap_clk;
  input ap_rst_n_inv;
  input in_mat_data_empty_n;
  input push;
  input [0:0]\mOutPtr_reg[0] ;
  input [0:0]D;
  input ram_reg;
  input [3:0]Q;
  input in_mat_rows_c_empty_n;
  input in_mat_cols_c_empty_n;
  input xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start;
  input grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg;
  input out_mat_data_full_n;
  input grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg;
  input ap_rst_n;
  input [31:0]P;
  input [15:0]icmp_ln190_fu_420_p2_carry__0_0;
  input [15:0]\icmp_ln199_reg_1519_reg[0]_1 ;
  input [16:0]\cmp147_reg_1532_reg[0]_0 ;
  input [29:0]\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 ;
  input [8:0]DOBDO;
  input [8:0]\select_ln221_reg_1580_reg[8]_0 ;
  input [8:0]\select_ln221_1_reg_1585_reg[8]_0 ;
  input [8:0]\select_ln221_1_reg_1585_reg[8]_1 ;
  input [8:0]\select_ln221_2_reg_1590_reg[8]_0 ;
  input [8:0]\select_ln221_2_reg_1590_reg[8]_1 ;

  wire [9:0]ADDRBWRADDR;
  wire [0:0]D;
  wire [2:0]DIADI;
  wire [8:0]DOBDO;
  wire [31:0]P;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [14:0]add_ln190_fu_512_p2;
  wire \ap_CS_fsm_reg[4] ;
  wire [2:0]\ap_CS_fsm_reg[4]_0 ;
  wire [2:0]\ap_CS_fsm_reg[4]_1 ;
  wire ap_block_pp0_stage0_11001__0;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire [1:0]ap_done_cache_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1__0_n_0;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter2_i_1_n_0;
  wire ap_enable_reg_pp0_iter2_reg_n_0;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter3_i_1_n_0;
  wire ap_enable_reg_pp0_iter4;
  wire ap_enable_reg_pp0_iter4_i_1_n_0;
  wire ap_enable_reg_pp0_iter5;
  wire ap_enable_reg_pp0_iter5_i_1_n_0;
  wire [0:0]ap_enable_reg_pp0_iter5_reg_0;
  wire ap_loop_exit_ready_pp0_iter3_reg_reg_srl2_n_0;
  wire ap_loop_exit_ready_pp0_iter4_reg;
  wire [29:0]ap_phi_reg_pp0_iter3_read_word_1_reg_359;
  wire ap_phi_reg_pp0_iter3_read_word_1_reg_3590;
  wire [29:0]\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 ;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire cmp129_fu_485_p2;
  wire \cmp129_reg_1523_pp0_iter2_reg_reg[0]_srl2_i_2_n_0 ;
  wire \cmp129_reg_1523_pp0_iter2_reg_reg[0]_srl2_i_3_n_0 ;
  wire \cmp129_reg_1523_pp0_iter2_reg_reg[0]_srl2_n_0 ;
  wire cmp129_reg_1523_pp0_iter3_reg;
  wire cmp147_fu_507_p2;
  wire cmp147_fu_507_p2_carry__0_i_1_n_0;
  wire cmp147_fu_507_p2_carry__0_i_2_n_0;
  wire cmp147_fu_507_p2_carry__0_i_3_n_0;
  wire cmp147_fu_507_p2_carry__0_i_4_n_0;
  wire cmp147_fu_507_p2_carry__0_i_5_n_0;
  wire cmp147_fu_507_p2_carry__0_n_3;
  wire cmp147_fu_507_p2_carry_i_1_n_0;
  wire cmp147_fu_507_p2_carry_i_2_n_0;
  wire cmp147_fu_507_p2_carry_i_3_n_0;
  wire cmp147_fu_507_p2_carry_i_4_n_0;
  wire cmp147_fu_507_p2_carry_i_5_n_0;
  wire cmp147_fu_507_p2_carry_n_0;
  wire cmp147_fu_507_p2_carry_n_1;
  wire cmp147_fu_507_p2_carry_n_2;
  wire cmp147_fu_507_p2_carry_n_3;
  wire cmp147_reg_1532;
  wire cmp147_reg_1532_pp0_iter2_reg;
  wire cmp147_reg_1532_pp0_iter3_reg;
  wire [16:0]\cmp147_reg_1532_reg[0]_0 ;
  wire col_index_1_fu_164;
  wire \col_index_1_fu_164[12]_i_2_n_0 ;
  wire \col_index_1_fu_164[12]_i_3_n_0 ;
  wire \col_index_1_fu_164[12]_i_4_n_0 ;
  wire \col_index_1_fu_164[12]_i_5_n_0 ;
  wire \col_index_1_fu_164[14]_i_4_n_0 ;
  wire \col_index_1_fu_164[14]_i_5_n_0 ;
  wire \col_index_1_fu_164[4]_i_2_n_0 ;
  wire \col_index_1_fu_164[4]_i_3_n_0 ;
  wire \col_index_1_fu_164[4]_i_4_n_0 ;
  wire \col_index_1_fu_164[4]_i_5_n_0 ;
  wire \col_index_1_fu_164[8]_i_2_n_0 ;
  wire \col_index_1_fu_164[8]_i_3_n_0 ;
  wire \col_index_1_fu_164[8]_i_4_n_0 ;
  wire \col_index_1_fu_164[8]_i_5_n_0 ;
  wire \col_index_1_fu_164_reg[12]_i_1_n_0 ;
  wire \col_index_1_fu_164_reg[12]_i_1_n_1 ;
  wire \col_index_1_fu_164_reg[12]_i_1_n_2 ;
  wire \col_index_1_fu_164_reg[12]_i_1_n_3 ;
  wire \col_index_1_fu_164_reg[14]_i_3_n_3 ;
  wire \col_index_1_fu_164_reg[4]_i_1_n_0 ;
  wire \col_index_1_fu_164_reg[4]_i_1_n_1 ;
  wire \col_index_1_fu_164_reg[4]_i_1_n_2 ;
  wire \col_index_1_fu_164_reg[4]_i_1_n_3 ;
  wire \col_index_1_fu_164_reg[8]_i_1_n_0 ;
  wire \col_index_1_fu_164_reg[8]_i_1_n_1 ;
  wire \col_index_1_fu_164_reg[8]_i_1_n_2 ;
  wire \col_index_1_fu_164_reg[8]_i_1_n_3 ;
  wire \col_index_1_fu_164_reg_n_0_[0] ;
  wire \col_index_1_fu_164_reg_n_0_[10] ;
  wire \col_index_1_fu_164_reg_n_0_[11] ;
  wire \col_index_1_fu_164_reg_n_0_[12] ;
  wire \col_index_1_fu_164_reg_n_0_[13] ;
  wire \col_index_1_fu_164_reg_n_0_[14] ;
  wire \col_index_1_fu_164_reg_n_0_[1] ;
  wire \col_index_1_fu_164_reg_n_0_[2] ;
  wire \col_index_1_fu_164_reg_n_0_[3] ;
  wire \col_index_1_fu_164_reg_n_0_[4] ;
  wire \col_index_1_fu_164_reg_n_0_[5] ;
  wire \col_index_1_fu_164_reg_n_0_[6] ;
  wire \col_index_1_fu_164_reg_n_0_[7] ;
  wire \col_index_1_fu_164_reg_n_0_[8] ;
  wire \col_index_1_fu_164_reg_n_0_[9] ;
  wire empty_36_fu_128;
  wire [2:0]empty_37_fu_132;
  wire [2:0]empty_39_fu_144;
  wire [2:0]empty_41_fu_156;
  wire empty_n_reg;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire flow_control_loop_pipe_sequential_init_U_n_6;
  wire grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_ready;
  wire grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg;
  wire grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_ce1;
  wire grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg;
  wire icmp_ln185_fu_425_p2;
  wire icmp_ln185_fu_425_p2_carry__0_i_1_n_0;
  wire icmp_ln185_fu_425_p2_carry__0_i_2_n_0;
  wire icmp_ln185_fu_425_p2_carry__0_i_3_n_0;
  wire icmp_ln185_fu_425_p2_carry__0_i_4_n_0;
  wire icmp_ln185_fu_425_p2_carry__0_n_0;
  wire icmp_ln185_fu_425_p2_carry__0_n_1;
  wire icmp_ln185_fu_425_p2_carry__0_n_2;
  wire icmp_ln185_fu_425_p2_carry__0_n_3;
  wire icmp_ln185_fu_425_p2_carry__1_i_1_n_0;
  wire icmp_ln185_fu_425_p2_carry__1_i_2_n_0;
  wire icmp_ln185_fu_425_p2_carry__1_i_3_n_0;
  wire icmp_ln185_fu_425_p2_carry__1_n_2;
  wire icmp_ln185_fu_425_p2_carry__1_n_3;
  wire icmp_ln185_fu_425_p2_carry_i_1_n_0;
  wire icmp_ln185_fu_425_p2_carry_i_2_n_0;
  wire icmp_ln185_fu_425_p2_carry_i_3_n_0;
  wire icmp_ln185_fu_425_p2_carry_i_4_n_0;
  wire icmp_ln185_fu_425_p2_carry_n_0;
  wire icmp_ln185_fu_425_p2_carry_n_1;
  wire icmp_ln185_fu_425_p2_carry_n_2;
  wire icmp_ln185_fu_425_p2_carry_n_3;
  wire icmp_ln185_reg_1508;
  wire [15:0]icmp_ln190_fu_420_p2_carry__0_0;
  wire icmp_ln190_fu_420_p2_carry__0_i_1_n_0;
  wire icmp_ln190_fu_420_p2_carry__0_i_2_n_0;
  wire icmp_ln190_fu_420_p2_carry__0_i_3_n_0;
  wire icmp_ln190_fu_420_p2_carry__0_i_4_n_0;
  wire icmp_ln190_fu_420_p2_carry__0_i_5_n_0;
  wire icmp_ln190_fu_420_p2_carry__0_i_6_n_0;
  wire icmp_ln190_fu_420_p2_carry__0_i_7_n_0;
  wire icmp_ln190_fu_420_p2_carry__0_i_8_n_0;
  wire icmp_ln190_fu_420_p2_carry__0_n_0;
  wire icmp_ln190_fu_420_p2_carry__0_n_1;
  wire icmp_ln190_fu_420_p2_carry__0_n_2;
  wire icmp_ln190_fu_420_p2_carry__0_n_3;
  wire icmp_ln190_fu_420_p2_carry_i_1_n_0;
  wire icmp_ln190_fu_420_p2_carry_i_2_n_0;
  wire icmp_ln190_fu_420_p2_carry_i_3_n_0;
  wire icmp_ln190_fu_420_p2_carry_i_4_n_0;
  wire icmp_ln190_fu_420_p2_carry_i_5_n_0;
  wire icmp_ln190_fu_420_p2_carry_i_6_n_0;
  wire icmp_ln190_fu_420_p2_carry_i_7_n_0;
  wire icmp_ln190_fu_420_p2_carry_i_8_n_0;
  wire icmp_ln190_fu_420_p2_carry_n_0;
  wire icmp_ln190_fu_420_p2_carry_n_1;
  wire icmp_ln190_fu_420_p2_carry_n_2;
  wire icmp_ln190_fu_420_p2_carry_n_3;
  wire icmp_ln199_fu_480_p2;
  wire icmp_ln199_fu_480_p2_carry__0_i_1_n_0;
  wire icmp_ln199_fu_480_p2_carry__0_i_2_n_0;
  wire icmp_ln199_fu_480_p2_carry__0_i_3_n_0;
  wire icmp_ln199_fu_480_p2_carry__0_i_4_n_0;
  wire icmp_ln199_fu_480_p2_carry__0_i_5_n_0;
  wire icmp_ln199_fu_480_p2_carry__0_i_6_n_0;
  wire icmp_ln199_fu_480_p2_carry__0_i_7_n_0;
  wire icmp_ln199_fu_480_p2_carry__0_i_8_n_0;
  wire icmp_ln199_fu_480_p2_carry__0_n_1;
  wire icmp_ln199_fu_480_p2_carry__0_n_2;
  wire icmp_ln199_fu_480_p2_carry__0_n_3;
  wire icmp_ln199_fu_480_p2_carry_i_1_n_0;
  wire icmp_ln199_fu_480_p2_carry_i_2_n_0;
  wire icmp_ln199_fu_480_p2_carry_i_3_n_0;
  wire icmp_ln199_fu_480_p2_carry_i_4_n_0;
  wire icmp_ln199_fu_480_p2_carry_i_5_n_0;
  wire icmp_ln199_fu_480_p2_carry_i_6_n_0;
  wire icmp_ln199_fu_480_p2_carry_i_7_n_0;
  wire icmp_ln199_fu_480_p2_carry_i_8_n_0;
  wire icmp_ln199_fu_480_p2_carry_n_0;
  wire icmp_ln199_fu_480_p2_carry_n_1;
  wire icmp_ln199_fu_480_p2_carry_n_2;
  wire icmp_ln199_fu_480_p2_carry_n_3;
  wire \icmp_ln199_reg_1519_pp0_iter3_reg_reg[0]_srl2_n_0 ;
  wire icmp_ln199_reg_1519_pp0_iter4_reg;
  wire \icmp_ln199_reg_1519_reg[0]_0 ;
  wire [15:0]\icmp_ln199_reg_1519_reg[0]_1 ;
  wire in_mat_cols_c_empty_n;
  wire in_mat_data_empty_n;
  wire in_mat_rows_c_empty_n;
  wire \indvar_flatten_fu_168[0]_i_2_n_0 ;
  wire [31:0]indvar_flatten_fu_168_reg;
  wire \indvar_flatten_fu_168_reg[0]_i_1_n_0 ;
  wire \indvar_flatten_fu_168_reg[0]_i_1_n_1 ;
  wire \indvar_flatten_fu_168_reg[0]_i_1_n_2 ;
  wire \indvar_flatten_fu_168_reg[0]_i_1_n_3 ;
  wire \indvar_flatten_fu_168_reg[0]_i_1_n_4 ;
  wire \indvar_flatten_fu_168_reg[0]_i_1_n_5 ;
  wire \indvar_flatten_fu_168_reg[0]_i_1_n_6 ;
  wire \indvar_flatten_fu_168_reg[0]_i_1_n_7 ;
  wire \indvar_flatten_fu_168_reg[12]_i_1_n_0 ;
  wire \indvar_flatten_fu_168_reg[12]_i_1_n_1 ;
  wire \indvar_flatten_fu_168_reg[12]_i_1_n_2 ;
  wire \indvar_flatten_fu_168_reg[12]_i_1_n_3 ;
  wire \indvar_flatten_fu_168_reg[12]_i_1_n_4 ;
  wire \indvar_flatten_fu_168_reg[12]_i_1_n_5 ;
  wire \indvar_flatten_fu_168_reg[12]_i_1_n_6 ;
  wire \indvar_flatten_fu_168_reg[12]_i_1_n_7 ;
  wire \indvar_flatten_fu_168_reg[16]_i_1_n_0 ;
  wire \indvar_flatten_fu_168_reg[16]_i_1_n_1 ;
  wire \indvar_flatten_fu_168_reg[16]_i_1_n_2 ;
  wire \indvar_flatten_fu_168_reg[16]_i_1_n_3 ;
  wire \indvar_flatten_fu_168_reg[16]_i_1_n_4 ;
  wire \indvar_flatten_fu_168_reg[16]_i_1_n_5 ;
  wire \indvar_flatten_fu_168_reg[16]_i_1_n_6 ;
  wire \indvar_flatten_fu_168_reg[16]_i_1_n_7 ;
  wire \indvar_flatten_fu_168_reg[20]_i_1_n_0 ;
  wire \indvar_flatten_fu_168_reg[20]_i_1_n_1 ;
  wire \indvar_flatten_fu_168_reg[20]_i_1_n_2 ;
  wire \indvar_flatten_fu_168_reg[20]_i_1_n_3 ;
  wire \indvar_flatten_fu_168_reg[20]_i_1_n_4 ;
  wire \indvar_flatten_fu_168_reg[20]_i_1_n_5 ;
  wire \indvar_flatten_fu_168_reg[20]_i_1_n_6 ;
  wire \indvar_flatten_fu_168_reg[20]_i_1_n_7 ;
  wire \indvar_flatten_fu_168_reg[24]_i_1_n_0 ;
  wire \indvar_flatten_fu_168_reg[24]_i_1_n_1 ;
  wire \indvar_flatten_fu_168_reg[24]_i_1_n_2 ;
  wire \indvar_flatten_fu_168_reg[24]_i_1_n_3 ;
  wire \indvar_flatten_fu_168_reg[24]_i_1_n_4 ;
  wire \indvar_flatten_fu_168_reg[24]_i_1_n_5 ;
  wire \indvar_flatten_fu_168_reg[24]_i_1_n_6 ;
  wire \indvar_flatten_fu_168_reg[24]_i_1_n_7 ;
  wire \indvar_flatten_fu_168_reg[28]_i_1_n_1 ;
  wire \indvar_flatten_fu_168_reg[28]_i_1_n_2 ;
  wire \indvar_flatten_fu_168_reg[28]_i_1_n_3 ;
  wire \indvar_flatten_fu_168_reg[28]_i_1_n_4 ;
  wire \indvar_flatten_fu_168_reg[28]_i_1_n_5 ;
  wire \indvar_flatten_fu_168_reg[28]_i_1_n_6 ;
  wire \indvar_flatten_fu_168_reg[28]_i_1_n_7 ;
  wire \indvar_flatten_fu_168_reg[4]_i_1_n_0 ;
  wire \indvar_flatten_fu_168_reg[4]_i_1_n_1 ;
  wire \indvar_flatten_fu_168_reg[4]_i_1_n_2 ;
  wire \indvar_flatten_fu_168_reg[4]_i_1_n_3 ;
  wire \indvar_flatten_fu_168_reg[4]_i_1_n_4 ;
  wire \indvar_flatten_fu_168_reg[4]_i_1_n_5 ;
  wire \indvar_flatten_fu_168_reg[4]_i_1_n_6 ;
  wire \indvar_flatten_fu_168_reg[4]_i_1_n_7 ;
  wire \indvar_flatten_fu_168_reg[8]_i_1_n_0 ;
  wire \indvar_flatten_fu_168_reg[8]_i_1_n_1 ;
  wire \indvar_flatten_fu_168_reg[8]_i_1_n_2 ;
  wire \indvar_flatten_fu_168_reg[8]_i_1_n_3 ;
  wire \indvar_flatten_fu_168_reg[8]_i_1_n_4 ;
  wire \indvar_flatten_fu_168_reg[8]_i_1_n_5 ;
  wire \indvar_flatten_fu_168_reg[8]_i_1_n_6 ;
  wire \indvar_flatten_fu_168_reg[8]_i_1_n_7 ;
  wire [0:0]\mOutPtr_reg[0] ;
  wire offset_buffer_4_ce0;
  wire offset_buffer_4_we1;
  wire offset_buffer_5_we1;
  wire out_mat_data_full_n;
  wire [3:0]p_0_0_042929_fu_136;
  wire [3:0]p_0_0_0429_134_fu_148;
  wire [3:0]p_0_0_0429_239_fu_160;
  wire [9:0]p_0_in;
  wire [9:0]p_1_in;
  wire p_8_in;
  wire [2:0]p_load77_reg_1633;
  wire [2:0]p_load81_reg_1601;
  wire [2:0]p_load_reg_1665;
  wire pop__0;
  wire push;
  wire quatizer_in_1_fu_726_p2__1_carry__0_i_1_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry__0_i_2_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry__0_i_3_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry__0_i_4_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry__0_i_5_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry__0_i_6_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry__0_i_7_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry__0_i_8_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry__0_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry__0_n_1;
  wire quatizer_in_1_fu_726_p2__1_carry__0_n_2;
  wire quatizer_in_1_fu_726_p2__1_carry__0_n_3;
  wire quatizer_in_1_fu_726_p2__1_carry__0_n_4;
  wire quatizer_in_1_fu_726_p2__1_carry__0_n_5;
  wire quatizer_in_1_fu_726_p2__1_carry__0_n_6;
  wire quatizer_in_1_fu_726_p2__1_carry__0_n_7;
  wire quatizer_in_1_fu_726_p2__1_carry__1_i_1_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry__1_i_2_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry__1_i_3_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry__1_i_4_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry__1_i_5_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry__1_n_1;
  wire quatizer_in_1_fu_726_p2__1_carry__1_n_2;
  wire quatizer_in_1_fu_726_p2__1_carry__1_n_3;
  wire quatizer_in_1_fu_726_p2__1_carry__1_n_4;
  wire quatizer_in_1_fu_726_p2__1_carry__1_n_5;
  wire quatizer_in_1_fu_726_p2__1_carry__1_n_6;
  wire quatizer_in_1_fu_726_p2__1_carry__1_n_7;
  wire quatizer_in_1_fu_726_p2__1_carry_i_1_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry_i_2_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry_i_3_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry_i_4_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry_i_5_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry_i_6_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry_i_7_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry_n_0;
  wire quatizer_in_1_fu_726_p2__1_carry_n_1;
  wire quatizer_in_1_fu_726_p2__1_carry_n_2;
  wire quatizer_in_1_fu_726_p2__1_carry_n_3;
  wire quatizer_in_1_fu_726_p2__1_carry_n_4;
  wire quatizer_in_1_fu_726_p2__1_carry_n_5;
  wire quatizer_in_1_fu_726_p2__1_carry_n_7;
  wire quatizer_in_2_fu_844_p2__1_carry__0_i_1_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry__0_i_2_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry__0_i_3_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry__0_i_4_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry__0_i_5_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry__0_i_6_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry__0_i_7_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry__0_i_8_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry__0_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry__0_n_1;
  wire quatizer_in_2_fu_844_p2__1_carry__0_n_2;
  wire quatizer_in_2_fu_844_p2__1_carry__0_n_3;
  wire quatizer_in_2_fu_844_p2__1_carry__0_n_4;
  wire quatizer_in_2_fu_844_p2__1_carry__0_n_5;
  wire quatizer_in_2_fu_844_p2__1_carry__0_n_6;
  wire quatizer_in_2_fu_844_p2__1_carry__0_n_7;
  wire quatizer_in_2_fu_844_p2__1_carry__1_i_1_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry__1_i_2_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry__1_i_3_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry__1_i_4_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry__1_i_5_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry__1_n_1;
  wire quatizer_in_2_fu_844_p2__1_carry__1_n_2;
  wire quatizer_in_2_fu_844_p2__1_carry__1_n_3;
  wire quatizer_in_2_fu_844_p2__1_carry__1_n_4;
  wire quatizer_in_2_fu_844_p2__1_carry__1_n_5;
  wire quatizer_in_2_fu_844_p2__1_carry__1_n_6;
  wire quatizer_in_2_fu_844_p2__1_carry__1_n_7;
  wire quatizer_in_2_fu_844_p2__1_carry_i_1_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry_i_2_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry_i_3_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry_i_4_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry_i_5_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry_i_6_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry_i_7_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry_n_0;
  wire quatizer_in_2_fu_844_p2__1_carry_n_1;
  wire quatizer_in_2_fu_844_p2__1_carry_n_2;
  wire quatizer_in_2_fu_844_p2__1_carry_n_3;
  wire quatizer_in_2_fu_844_p2__1_carry_n_4;
  wire quatizer_in_2_fu_844_p2__1_carry_n_5;
  wire quatizer_in_2_fu_844_p2__1_carry_n_7;
  wire quatizer_in_fu_608_p2__1_carry__0_i_1_n_0;
  wire quatizer_in_fu_608_p2__1_carry__0_i_2_n_0;
  wire quatizer_in_fu_608_p2__1_carry__0_i_3_n_0;
  wire quatizer_in_fu_608_p2__1_carry__0_i_4_n_0;
  wire quatizer_in_fu_608_p2__1_carry__0_i_5_n_0;
  wire quatizer_in_fu_608_p2__1_carry__0_i_6_n_0;
  wire quatizer_in_fu_608_p2__1_carry__0_i_7_n_0;
  wire quatizer_in_fu_608_p2__1_carry__0_i_8_n_0;
  wire quatizer_in_fu_608_p2__1_carry__0_n_0;
  wire quatizer_in_fu_608_p2__1_carry__0_n_1;
  wire quatizer_in_fu_608_p2__1_carry__0_n_2;
  wire quatizer_in_fu_608_p2__1_carry__0_n_3;
  wire quatizer_in_fu_608_p2__1_carry__1_i_1_n_0;
  wire quatizer_in_fu_608_p2__1_carry__1_i_2_n_0;
  wire quatizer_in_fu_608_p2__1_carry__1_i_3_n_0;
  wire quatizer_in_fu_608_p2__1_carry__1_i_4_n_0;
  wire quatizer_in_fu_608_p2__1_carry__1_i_5_n_0;
  wire quatizer_in_fu_608_p2__1_carry__1_n_1;
  wire quatizer_in_fu_608_p2__1_carry__1_n_2;
  wire quatizer_in_fu_608_p2__1_carry__1_n_3;
  wire quatizer_in_fu_608_p2__1_carry_i_1_n_0;
  wire quatizer_in_fu_608_p2__1_carry_i_2_n_0;
  wire quatizer_in_fu_608_p2__1_carry_i_3_n_0;
  wire quatizer_in_fu_608_p2__1_carry_i_4_n_0;
  wire quatizer_in_fu_608_p2__1_carry_i_5_n_0;
  wire quatizer_in_fu_608_p2__1_carry_i_6_n_0;
  wire quatizer_in_fu_608_p2__1_carry_i_7_n_0;
  wire quatizer_in_fu_608_p2__1_carry_n_0;
  wire quatizer_in_fu_608_p2__1_carry_n_1;
  wire quatizer_in_fu_608_p2__1_carry_n_2;
  wire quatizer_in_fu_608_p2__1_carry_n_3;
  wire quatizer_in_fu_608_p2__1_carry_n_7;
  wire ram_reg;
  wire ram_reg_i_27_n_0;
  wire [8:0]select_ln221_1_fu_535_p3;
  wire [8:0]select_ln221_1_reg_1585;
  wire [8:0]\select_ln221_1_reg_1585_reg[8]_0 ;
  wire [8:0]\select_ln221_1_reg_1585_reg[8]_1 ;
  wire [8:0]select_ln221_2_fu_542_p3;
  wire [8:0]select_ln221_2_reg_1590;
  wire [8:0]\select_ln221_2_reg_1590_reg[8]_0 ;
  wire [8:0]\select_ln221_2_reg_1590_reg[8]_1 ;
  wire [8:0]select_ln221_fu_528_p3;
  wire [8:0]select_ln221_reg_1580;
  wire [8:0]\select_ln221_reg_1580_reg[8]_0 ;
  wire select_ln252_1_fu_1214_p3;
  wire select_ln252_2_fu_1364_p3;
  wire select_ln252_fu_1064_p3;
  wire [5:3]sext_ln217_2_fu_571_p1;
  wire [5:3]sext_ln217_5_fu_689_p1;
  wire [5:3]sext_ln217_8_fu_807_p1;
  wire [4:2]sext_ln233_11_fu_1148_p1;
  wire [4:2]sext_ln233_13_fu_1272_p1;
  wire [3:2]sext_ln233_14_fu_1254_p1;
  wire [4:2]sext_ln233_17_fu_1298_p1;
  wire [4:2]sext_ln233_3_fu_972_p1;
  wire [4:2]sext_ln233_5_fu_998_p1;
  wire [3:2]sext_ln233_6_fu_1104_p1;
  wire [4:2]sext_ln233_8_fu_1122_p1;
  wire [3:2]sext_ln233_fu_954_p1;
  wire [2:0]sext_ln234_1_fu_1168_p1;
  wire [2:0]sext_ln234_2_fu_1318_p1;
  wire [2:0]sext_ln234_fu_1018_p1;
  wire sum_tmp_1_fu_1152_p2__1_carry__0_i_1_n_0;
  wire sum_tmp_1_fu_1152_p2__1_carry__0_i_3_n_0;
  wire sum_tmp_1_fu_1152_p2__1_carry__0_i_4_n_0;
  wire sum_tmp_1_fu_1152_p2__1_carry__0_n_2;
  wire sum_tmp_1_fu_1152_p2__1_carry__0_n_3;
  wire sum_tmp_1_fu_1152_p2__1_carry_i_3_n_0;
  wire sum_tmp_1_fu_1152_p2__1_carry_i_4_n_0;
  wire sum_tmp_1_fu_1152_p2__1_carry_i_5_n_0;
  wire sum_tmp_1_fu_1152_p2__1_carry_i_6_n_0;
  wire sum_tmp_1_fu_1152_p2__1_carry_n_0;
  wire sum_tmp_1_fu_1152_p2__1_carry_n_1;
  wire sum_tmp_1_fu_1152_p2__1_carry_n_2;
  wire sum_tmp_1_fu_1152_p2__1_carry_n_3;
  wire sum_tmp_2_fu_1302_p2__1_carry__0_i_1_n_0;
  wire sum_tmp_2_fu_1302_p2__1_carry__0_i_3_n_0;
  wire sum_tmp_2_fu_1302_p2__1_carry__0_i_4_n_0;
  wire sum_tmp_2_fu_1302_p2__1_carry__0_n_2;
  wire sum_tmp_2_fu_1302_p2__1_carry__0_n_3;
  wire sum_tmp_2_fu_1302_p2__1_carry_i_3_n_0;
  wire sum_tmp_2_fu_1302_p2__1_carry_i_4_n_0;
  wire sum_tmp_2_fu_1302_p2__1_carry_i_5_n_0;
  wire sum_tmp_2_fu_1302_p2__1_carry_i_6_n_0;
  wire sum_tmp_2_fu_1302_p2__1_carry_n_0;
  wire sum_tmp_2_fu_1302_p2__1_carry_n_1;
  wire sum_tmp_2_fu_1302_p2__1_carry_n_2;
  wire sum_tmp_2_fu_1302_p2__1_carry_n_3;
  wire sum_tmp_fu_1002_p2__1_carry__0_i_1_n_0;
  wire sum_tmp_fu_1002_p2__1_carry__0_i_3_n_0;
  wire sum_tmp_fu_1002_p2__1_carry__0_i_4_n_0;
  wire sum_tmp_fu_1002_p2__1_carry__0_n_2;
  wire sum_tmp_fu_1002_p2__1_carry__0_n_3;
  wire sum_tmp_fu_1002_p2__1_carry_i_3_n_0;
  wire sum_tmp_fu_1002_p2__1_carry_i_4_n_0;
  wire sum_tmp_fu_1002_p2__1_carry_i_5_n_0;
  wire sum_tmp_fu_1002_p2__1_carry_i_6_n_0;
  wire sum_tmp_fu_1002_p2__1_carry_n_0;
  wire sum_tmp_fu_1002_p2__1_carry_n_1;
  wire sum_tmp_fu_1002_p2__1_carry_n_2;
  wire sum_tmp_fu_1002_p2__1_carry_n_3;
  wire [9:0]tmp_10_reg_1638;
  wire tmp_11_fu_742_p3;
  wire [9:0]tmp_16_reg_1670;
  wire tmp_17_fu_860_p3;
  wire \tmp_3_reg_1527_pp0_iter2_reg_reg[0]_srl2_n_0 ;
  wire \tmp_3_reg_1527_pp0_iter2_reg_reg[1]_srl2_n_0 ;
  wire \tmp_3_reg_1527_pp0_iter2_reg_reg[2]_srl2_n_0 ;
  wire \tmp_3_reg_1527_pp0_iter2_reg_reg[3]_srl2_n_0 ;
  wire \tmp_3_reg_1527_pp0_iter2_reg_reg[4]_srl2_i_2_n_0 ;
  wire \tmp_3_reg_1527_pp0_iter2_reg_reg[4]_srl2_n_0 ;
  wire \tmp_3_reg_1527_pp0_iter2_reg_reg[5]_srl2_n_0 ;
  wire \tmp_3_reg_1527_pp0_iter2_reg_reg[6]_srl2_n_0 ;
  wire \tmp_3_reg_1527_pp0_iter2_reg_reg[7]_srl2_i_2_n_0 ;
  wire \tmp_3_reg_1527_pp0_iter2_reg_reg[7]_srl2_n_0 ;
  wire \tmp_3_reg_1527_pp0_iter2_reg_reg[8]_srl2_i_2_n_0 ;
  wire \tmp_3_reg_1527_pp0_iter2_reg_reg[8]_srl2_n_0 ;
  wire \tmp_3_reg_1527_pp0_iter2_reg_reg[9]_srl2_i_2_n_0 ;
  wire \tmp_3_reg_1527_pp0_iter2_reg_reg[9]_srl2_n_0 ;
  wire [9:0]tmp_3_reg_1527_pp0_iter3_reg;
  wire tmp_5_fu_624_p3;
  wire [9:0]tmp_s_reg_1606;
  wire [0:0]trunc_ln190_1_fu_448_p1;
  wire trunc_ln190_reg_1512;
  wire trunc_ln190_reg_1512_pp0_iter2_reg;
  wire trunc_ln190_reg_1512_pp0_iter3_reg;
  wire [23:0]write_word_fu_1386_p4;
  wire \write_word_reg_1691[11]_i_2_n_0 ;
  wire \write_word_reg_1691[12]_i_2_n_0 ;
  wire \write_word_reg_1691[13]_i_2_n_0 ;
  wire \write_word_reg_1691[13]_i_3_n_0 ;
  wire \write_word_reg_1691[13]_i_5_n_0 ;
  wire \write_word_reg_1691[14]_i_2_n_0 ;
  wire \write_word_reg_1691[15]_i_2_n_0 ;
  wire \write_word_reg_1691[19]_i_2_n_0 ;
  wire \write_word_reg_1691[20]_i_2_n_0 ;
  wire \write_word_reg_1691[21]_i_2_n_0 ;
  wire \write_word_reg_1691[21]_i_3_n_0 ;
  wire \write_word_reg_1691[21]_i_5_n_0 ;
  wire \write_word_reg_1691[22]_i_2_n_0 ;
  wire \write_word_reg_1691[23]_i_2_n_0 ;
  wire \write_word_reg_1691[3]_i_2_n_0 ;
  wire \write_word_reg_1691[4]_i_2_n_0 ;
  wire \write_word_reg_1691[5]_i_2_n_0 ;
  wire \write_word_reg_1691[5]_i_3_n_0 ;
  wire \write_word_reg_1691[5]_i_5_n_0 ;
  wire \write_word_reg_1691[6]_i_2_n_0 ;
  wire \write_word_reg_1691[7]_i_2_n_0 ;
  wire [23:0]\write_word_reg_1691_reg[23]_0 ;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready;
  wire xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start;
  wire [3:0]NLW_cmp147_fu_507_p2_carry_O_UNCONNECTED;
  wire [3:2]NLW_cmp147_fu_507_p2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_cmp147_fu_507_p2_carry__0_O_UNCONNECTED;
  wire [3:1]\NLW_col_index_1_fu_164_reg[14]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_col_index_1_fu_164_reg[14]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_icmp_ln185_fu_425_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln185_fu_425_p2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_icmp_ln185_fu_425_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln185_fu_425_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln190_fu_420_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln190_fu_420_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln199_fu_480_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln199_fu_480_p2_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_indvar_flatten_fu_168_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]NLW_quatizer_in_1_fu_726_p2__1_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_quatizer_in_2_fu_844_p2__1_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_quatizer_in_fu_608_p2__1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sum_tmp_1_fu_1152_p2__1_carry_O_UNCONNECTED;
  wire [3:2]NLW_sum_tmp_1_fu_1152_p2__1_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_sum_tmp_1_fu_1152_p2__1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_sum_tmp_2_fu_1302_p2__1_carry_O_UNCONNECTED;
  wire [3:2]NLW_sum_tmp_2_fu_1302_p2__1_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_sum_tmp_2_fu_1302_p2__1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_sum_tmp_fu_1002_p2__1_carry_O_UNCONNECTED;
  wire [3:2]NLW_sum_tmp_fu_1002_p2__1_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_sum_tmp_fu_1002_p2__1_carry__0_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00800000)) 
    \SRL_SIG[0][23]_i_1 
       (.I0(ap_enable_reg_pp0_iter5),
        .I1(icmp_ln199_reg_1519_pp0_iter4_reg),
        .I2(out_mat_data_full_n),
        .I3(ap_block_pp0_stage0_11001__0),
        .I4(Q[3]),
        .O(ap_enable_reg_pp0_iter5_reg_0));
  LUT5 #(
    .INIT(32'hC0C00888)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg),
        .I1(ap_rst_n),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln185_fu_425_p2),
        .I4(ap_block_pp0_stage0_11001__0),
        .O(ap_enable_reg_pp0_iter1_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__0_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h888800C0)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter2_reg_n_0),
        .I1(ap_rst_n),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln185_fu_425_p2),
        .I4(ap_block_pp0_stage0_11001__0),
        .O(ap_enable_reg_pp0_iter2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter2_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    ap_enable_reg_pp0_iter3_i_1
       (.I0(ap_block_pp0_stage0_11001__0),
        .I1(ap_enable_reg_pp0_iter2_reg_n_0),
        .I2(ap_enable_reg_pp0_iter3),
        .O(ap_enable_reg_pp0_iter3_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    ap_enable_reg_pp0_iter4_i_1
       (.I0(ap_block_pp0_stage0_11001__0),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(ap_enable_reg_pp0_iter4),
        .O(ap_enable_reg_pp0_iter4_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter4_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter4),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hE4)) 
    ap_enable_reg_pp0_iter5_i_1
       (.I0(ap_block_pp0_stage0_11001__0),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(ap_enable_reg_pp0_iter5),
        .O(ap_enable_reg_pp0_iter5_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter5_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter5_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter5),
        .R(ap_rst_n_inv));
  (* srl_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/ap_loop_exit_ready_pp0_iter3_reg_reg_srl2 " *) 
  SRL16E ap_loop_exit_ready_pp0_iter3_reg_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter3_reg_reg_srl2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_loop_exit_ready_pp0_iter3_reg_reg_srl2_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(icmp_ln185_fu_425_p2),
        .O(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_ready));
  FDRE ap_loop_exit_ready_pp0_iter4_reg_reg__0
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(ap_loop_exit_ready_pp0_iter3_reg_reg_srl2_n_0),
        .Q(ap_loop_exit_ready_pp0_iter4_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_phi_reg_pp0_iter3_read_word_1_reg_359[29]_i_1 
       (.I0(ap_enable_reg_pp0_iter2_reg_n_0),
        .I1(ap_block_pp0_stage0_11001__0),
        .O(ap_phi_reg_pp0_iter3_read_word_1_reg_3590));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[0] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [0]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[0]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[10] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [10]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[10]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[11] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [11]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[11]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[12] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [12]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[12]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[13] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [13]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[13]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[14] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [14]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[14]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[15] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [15]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[15]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[16] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [16]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[16]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[17] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [17]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[17]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[18] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [18]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[18]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[19] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [19]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[19]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[1] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [1]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[1]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[20] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [20]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[20]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[21] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [21]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[21]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[22] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [22]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[22]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[23] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [23]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[23]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[24] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [24]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[24]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[25] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [25]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[25]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[26] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [26]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[26]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[27] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [27]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[27]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[28] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [28]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[28]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [29]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[29]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[2] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [2]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[2]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[3] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [3]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[3]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[4] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [4]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[4]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[5] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [5]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[5]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[6] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [6]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[6]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[7] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [7]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[7]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[8] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [8]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[8]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[9] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_read_word_1_reg_3590),
        .D(\ap_phi_reg_pp0_iter3_read_word_1_reg_359_reg[29]_0 [9]),
        .Q(ap_phi_reg_pp0_iter3_read_word_1_reg_359[9]),
        .R(1'b0));
  (* srl_bus_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/cmp129_reg_1523_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/cmp129_reg_1523_pp0_iter2_reg_reg[0]_srl2 " *) 
  SRL16E \cmp129_reg_1523_pp0_iter2_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(cmp129_fu_485_p2),
        .Q(\cmp129_reg_1523_pp0_iter2_reg_reg[0]_srl2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAFFFAFFFAFFEA)) 
    \cmp129_reg_1523_pp0_iter2_reg_reg[0]_srl2_i_1 
       (.I0(\cmp129_reg_1523_pp0_iter2_reg_reg[0]_srl2_i_2_n_0 ),
        .I1(\col_index_1_fu_164_reg_n_0_[5] ),
        .I2(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I3(\cmp129_reg_1523_pp0_iter2_reg_reg[0]_srl2_i_3_n_0 ),
        .I4(\col_index_1_fu_164_reg_n_0_[10] ),
        .I5(\col_index_1_fu_164_reg_n_0_[11] ),
        .O(cmp129_fu_485_p2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \cmp129_reg_1523_pp0_iter2_reg_reg[0]_srl2_i_2 
       (.I0(ADDRBWRADDR[7]),
        .I1(ADDRBWRADDR[8]),
        .I2(cmp147_fu_507_p2_carry__0_i_4_n_0),
        .I3(cmp147_fu_507_p2_carry__0_i_5_n_0),
        .I4(\tmp_3_reg_1527_pp0_iter2_reg_reg[7]_srl2_i_2_n_0 ),
        .I5(cmp147_fu_507_p2_carry__0_i_3_n_0),
        .O(\cmp129_reg_1523_pp0_iter2_reg_reg[0]_srl2_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \cmp129_reg_1523_pp0_iter2_reg_reg[0]_srl2_i_3 
       (.I0(\col_index_1_fu_164_reg_n_0_[7] ),
        .I1(\col_index_1_fu_164_reg_n_0_[6] ),
        .I2(icmp_ln190_fu_420_p2_carry__0_n_0),
        .O(\cmp129_reg_1523_pp0_iter2_reg_reg[0]_srl2_i_3_n_0 ));
  FDRE \cmp129_reg_1523_pp0_iter3_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\cmp129_reg_1523_pp0_iter2_reg_reg[0]_srl2_n_0 ),
        .Q(cmp129_reg_1523_pp0_iter3_reg),
        .R(1'b0));
  CARRY4 cmp147_fu_507_p2_carry
       (.CI(1'b0),
        .CO({cmp147_fu_507_p2_carry_n_0,cmp147_fu_507_p2_carry_n_1,cmp147_fu_507_p2_carry_n_2,cmp147_fu_507_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cmp147_fu_507_p2_carry_O_UNCONNECTED[3:0]),
        .S({cmp147_fu_507_p2_carry_i_1_n_0,cmp147_fu_507_p2_carry_i_2_n_0,cmp147_fu_507_p2_carry_i_3_n_0,cmp147_fu_507_p2_carry_i_4_n_0}));
  CARRY4 cmp147_fu_507_p2_carry__0
       (.CI(cmp147_fu_507_p2_carry_n_0),
        .CO({NLW_cmp147_fu_507_p2_carry__0_CO_UNCONNECTED[3:2],cmp147_fu_507_p2,cmp147_fu_507_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cmp147_fu_507_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,cmp147_fu_507_p2_carry__0_i_1_n_0,cmp147_fu_507_p2_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    cmp147_fu_507_p2_carry__0_i_1
       (.I0(\cmp147_reg_1532_reg[0]_0 [16]),
        .I1(\cmp147_reg_1532_reg[0]_0 [15]),
        .O(cmp147_fu_507_p2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000099009900000)) 
    cmp147_fu_507_p2_carry__0_i_2
       (.I0(\cmp147_reg_1532_reg[0]_0 [12]),
        .I1(cmp147_fu_507_p2_carry__0_i_3_n_0),
        .I2(cmp147_fu_507_p2_carry__0_i_4_n_0),
        .I3(\cmp147_reg_1532_reg[0]_0 [13]),
        .I4(cmp147_fu_507_p2_carry__0_i_5_n_0),
        .I5(\cmp147_reg_1532_reg[0]_0 [14]),
        .O(cmp147_fu_507_p2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cmp147_fu_507_p2_carry__0_i_3
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[12] ),
        .O(cmp147_fu_507_p2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    cmp147_fu_507_p2_carry__0_i_4
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[13] ),
        .O(cmp147_fu_507_p2_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    cmp147_fu_507_p2_carry__0_i_5
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[14] ),
        .O(cmp147_fu_507_p2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmp147_fu_507_p2_carry_i_1
       (.I0(\cmp147_reg_1532_reg[0]_0 [10]),
        .I1(ADDRBWRADDR[9]),
        .I2(ADDRBWRADDR[8]),
        .I3(\cmp147_reg_1532_reg[0]_0 [9]),
        .I4(cmp147_fu_507_p2_carry_i_5_n_0),
        .I5(\cmp147_reg_1532_reg[0]_0 [11]),
        .O(cmp147_fu_507_p2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmp147_fu_507_p2_carry_i_2
       (.I0(\cmp147_reg_1532_reg[0]_0 [7]),
        .I1(ADDRBWRADDR[6]),
        .I2(ADDRBWRADDR[5]),
        .I3(\cmp147_reg_1532_reg[0]_0 [6]),
        .I4(ADDRBWRADDR[7]),
        .I5(\cmp147_reg_1532_reg[0]_0 [8]),
        .O(cmp147_fu_507_p2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmp147_fu_507_p2_carry_i_3
       (.I0(\cmp147_reg_1532_reg[0]_0 [4]),
        .I1(ADDRBWRADDR[3]),
        .I2(ADDRBWRADDR[2]),
        .I3(\cmp147_reg_1532_reg[0]_0 [3]),
        .I4(ADDRBWRADDR[4]),
        .I5(\cmp147_reg_1532_reg[0]_0 [5]),
        .O(cmp147_fu_507_p2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmp147_fu_507_p2_carry_i_4
       (.I0(\cmp147_reg_1532_reg[0]_0 [1]),
        .I1(ADDRBWRADDR[0]),
        .I2(trunc_ln190_1_fu_448_p1),
        .I3(\cmp147_reg_1532_reg[0]_0 [0]),
        .I4(ADDRBWRADDR[1]),
        .I5(\cmp147_reg_1532_reg[0]_0 [2]),
        .O(cmp147_fu_507_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cmp147_fu_507_p2_carry_i_5
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[11] ),
        .O(cmp147_fu_507_p2_carry_i_5_n_0));
  FDRE \cmp147_reg_1532_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(cmp147_reg_1532),
        .Q(cmp147_reg_1532_pp0_iter2_reg),
        .R(1'b0));
  FDRE \cmp147_reg_1532_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(cmp147_reg_1532_pp0_iter2_reg),
        .Q(cmp147_reg_1532_pp0_iter3_reg),
        .R(1'b0));
  FDRE \cmp147_reg_1532_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(cmp147_fu_507_p2),
        .Q(cmp147_reg_1532),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \col_index_1_fu_164[0]_i_1 
       (.I0(\col_index_1_fu_164_reg_n_0_[0] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_n_0),
        .O(add_ln190_fu_512_p2[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \col_index_1_fu_164[12]_i_2 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[12] ),
        .O(\col_index_1_fu_164[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \col_index_1_fu_164[12]_i_3 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[11] ),
        .O(\col_index_1_fu_164[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \col_index_1_fu_164[12]_i_4 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[10] ),
        .O(\col_index_1_fu_164[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \col_index_1_fu_164[12]_i_5 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[9] ),
        .O(\col_index_1_fu_164[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \col_index_1_fu_164[14]_i_2 
       (.I0(icmp_ln185_fu_425_p2),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_block_pp0_stage0_11001__0),
        .O(col_index_1_fu_164));
  LUT2 #(
    .INIT(4'h8)) 
    \col_index_1_fu_164[14]_i_4 
       (.I0(\col_index_1_fu_164_reg_n_0_[14] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_n_0),
        .O(\col_index_1_fu_164[14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \col_index_1_fu_164[14]_i_5 
       (.I0(\col_index_1_fu_164_reg_n_0_[13] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_n_0),
        .O(\col_index_1_fu_164[14]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \col_index_1_fu_164[4]_i_2 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[4] ),
        .O(\col_index_1_fu_164[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \col_index_1_fu_164[4]_i_3 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[3] ),
        .O(\col_index_1_fu_164[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \col_index_1_fu_164[4]_i_4 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[2] ),
        .O(\col_index_1_fu_164[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \col_index_1_fu_164[4]_i_5 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[1] ),
        .O(\col_index_1_fu_164[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \col_index_1_fu_164[8]_i_2 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[8] ),
        .O(\col_index_1_fu_164[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \col_index_1_fu_164[8]_i_3 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[7] ),
        .O(\col_index_1_fu_164[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \col_index_1_fu_164[8]_i_4 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[6] ),
        .O(\col_index_1_fu_164[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \col_index_1_fu_164[8]_i_5 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[5] ),
        .O(\col_index_1_fu_164[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[0] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[0]),
        .Q(\col_index_1_fu_164_reg_n_0_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[10] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[10]),
        .Q(\col_index_1_fu_164_reg_n_0_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[11] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[11]),
        .Q(\col_index_1_fu_164_reg_n_0_[11] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[12] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[12]),
        .Q(\col_index_1_fu_164_reg_n_0_[12] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \col_index_1_fu_164_reg[12]_i_1 
       (.CI(\col_index_1_fu_164_reg[8]_i_1_n_0 ),
        .CO({\col_index_1_fu_164_reg[12]_i_1_n_0 ,\col_index_1_fu_164_reg[12]_i_1_n_1 ,\col_index_1_fu_164_reg[12]_i_1_n_2 ,\col_index_1_fu_164_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln190_fu_512_p2[12:9]),
        .S({\col_index_1_fu_164[12]_i_2_n_0 ,\col_index_1_fu_164[12]_i_3_n_0 ,\col_index_1_fu_164[12]_i_4_n_0 ,\col_index_1_fu_164[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[13] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[13]),
        .Q(\col_index_1_fu_164_reg_n_0_[13] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[14] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[14]),
        .Q(\col_index_1_fu_164_reg_n_0_[14] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \col_index_1_fu_164_reg[14]_i_3 
       (.CI(\col_index_1_fu_164_reg[12]_i_1_n_0 ),
        .CO({\NLW_col_index_1_fu_164_reg[14]_i_3_CO_UNCONNECTED [3:1],\col_index_1_fu_164_reg[14]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_col_index_1_fu_164_reg[14]_i_3_O_UNCONNECTED [3:2],add_ln190_fu_512_p2[14:13]}),
        .S({1'b0,1'b0,\col_index_1_fu_164[14]_i_4_n_0 ,\col_index_1_fu_164[14]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[1] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[1]),
        .Q(\col_index_1_fu_164_reg_n_0_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[2] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[2]),
        .Q(\col_index_1_fu_164_reg_n_0_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[3] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[3]),
        .Q(\col_index_1_fu_164_reg_n_0_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[4] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[4]),
        .Q(\col_index_1_fu_164_reg_n_0_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \col_index_1_fu_164_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\col_index_1_fu_164_reg[4]_i_1_n_0 ,\col_index_1_fu_164_reg[4]_i_1_n_1 ,\col_index_1_fu_164_reg[4]_i_1_n_2 ,\col_index_1_fu_164_reg[4]_i_1_n_3 }),
        .CYINIT(trunc_ln190_1_fu_448_p1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln190_fu_512_p2[4:1]),
        .S({\col_index_1_fu_164[4]_i_2_n_0 ,\col_index_1_fu_164[4]_i_3_n_0 ,\col_index_1_fu_164[4]_i_4_n_0 ,\col_index_1_fu_164[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[5] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[5]),
        .Q(\col_index_1_fu_164_reg_n_0_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[6] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[6]),
        .Q(\col_index_1_fu_164_reg_n_0_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[7] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[7]),
        .Q(\col_index_1_fu_164_reg_n_0_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[8] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[8]),
        .Q(\col_index_1_fu_164_reg_n_0_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \col_index_1_fu_164_reg[8]_i_1 
       (.CI(\col_index_1_fu_164_reg[4]_i_1_n_0 ),
        .CO({\col_index_1_fu_164_reg[8]_i_1_n_0 ,\col_index_1_fu_164_reg[8]_i_1_n_1 ,\col_index_1_fu_164_reg[8]_i_1_n_2 ,\col_index_1_fu_164_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln190_fu_512_p2[8:5]),
        .S({\col_index_1_fu_164[8]_i_2_n_0 ,\col_index_1_fu_164[8]_i_3_n_0 ,\col_index_1_fu_164[8]_i_4_n_0 ,\col_index_1_fu_164[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_1_fu_164_reg[9] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(add_ln190_fu_512_p2[9]),
        .Q(\col_index_1_fu_164_reg_n_0_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  LUT2 #(
    .INIT(4'h2)) 
    \empty_36_fu_128[2]_i_2 
       (.I0(ap_enable_reg_pp0_iter3),
        .I1(ap_block_pp0_stage0_11001__0),
        .O(empty_36_fu_128));
  FDRE #(
    .INIT(1'b0)) 
    \empty_36_fu_128_reg[0] 
       (.C(ap_clk),
        .CE(empty_36_fu_128),
        .D(quatizer_in_fu_608_p2__1_carry_n_7),
        .Q(sext_ln217_2_fu_571_p1[3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \empty_36_fu_128_reg[2] 
       (.C(ap_clk),
        .CE(empty_36_fu_128),
        .D(tmp_5_fu_624_p3),
        .Q(sext_ln217_2_fu_571_p1[5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \empty_37_fu_132_reg[0] 
       (.C(ap_clk),
        .CE(empty_36_fu_128),
        .D(sext_ln217_2_fu_571_p1[3]),
        .Q(empty_37_fu_132[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \empty_37_fu_132_reg[2] 
       (.C(ap_clk),
        .CE(empty_36_fu_128),
        .D(sext_ln217_2_fu_571_p1[5]),
        .Q(empty_37_fu_132[2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \empty_38_fu_140_reg[0] 
       (.C(ap_clk),
        .CE(empty_36_fu_128),
        .D(quatizer_in_1_fu_726_p2__1_carry_n_7),
        .Q(sext_ln217_5_fu_689_p1[3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \empty_38_fu_140_reg[2] 
       (.C(ap_clk),
        .CE(empty_36_fu_128),
        .D(tmp_11_fu_742_p3),
        .Q(sext_ln217_5_fu_689_p1[5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \empty_39_fu_144_reg[0] 
       (.C(ap_clk),
        .CE(empty_36_fu_128),
        .D(sext_ln217_5_fu_689_p1[3]),
        .Q(empty_39_fu_144[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \empty_39_fu_144_reg[2] 
       (.C(ap_clk),
        .CE(empty_36_fu_128),
        .D(sext_ln217_5_fu_689_p1[5]),
        .Q(empty_39_fu_144[2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \empty_40_fu_152_reg[0] 
       (.C(ap_clk),
        .CE(empty_36_fu_128),
        .D(quatizer_in_2_fu_844_p2__1_carry_n_7),
        .Q(sext_ln217_8_fu_807_p1[3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \empty_40_fu_152_reg[2] 
       (.C(ap_clk),
        .CE(empty_36_fu_128),
        .D(tmp_17_fu_860_p3),
        .Q(sext_ln217_8_fu_807_p1[5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \empty_41_fu_156_reg[0] 
       (.C(ap_clk),
        .CE(empty_36_fu_128),
        .D(sext_ln217_8_fu_807_p1[3]),
        .Q(empty_41_fu_156[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \empty_41_fu_156_reg[2] 
       (.C(ap_clk),
        .CE(empty_36_fu_128),
        .D(sext_ln217_8_fu_807_p1[5]),
        .Q(empty_41_fu_156[2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_flow_control_loop_pipe_sequential_init_9 flow_control_loop_pipe_sequential_init_U
       (.Q({Q[3:2],Q[0]}),
        .SR(flow_control_loop_pipe_sequential_init_U_n_5),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .ap_block_pp0_stage0_11001__0(ap_block_pp0_stage0_11001__0),
        .ap_clk(ap_clk),
        .ap_done_cache_reg_0(ap_done_cache_reg),
        .ap_done_cache_reg_1(ap_enable_reg_pp0_iter2_reg_n_0),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_enable_reg_pp0_iter5(ap_enable_reg_pp0_iter5),
        .ap_loop_exit_ready_pp0_iter4_reg(ap_loop_exit_ready_pp0_iter4_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .cmp147_reg_1532_pp0_iter2_reg(cmp147_reg_1532_pp0_iter2_reg),
        .grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg),
        .grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_6),
        .icmp_ln185_reg_1508(icmp_ln185_reg_1508),
        .icmp_ln199_reg_1519_pp0_iter4_reg(icmp_ln199_reg_1519_pp0_iter4_reg),
        .in_mat_cols_c_empty_n(in_mat_cols_c_empty_n),
        .in_mat_data_empty_n(in_mat_data_empty_n),
        .in_mat_rows_c_empty_n(in_mat_rows_c_empty_n),
        .\mOutPtr_reg[0] (\icmp_ln199_reg_1519_reg[0]_0 ),
        .out_mat_data_full_n(out_mat_data_full_n),
        .p_8_in(p_8_in),
        .xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_ready),
        .xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start(xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0_ap_start));
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg_i_1
       (.I0(ap_block_pp0_stage0_11001__0),
        .I1(icmp_ln185_fu_425_p2),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q[2]),
        .I4(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_ap_start_reg),
        .O(ap_enable_reg_pp0_iter1_reg_0));
  CARRY4 icmp_ln185_fu_425_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln185_fu_425_p2_carry_n_0,icmp_ln185_fu_425_p2_carry_n_1,icmp_ln185_fu_425_p2_carry_n_2,icmp_ln185_fu_425_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln185_fu_425_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln185_fu_425_p2_carry_i_1_n_0,icmp_ln185_fu_425_p2_carry_i_2_n_0,icmp_ln185_fu_425_p2_carry_i_3_n_0,icmp_ln185_fu_425_p2_carry_i_4_n_0}));
  CARRY4 icmp_ln185_fu_425_p2_carry__0
       (.CI(icmp_ln185_fu_425_p2_carry_n_0),
        .CO({icmp_ln185_fu_425_p2_carry__0_n_0,icmp_ln185_fu_425_p2_carry__0_n_1,icmp_ln185_fu_425_p2_carry__0_n_2,icmp_ln185_fu_425_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln185_fu_425_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln185_fu_425_p2_carry__0_i_1_n_0,icmp_ln185_fu_425_p2_carry__0_i_2_n_0,icmp_ln185_fu_425_p2_carry__0_i_3_n_0,icmp_ln185_fu_425_p2_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln185_fu_425_p2_carry__0_i_1
       (.I0(indvar_flatten_fu_168_reg[22]),
        .I1(P[22]),
        .I2(P[21]),
        .I3(indvar_flatten_fu_168_reg[21]),
        .I4(P[23]),
        .I5(indvar_flatten_fu_168_reg[23]),
        .O(icmp_ln185_fu_425_p2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln185_fu_425_p2_carry__0_i_2
       (.I0(indvar_flatten_fu_168_reg[19]),
        .I1(P[19]),
        .I2(P[18]),
        .I3(indvar_flatten_fu_168_reg[18]),
        .I4(P[20]),
        .I5(indvar_flatten_fu_168_reg[20]),
        .O(icmp_ln185_fu_425_p2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln185_fu_425_p2_carry__0_i_3
       (.I0(indvar_flatten_fu_168_reg[16]),
        .I1(P[16]),
        .I2(P[15]),
        .I3(indvar_flatten_fu_168_reg[15]),
        .I4(P[17]),
        .I5(indvar_flatten_fu_168_reg[17]),
        .O(icmp_ln185_fu_425_p2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln185_fu_425_p2_carry__0_i_4
       (.I0(indvar_flatten_fu_168_reg[13]),
        .I1(P[13]),
        .I2(P[12]),
        .I3(indvar_flatten_fu_168_reg[12]),
        .I4(P[14]),
        .I5(indvar_flatten_fu_168_reg[14]),
        .O(icmp_ln185_fu_425_p2_carry__0_i_4_n_0));
  CARRY4 icmp_ln185_fu_425_p2_carry__1
       (.CI(icmp_ln185_fu_425_p2_carry__0_n_0),
        .CO({NLW_icmp_ln185_fu_425_p2_carry__1_CO_UNCONNECTED[3],icmp_ln185_fu_425_p2,icmp_ln185_fu_425_p2_carry__1_n_2,icmp_ln185_fu_425_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln185_fu_425_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,icmp_ln185_fu_425_p2_carry__1_i_1_n_0,icmp_ln185_fu_425_p2_carry__1_i_2_n_0,icmp_ln185_fu_425_p2_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln185_fu_425_p2_carry__1_i_1
       (.I0(indvar_flatten_fu_168_reg[30]),
        .I1(P[30]),
        .I2(P[31]),
        .I3(indvar_flatten_fu_168_reg[31]),
        .O(icmp_ln185_fu_425_p2_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln185_fu_425_p2_carry__1_i_2
       (.I0(indvar_flatten_fu_168_reg[28]),
        .I1(P[28]),
        .I2(P[27]),
        .I3(indvar_flatten_fu_168_reg[27]),
        .I4(P[29]),
        .I5(indvar_flatten_fu_168_reg[29]),
        .O(icmp_ln185_fu_425_p2_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln185_fu_425_p2_carry__1_i_3
       (.I0(indvar_flatten_fu_168_reg[25]),
        .I1(P[25]),
        .I2(P[24]),
        .I3(indvar_flatten_fu_168_reg[24]),
        .I4(P[26]),
        .I5(indvar_flatten_fu_168_reg[26]),
        .O(icmp_ln185_fu_425_p2_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln185_fu_425_p2_carry_i_1
       (.I0(indvar_flatten_fu_168_reg[10]),
        .I1(P[10]),
        .I2(P[9]),
        .I3(indvar_flatten_fu_168_reg[9]),
        .I4(P[11]),
        .I5(indvar_flatten_fu_168_reg[11]),
        .O(icmp_ln185_fu_425_p2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln185_fu_425_p2_carry_i_2
       (.I0(indvar_flatten_fu_168_reg[7]),
        .I1(P[7]),
        .I2(P[6]),
        .I3(indvar_flatten_fu_168_reg[6]),
        .I4(P[8]),
        .I5(indvar_flatten_fu_168_reg[8]),
        .O(icmp_ln185_fu_425_p2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln185_fu_425_p2_carry_i_3
       (.I0(indvar_flatten_fu_168_reg[4]),
        .I1(P[4]),
        .I2(P[3]),
        .I3(indvar_flatten_fu_168_reg[3]),
        .I4(P[5]),
        .I5(indvar_flatten_fu_168_reg[5]),
        .O(icmp_ln185_fu_425_p2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln185_fu_425_p2_carry_i_4
       (.I0(indvar_flatten_fu_168_reg[1]),
        .I1(P[1]),
        .I2(P[0]),
        .I3(indvar_flatten_fu_168_reg[0]),
        .I4(P[2]),
        .I5(indvar_flatten_fu_168_reg[2]),
        .O(icmp_ln185_fu_425_p2_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \icmp_ln185_reg_1508[0]_i_1 
       (.I0(ap_block_pp0_stage0_11001__0),
        .O(ap_block_pp0_stage0_subdone));
  FDRE \icmp_ln185_reg_1508_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln185_fu_425_p2),
        .Q(icmp_ln185_reg_1508),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln190_fu_420_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln190_fu_420_p2_carry_n_0,icmp_ln190_fu_420_p2_carry_n_1,icmp_ln190_fu_420_p2_carry_n_2,icmp_ln190_fu_420_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln190_fu_420_p2_carry_i_1_n_0,icmp_ln190_fu_420_p2_carry_i_2_n_0,icmp_ln190_fu_420_p2_carry_i_3_n_0,icmp_ln190_fu_420_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln190_fu_420_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln190_fu_420_p2_carry_i_5_n_0,icmp_ln190_fu_420_p2_carry_i_6_n_0,icmp_ln190_fu_420_p2_carry_i_7_n_0,icmp_ln190_fu_420_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln190_fu_420_p2_carry__0
       (.CI(icmp_ln190_fu_420_p2_carry_n_0),
        .CO({icmp_ln190_fu_420_p2_carry__0_n_0,icmp_ln190_fu_420_p2_carry__0_n_1,icmp_ln190_fu_420_p2_carry__0_n_2,icmp_ln190_fu_420_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln190_fu_420_p2_carry__0_i_1_n_0,icmp_ln190_fu_420_p2_carry__0_i_2_n_0,icmp_ln190_fu_420_p2_carry__0_i_3_n_0,icmp_ln190_fu_420_p2_carry__0_i_4_n_0}),
        .O(NLW_icmp_ln190_fu_420_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln190_fu_420_p2_carry__0_i_5_n_0,icmp_ln190_fu_420_p2_carry__0_i_6_n_0,icmp_ln190_fu_420_p2_carry__0_i_7_n_0,icmp_ln190_fu_420_p2_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h10)) 
    icmp_ln190_fu_420_p2_carry__0_i_1
       (.I0(\col_index_1_fu_164_reg_n_0_[14] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_0[15]),
        .I2(icmp_ln190_fu_420_p2_carry__0_0[14]),
        .O(icmp_ln190_fu_420_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln190_fu_420_p2_carry__0_i_2
       (.I0(icmp_ln190_fu_420_p2_carry__0_0[12]),
        .I1(\col_index_1_fu_164_reg_n_0_[12] ),
        .I2(\col_index_1_fu_164_reg_n_0_[13] ),
        .I3(icmp_ln190_fu_420_p2_carry__0_0[13]),
        .O(icmp_ln190_fu_420_p2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln190_fu_420_p2_carry__0_i_3
       (.I0(icmp_ln190_fu_420_p2_carry__0_0[10]),
        .I1(\col_index_1_fu_164_reg_n_0_[10] ),
        .I2(\col_index_1_fu_164_reg_n_0_[11] ),
        .I3(icmp_ln190_fu_420_p2_carry__0_0[11]),
        .O(icmp_ln190_fu_420_p2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln190_fu_420_p2_carry__0_i_4
       (.I0(icmp_ln190_fu_420_p2_carry__0_0[8]),
        .I1(\col_index_1_fu_164_reg_n_0_[8] ),
        .I2(\col_index_1_fu_164_reg_n_0_[9] ),
        .I3(icmp_ln190_fu_420_p2_carry__0_0[9]),
        .O(icmp_ln190_fu_420_p2_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    icmp_ln190_fu_420_p2_carry__0_i_5
       (.I0(icmp_ln190_fu_420_p2_carry__0_0[14]),
        .I1(icmp_ln190_fu_420_p2_carry__0_0[15]),
        .I2(\col_index_1_fu_164_reg_n_0_[14] ),
        .O(icmp_ln190_fu_420_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln190_fu_420_p2_carry__0_i_6
       (.I0(\col_index_1_fu_164_reg_n_0_[13] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_0[13]),
        .I2(icmp_ln190_fu_420_p2_carry__0_0[12]),
        .I3(\col_index_1_fu_164_reg_n_0_[12] ),
        .O(icmp_ln190_fu_420_p2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln190_fu_420_p2_carry__0_i_7
       (.I0(\col_index_1_fu_164_reg_n_0_[11] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_0[11]),
        .I2(icmp_ln190_fu_420_p2_carry__0_0[10]),
        .I3(\col_index_1_fu_164_reg_n_0_[10] ),
        .O(icmp_ln190_fu_420_p2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln190_fu_420_p2_carry__0_i_8
       (.I0(\col_index_1_fu_164_reg_n_0_[9] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_0[9]),
        .I2(icmp_ln190_fu_420_p2_carry__0_0[8]),
        .I3(\col_index_1_fu_164_reg_n_0_[8] ),
        .O(icmp_ln190_fu_420_p2_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln190_fu_420_p2_carry_i_1
       (.I0(icmp_ln190_fu_420_p2_carry__0_0[6]),
        .I1(\col_index_1_fu_164_reg_n_0_[6] ),
        .I2(\col_index_1_fu_164_reg_n_0_[7] ),
        .I3(icmp_ln190_fu_420_p2_carry__0_0[7]),
        .O(icmp_ln190_fu_420_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln190_fu_420_p2_carry_i_2
       (.I0(icmp_ln190_fu_420_p2_carry__0_0[4]),
        .I1(\col_index_1_fu_164_reg_n_0_[4] ),
        .I2(\col_index_1_fu_164_reg_n_0_[5] ),
        .I3(icmp_ln190_fu_420_p2_carry__0_0[5]),
        .O(icmp_ln190_fu_420_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln190_fu_420_p2_carry_i_3
       (.I0(icmp_ln190_fu_420_p2_carry__0_0[2]),
        .I1(\col_index_1_fu_164_reg_n_0_[2] ),
        .I2(\col_index_1_fu_164_reg_n_0_[3] ),
        .I3(icmp_ln190_fu_420_p2_carry__0_0[3]),
        .O(icmp_ln190_fu_420_p2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln190_fu_420_p2_carry_i_4
       (.I0(icmp_ln190_fu_420_p2_carry__0_0[0]),
        .I1(\col_index_1_fu_164_reg_n_0_[0] ),
        .I2(\col_index_1_fu_164_reg_n_0_[1] ),
        .I3(icmp_ln190_fu_420_p2_carry__0_0[1]),
        .O(icmp_ln190_fu_420_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln190_fu_420_p2_carry_i_5
       (.I0(\col_index_1_fu_164_reg_n_0_[7] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_0[7]),
        .I2(icmp_ln190_fu_420_p2_carry__0_0[6]),
        .I3(\col_index_1_fu_164_reg_n_0_[6] ),
        .O(icmp_ln190_fu_420_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln190_fu_420_p2_carry_i_6
       (.I0(\col_index_1_fu_164_reg_n_0_[5] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_0[5]),
        .I2(icmp_ln190_fu_420_p2_carry__0_0[4]),
        .I3(\col_index_1_fu_164_reg_n_0_[4] ),
        .O(icmp_ln190_fu_420_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln190_fu_420_p2_carry_i_7
       (.I0(\col_index_1_fu_164_reg_n_0_[3] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_0[3]),
        .I2(icmp_ln190_fu_420_p2_carry__0_0[2]),
        .I3(\col_index_1_fu_164_reg_n_0_[2] ),
        .O(icmp_ln190_fu_420_p2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln190_fu_420_p2_carry_i_8
       (.I0(\col_index_1_fu_164_reg_n_0_[1] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_0[1]),
        .I2(icmp_ln190_fu_420_p2_carry__0_0[0]),
        .I3(\col_index_1_fu_164_reg_n_0_[0] ),
        .O(icmp_ln190_fu_420_p2_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln199_fu_480_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln199_fu_480_p2_carry_n_0,icmp_ln199_fu_480_p2_carry_n_1,icmp_ln199_fu_480_p2_carry_n_2,icmp_ln199_fu_480_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln199_fu_480_p2_carry_i_1_n_0,icmp_ln199_fu_480_p2_carry_i_2_n_0,icmp_ln199_fu_480_p2_carry_i_3_n_0,icmp_ln199_fu_480_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln199_fu_480_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln199_fu_480_p2_carry_i_5_n_0,icmp_ln199_fu_480_p2_carry_i_6_n_0,icmp_ln199_fu_480_p2_carry_i_7_n_0,icmp_ln199_fu_480_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln199_fu_480_p2_carry__0
       (.CI(icmp_ln199_fu_480_p2_carry_n_0),
        .CO({icmp_ln199_fu_480_p2,icmp_ln199_fu_480_p2_carry__0_n_1,icmp_ln199_fu_480_p2_carry__0_n_2,icmp_ln199_fu_480_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln199_fu_480_p2_carry__0_i_1_n_0,icmp_ln199_fu_480_p2_carry__0_i_2_n_0,icmp_ln199_fu_480_p2_carry__0_i_3_n_0,icmp_ln199_fu_480_p2_carry__0_i_4_n_0}),
        .O(NLW_icmp_ln199_fu_480_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln199_fu_480_p2_carry__0_i_5_n_0,icmp_ln199_fu_480_p2_carry__0_i_6_n_0,icmp_ln199_fu_480_p2_carry__0_i_7_n_0,icmp_ln199_fu_480_p2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'hFF2A)) 
    icmp_ln199_fu_480_p2_carry__0_i_1
       (.I0(\icmp_ln199_reg_1519_reg[0]_1 [14]),
        .I1(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I2(\col_index_1_fu_164_reg_n_0_[14] ),
        .I3(\icmp_ln199_reg_1519_reg[0]_1 [15]),
        .O(icmp_ln199_fu_480_p2_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h20FAF2FA)) 
    icmp_ln199_fu_480_p2_carry__0_i_2
       (.I0(\icmp_ln199_reg_1519_reg[0]_1 [12]),
        .I1(\col_index_1_fu_164_reg_n_0_[12] ),
        .I2(\icmp_ln199_reg_1519_reg[0]_1 [13]),
        .I3(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I4(\col_index_1_fu_164_reg_n_0_[13] ),
        .O(icmp_ln199_fu_480_p2_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    icmp_ln199_fu_480_p2_carry__0_i_3
       (.I0(\icmp_ln199_reg_1519_reg[0]_1 [10]),
        .I1(\col_index_1_fu_164_reg_n_0_[10] ),
        .I2(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I3(\col_index_1_fu_164_reg_n_0_[11] ),
        .I4(\icmp_ln199_reg_1519_reg[0]_1 [11]),
        .O(icmp_ln199_fu_480_p2_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    icmp_ln199_fu_480_p2_carry__0_i_4
       (.I0(\icmp_ln199_reg_1519_reg[0]_1 [8]),
        .I1(\col_index_1_fu_164_reg_n_0_[8] ),
        .I2(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I3(\col_index_1_fu_164_reg_n_0_[9] ),
        .I4(\icmp_ln199_reg_1519_reg[0]_1 [9]),
        .O(icmp_ln199_fu_480_p2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h0087)) 
    icmp_ln199_fu_480_p2_carry__0_i_5
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[14] ),
        .I2(\icmp_ln199_reg_1519_reg[0]_1 [14]),
        .I3(\icmp_ln199_reg_1519_reg[0]_1 [15]),
        .O(icmp_ln199_fu_480_p2_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h84000387)) 
    icmp_ln199_fu_480_p2_carry__0_i_6
       (.I0(\col_index_1_fu_164_reg_n_0_[12] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I2(\icmp_ln199_reg_1519_reg[0]_1 [12]),
        .I3(\col_index_1_fu_164_reg_n_0_[13] ),
        .I4(\icmp_ln199_reg_1519_reg[0]_1 [13]),
        .O(icmp_ln199_fu_480_p2_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h84000387)) 
    icmp_ln199_fu_480_p2_carry__0_i_7
       (.I0(\col_index_1_fu_164_reg_n_0_[10] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I2(\icmp_ln199_reg_1519_reg[0]_1 [10]),
        .I3(\col_index_1_fu_164_reg_n_0_[11] ),
        .I4(\icmp_ln199_reg_1519_reg[0]_1 [11]),
        .O(icmp_ln199_fu_480_p2_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h84000387)) 
    icmp_ln199_fu_480_p2_carry__0_i_8
       (.I0(\col_index_1_fu_164_reg_n_0_[8] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I2(\icmp_ln199_reg_1519_reg[0]_1 [8]),
        .I3(\col_index_1_fu_164_reg_n_0_[9] ),
        .I4(\icmp_ln199_reg_1519_reg[0]_1 [9]),
        .O(icmp_ln199_fu_480_p2_carry__0_i_8_n_0));
  LUT5 #(
    .INIT(32'h2BFF22AA)) 
    icmp_ln199_fu_480_p2_carry_i_1
       (.I0(\icmp_ln199_reg_1519_reg[0]_1 [7]),
        .I1(\col_index_1_fu_164_reg_n_0_[7] ),
        .I2(\col_index_1_fu_164_reg_n_0_[6] ),
        .I3(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I4(\icmp_ln199_reg_1519_reg[0]_1 [6]),
        .O(icmp_ln199_fu_480_p2_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    icmp_ln199_fu_480_p2_carry_i_2
       (.I0(\icmp_ln199_reg_1519_reg[0]_1 [4]),
        .I1(\col_index_1_fu_164_reg_n_0_[4] ),
        .I2(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I3(\col_index_1_fu_164_reg_n_0_[5] ),
        .I4(\icmp_ln199_reg_1519_reg[0]_1 [5]),
        .O(icmp_ln199_fu_480_p2_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    icmp_ln199_fu_480_p2_carry_i_3
       (.I0(\icmp_ln199_reg_1519_reg[0]_1 [2]),
        .I1(\col_index_1_fu_164_reg_n_0_[2] ),
        .I2(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I3(\col_index_1_fu_164_reg_n_0_[3] ),
        .I4(\icmp_ln199_reg_1519_reg[0]_1 [3]),
        .O(icmp_ln199_fu_480_p2_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h2BFF22AA)) 
    icmp_ln199_fu_480_p2_carry_i_4
       (.I0(\icmp_ln199_reg_1519_reg[0]_1 [1]),
        .I1(\col_index_1_fu_164_reg_n_0_[1] ),
        .I2(\col_index_1_fu_164_reg_n_0_[0] ),
        .I3(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I4(\icmp_ln199_reg_1519_reg[0]_1 [0]),
        .O(icmp_ln199_fu_480_p2_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h82050087)) 
    icmp_ln199_fu_480_p2_carry_i_5
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[7] ),
        .I2(\icmp_ln199_reg_1519_reg[0]_1 [7]),
        .I3(\icmp_ln199_reg_1519_reg[0]_1 [6]),
        .I4(\col_index_1_fu_164_reg_n_0_[6] ),
        .O(icmp_ln199_fu_480_p2_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h84000387)) 
    icmp_ln199_fu_480_p2_carry_i_6
       (.I0(\col_index_1_fu_164_reg_n_0_[4] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I2(\icmp_ln199_reg_1519_reg[0]_1 [4]),
        .I3(\col_index_1_fu_164_reg_n_0_[5] ),
        .I4(\icmp_ln199_reg_1519_reg[0]_1 [5]),
        .O(icmp_ln199_fu_480_p2_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h84000387)) 
    icmp_ln199_fu_480_p2_carry_i_7
       (.I0(\col_index_1_fu_164_reg_n_0_[2] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I2(\icmp_ln199_reg_1519_reg[0]_1 [2]),
        .I3(\col_index_1_fu_164_reg_n_0_[3] ),
        .I4(\icmp_ln199_reg_1519_reg[0]_1 [3]),
        .O(icmp_ln199_fu_480_p2_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h82050087)) 
    icmp_ln199_fu_480_p2_carry_i_8
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[1] ),
        .I2(\icmp_ln199_reg_1519_reg[0]_1 [1]),
        .I3(\icmp_ln199_reg_1519_reg[0]_1 [0]),
        .I4(\col_index_1_fu_164_reg_n_0_[0] ),
        .O(icmp_ln199_fu_480_p2_carry_i_8_n_0));
  (* srl_bus_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/icmp_ln199_reg_1519_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/icmp_ln199_reg_1519_pp0_iter3_reg_reg[0]_srl2 " *) 
  SRL16E \icmp_ln199_reg_1519_pp0_iter3_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(\icmp_ln199_reg_1519_reg[0]_0 ),
        .Q(\icmp_ln199_reg_1519_pp0_iter3_reg_reg[0]_srl2_n_0 ));
  FDRE \icmp_ln199_reg_1519_pp0_iter4_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\icmp_ln199_reg_1519_pp0_iter3_reg_reg[0]_srl2_n_0 ),
        .Q(icmp_ln199_reg_1519_pp0_iter4_reg),
        .R(1'b0));
  FDRE \icmp_ln199_reg_1519_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(icmp_ln199_fu_480_p2),
        .Q(\icmp_ln199_reg_1519_reg[0]_0 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten_fu_168[0]_i_2 
       (.I0(indvar_flatten_fu_168_reg[0]),
        .O(\indvar_flatten_fu_168[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[0] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[0]_i_1_n_7 ),
        .Q(indvar_flatten_fu_168_reg[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_168_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\indvar_flatten_fu_168_reg[0]_i_1_n_0 ,\indvar_flatten_fu_168_reg[0]_i_1_n_1 ,\indvar_flatten_fu_168_reg[0]_i_1_n_2 ,\indvar_flatten_fu_168_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\indvar_flatten_fu_168_reg[0]_i_1_n_4 ,\indvar_flatten_fu_168_reg[0]_i_1_n_5 ,\indvar_flatten_fu_168_reg[0]_i_1_n_6 ,\indvar_flatten_fu_168_reg[0]_i_1_n_7 }),
        .S({indvar_flatten_fu_168_reg[3:1],\indvar_flatten_fu_168[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[10] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[8]_i_1_n_5 ),
        .Q(indvar_flatten_fu_168_reg[10]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[11] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[8]_i_1_n_4 ),
        .Q(indvar_flatten_fu_168_reg[11]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[12] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[12]_i_1_n_7 ),
        .Q(indvar_flatten_fu_168_reg[12]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_168_reg[12]_i_1 
       (.CI(\indvar_flatten_fu_168_reg[8]_i_1_n_0 ),
        .CO({\indvar_flatten_fu_168_reg[12]_i_1_n_0 ,\indvar_flatten_fu_168_reg[12]_i_1_n_1 ,\indvar_flatten_fu_168_reg[12]_i_1_n_2 ,\indvar_flatten_fu_168_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_168_reg[12]_i_1_n_4 ,\indvar_flatten_fu_168_reg[12]_i_1_n_5 ,\indvar_flatten_fu_168_reg[12]_i_1_n_6 ,\indvar_flatten_fu_168_reg[12]_i_1_n_7 }),
        .S(indvar_flatten_fu_168_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[13] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[12]_i_1_n_6 ),
        .Q(indvar_flatten_fu_168_reg[13]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[14] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[12]_i_1_n_5 ),
        .Q(indvar_flatten_fu_168_reg[14]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[15] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[12]_i_1_n_4 ),
        .Q(indvar_flatten_fu_168_reg[15]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[16] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[16]_i_1_n_7 ),
        .Q(indvar_flatten_fu_168_reg[16]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_168_reg[16]_i_1 
       (.CI(\indvar_flatten_fu_168_reg[12]_i_1_n_0 ),
        .CO({\indvar_flatten_fu_168_reg[16]_i_1_n_0 ,\indvar_flatten_fu_168_reg[16]_i_1_n_1 ,\indvar_flatten_fu_168_reg[16]_i_1_n_2 ,\indvar_flatten_fu_168_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_168_reg[16]_i_1_n_4 ,\indvar_flatten_fu_168_reg[16]_i_1_n_5 ,\indvar_flatten_fu_168_reg[16]_i_1_n_6 ,\indvar_flatten_fu_168_reg[16]_i_1_n_7 }),
        .S(indvar_flatten_fu_168_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[17] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[16]_i_1_n_6 ),
        .Q(indvar_flatten_fu_168_reg[17]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[18] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[16]_i_1_n_5 ),
        .Q(indvar_flatten_fu_168_reg[18]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[19] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[16]_i_1_n_4 ),
        .Q(indvar_flatten_fu_168_reg[19]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[1] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[0]_i_1_n_6 ),
        .Q(indvar_flatten_fu_168_reg[1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[20] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[20]_i_1_n_7 ),
        .Q(indvar_flatten_fu_168_reg[20]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_168_reg[20]_i_1 
       (.CI(\indvar_flatten_fu_168_reg[16]_i_1_n_0 ),
        .CO({\indvar_flatten_fu_168_reg[20]_i_1_n_0 ,\indvar_flatten_fu_168_reg[20]_i_1_n_1 ,\indvar_flatten_fu_168_reg[20]_i_1_n_2 ,\indvar_flatten_fu_168_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_168_reg[20]_i_1_n_4 ,\indvar_flatten_fu_168_reg[20]_i_1_n_5 ,\indvar_flatten_fu_168_reg[20]_i_1_n_6 ,\indvar_flatten_fu_168_reg[20]_i_1_n_7 }),
        .S(indvar_flatten_fu_168_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[21] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[20]_i_1_n_6 ),
        .Q(indvar_flatten_fu_168_reg[21]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[22] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[20]_i_1_n_5 ),
        .Q(indvar_flatten_fu_168_reg[22]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[23] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[20]_i_1_n_4 ),
        .Q(indvar_flatten_fu_168_reg[23]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[24] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[24]_i_1_n_7 ),
        .Q(indvar_flatten_fu_168_reg[24]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_168_reg[24]_i_1 
       (.CI(\indvar_flatten_fu_168_reg[20]_i_1_n_0 ),
        .CO({\indvar_flatten_fu_168_reg[24]_i_1_n_0 ,\indvar_flatten_fu_168_reg[24]_i_1_n_1 ,\indvar_flatten_fu_168_reg[24]_i_1_n_2 ,\indvar_flatten_fu_168_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_168_reg[24]_i_1_n_4 ,\indvar_flatten_fu_168_reg[24]_i_1_n_5 ,\indvar_flatten_fu_168_reg[24]_i_1_n_6 ,\indvar_flatten_fu_168_reg[24]_i_1_n_7 }),
        .S(indvar_flatten_fu_168_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[25] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[24]_i_1_n_6 ),
        .Q(indvar_flatten_fu_168_reg[25]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[26] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[24]_i_1_n_5 ),
        .Q(indvar_flatten_fu_168_reg[26]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[27] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[24]_i_1_n_4 ),
        .Q(indvar_flatten_fu_168_reg[27]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[28] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[28]_i_1_n_7 ),
        .Q(indvar_flatten_fu_168_reg[28]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_168_reg[28]_i_1 
       (.CI(\indvar_flatten_fu_168_reg[24]_i_1_n_0 ),
        .CO({\NLW_indvar_flatten_fu_168_reg[28]_i_1_CO_UNCONNECTED [3],\indvar_flatten_fu_168_reg[28]_i_1_n_1 ,\indvar_flatten_fu_168_reg[28]_i_1_n_2 ,\indvar_flatten_fu_168_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_168_reg[28]_i_1_n_4 ,\indvar_flatten_fu_168_reg[28]_i_1_n_5 ,\indvar_flatten_fu_168_reg[28]_i_1_n_6 ,\indvar_flatten_fu_168_reg[28]_i_1_n_7 }),
        .S(indvar_flatten_fu_168_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[29] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[28]_i_1_n_6 ),
        .Q(indvar_flatten_fu_168_reg[29]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[2] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[0]_i_1_n_5 ),
        .Q(indvar_flatten_fu_168_reg[2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[30] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[28]_i_1_n_5 ),
        .Q(indvar_flatten_fu_168_reg[30]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[31] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[28]_i_1_n_4 ),
        .Q(indvar_flatten_fu_168_reg[31]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[3] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[0]_i_1_n_4 ),
        .Q(indvar_flatten_fu_168_reg[3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[4] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[4]_i_1_n_7 ),
        .Q(indvar_flatten_fu_168_reg[4]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_168_reg[4]_i_1 
       (.CI(\indvar_flatten_fu_168_reg[0]_i_1_n_0 ),
        .CO({\indvar_flatten_fu_168_reg[4]_i_1_n_0 ,\indvar_flatten_fu_168_reg[4]_i_1_n_1 ,\indvar_flatten_fu_168_reg[4]_i_1_n_2 ,\indvar_flatten_fu_168_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_168_reg[4]_i_1_n_4 ,\indvar_flatten_fu_168_reg[4]_i_1_n_5 ,\indvar_flatten_fu_168_reg[4]_i_1_n_6 ,\indvar_flatten_fu_168_reg[4]_i_1_n_7 }),
        .S(indvar_flatten_fu_168_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[5] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[4]_i_1_n_6 ),
        .Q(indvar_flatten_fu_168_reg[5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[6] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[4]_i_1_n_5 ),
        .Q(indvar_flatten_fu_168_reg[6]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[7] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[4]_i_1_n_4 ),
        .Q(indvar_flatten_fu_168_reg[7]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[8] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[8]_i_1_n_7 ),
        .Q(indvar_flatten_fu_168_reg[8]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \indvar_flatten_fu_168_reg[8]_i_1 
       (.CI(\indvar_flatten_fu_168_reg[4]_i_1_n_0 ),
        .CO({\indvar_flatten_fu_168_reg[8]_i_1_n_0 ,\indvar_flatten_fu_168_reg[8]_i_1_n_1 ,\indvar_flatten_fu_168_reg[8]_i_1_n_2 ,\indvar_flatten_fu_168_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_168_reg[8]_i_1_n_4 ,\indvar_flatten_fu_168_reg[8]_i_1_n_5 ,\indvar_flatten_fu_168_reg[8]_i_1_n_6 ,\indvar_flatten_fu_168_reg[8]_i_1_n_7 }),
        .S(indvar_flatten_fu_168_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_168_reg[9] 
       (.C(ap_clk),
        .CE(col_index_1_fu_164),
        .D(\indvar_flatten_fu_168_reg[8]_i_1_n_6 ),
        .Q(indvar_flatten_fu_168_reg[9]),
        .R(flow_control_loop_pipe_sequential_init_U_n_6));
  LUT6 #(
    .INIT(64'h80007FFF7FFF8000)) 
    \mOutPtr[0]_i_1__1 
       (.I0(ram_reg_i_27_n_0),
        .I1(in_mat_data_empty_n),
        .I2(ap_enable_reg_pp0_iter2_reg_n_0),
        .I3(p_8_in),
        .I4(push),
        .I5(\mOutPtr_reg[0] ),
        .O(empty_n_reg));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \mOutPtr[2]_i_2__2 
       (.I0(\icmp_ln199_reg_1519_reg[0]_0 ),
        .I1(icmp_ln185_reg_1508),
        .I2(ap_enable_reg_pp0_iter2_reg_n_0),
        .I3(in_mat_data_empty_n),
        .I4(ap_block_pp0_stage0_11001__0),
        .I5(Q[3]),
        .O(pop__0));
  LUT2 #(
    .INIT(4'h2)) 
    \p_0_0_042929_fu_136[3]_i_1 
       (.I0(ap_enable_reg_pp0_iter4),
        .I1(ap_block_pp0_stage0_11001__0),
        .O(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_ce1));
  FDRE #(
    .INIT(1'b0)) 
    \p_0_0_042929_fu_136_reg[0] 
       (.C(ap_clk),
        .CE(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_ce1),
        .D(sext_ln234_fu_1018_p1[0]),
        .Q(p_0_0_042929_fu_136[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_0_0_042929_fu_136_reg[1] 
       (.C(ap_clk),
        .CE(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_ce1),
        .D(sext_ln234_fu_1018_p1[1]),
        .Q(p_0_0_042929_fu_136[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_0_0_042929_fu_136_reg[3] 
       (.C(ap_clk),
        .CE(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_ce1),
        .D(sext_ln234_fu_1018_p1[2]),
        .Q(p_0_0_042929_fu_136[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_0_0_0429_134_fu_148_reg[0] 
       (.C(ap_clk),
        .CE(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_ce1),
        .D(sext_ln234_1_fu_1168_p1[0]),
        .Q(p_0_0_0429_134_fu_148[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_0_0_0429_134_fu_148_reg[1] 
       (.C(ap_clk),
        .CE(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_ce1),
        .D(sext_ln234_1_fu_1168_p1[1]),
        .Q(p_0_0_0429_134_fu_148[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_0_0_0429_134_fu_148_reg[3] 
       (.C(ap_clk),
        .CE(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_ce1),
        .D(sext_ln234_1_fu_1168_p1[2]),
        .Q(p_0_0_0429_134_fu_148[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_0_0_0429_239_fu_160_reg[0] 
       (.C(ap_clk),
        .CE(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_ce1),
        .D(sext_ln234_2_fu_1318_p1[0]),
        .Q(p_0_0_0429_239_fu_160[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_0_0_0429_239_fu_160_reg[1] 
       (.C(ap_clk),
        .CE(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_ce1),
        .D(sext_ln234_2_fu_1318_p1[1]),
        .Q(p_0_0_0429_239_fu_160[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_0_0_0429_239_fu_160_reg[3] 
       (.C(ap_clk),
        .CE(grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97_offset_buffer_5_ce1),
        .D(sext_ln234_2_fu_1318_p1[2]),
        .Q(p_0_0_0429_239_fu_160[3]),
        .R(1'b0));
  FDRE \p_load74_reg_1659_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(sext_ln217_8_fu_807_p1[3]),
        .Q(sext_ln233_14_fu_1254_p1[2]),
        .R(1'b0));
  FDRE \p_load74_reg_1659_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(sext_ln217_8_fu_807_p1[5]),
        .Q(sext_ln233_14_fu_1254_p1[3]),
        .R(1'b0));
  FDRE \p_load77_reg_1633_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(empty_39_fu_144[0]),
        .Q(p_load77_reg_1633[0]),
        .R(1'b0));
  FDRE \p_load77_reg_1633_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(empty_39_fu_144[2]),
        .Q(p_load77_reg_1633[2]),
        .R(1'b0));
  FDRE \p_load78_reg_1627_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(sext_ln217_5_fu_689_p1[3]),
        .Q(sext_ln233_6_fu_1104_p1[2]),
        .R(1'b0));
  FDRE \p_load78_reg_1627_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(sext_ln217_5_fu_689_p1[5]),
        .Q(sext_ln233_6_fu_1104_p1[3]),
        .R(1'b0));
  FDRE \p_load81_reg_1601_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(empty_37_fu_132[0]),
        .Q(p_load81_reg_1601[0]),
        .R(1'b0));
  FDRE \p_load81_reg_1601_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(empty_37_fu_132[2]),
        .Q(p_load81_reg_1601[2]),
        .R(1'b0));
  FDRE \p_load82_reg_1595_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(sext_ln217_2_fu_571_p1[3]),
        .Q(sext_ln233_fu_954_p1[2]),
        .R(1'b0));
  FDRE \p_load82_reg_1595_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(sext_ln217_2_fu_571_p1[5]),
        .Q(sext_ln233_fu_954_p1[3]),
        .R(1'b0));
  FDRE \p_load_reg_1665_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(empty_41_fu_156[0]),
        .Q(p_load_reg_1665[0]),
        .R(1'b0));
  FDRE \p_load_reg_1665_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(empty_41_fu_156[2]),
        .Q(p_load_reg_1665[2]),
        .R(1'b0));
  CARRY4 quatizer_in_1_fu_726_p2__1_carry
       (.CI(1'b0),
        .CO({quatizer_in_1_fu_726_p2__1_carry_n_0,quatizer_in_1_fu_726_p2__1_carry_n_1,quatizer_in_1_fu_726_p2__1_carry_n_2,quatizer_in_1_fu_726_p2__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({quatizer_in_1_fu_726_p2__1_carry_i_1_n_0,quatizer_in_1_fu_726_p2__1_carry_i_2_n_0,quatizer_in_1_fu_726_p2__1_carry_i_3_n_0,1'b0}),
        .O({quatizer_in_1_fu_726_p2__1_carry_n_4,quatizer_in_1_fu_726_p2__1_carry_n_5,tmp_11_fu_742_p3,quatizer_in_1_fu_726_p2__1_carry_n_7}),
        .S({quatizer_in_1_fu_726_p2__1_carry_i_4_n_0,quatizer_in_1_fu_726_p2__1_carry_i_5_n_0,quatizer_in_1_fu_726_p2__1_carry_i_6_n_0,quatizer_in_1_fu_726_p2__1_carry_i_7_n_0}));
  CARRY4 quatizer_in_1_fu_726_p2__1_carry__0
       (.CI(quatizer_in_1_fu_726_p2__1_carry_n_0),
        .CO({quatizer_in_1_fu_726_p2__1_carry__0_n_0,quatizer_in_1_fu_726_p2__1_carry__0_n_1,quatizer_in_1_fu_726_p2__1_carry__0_n_2,quatizer_in_1_fu_726_p2__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({quatizer_in_1_fu_726_p2__1_carry__0_i_1_n_0,quatizer_in_1_fu_726_p2__1_carry__0_i_2_n_0,quatizer_in_1_fu_726_p2__1_carry__0_i_3_n_0,quatizer_in_1_fu_726_p2__1_carry__0_i_4_n_0}),
        .O({quatizer_in_1_fu_726_p2__1_carry__0_n_4,quatizer_in_1_fu_726_p2__1_carry__0_n_5,quatizer_in_1_fu_726_p2__1_carry__0_n_6,quatizer_in_1_fu_726_p2__1_carry__0_n_7}),
        .S({quatizer_in_1_fu_726_p2__1_carry__0_i_5_n_0,quatizer_in_1_fu_726_p2__1_carry__0_i_6_n_0,quatizer_in_1_fu_726_p2__1_carry__0_i_7_n_0,quatizer_in_1_fu_726_p2__1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    quatizer_in_1_fu_726_p2__1_carry__0_i_1
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[15]),
        .I1(select_ln221_1_reg_1585[5]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[16]),
        .I3(select_ln221_1_reg_1585[6]),
        .O(quatizer_in_1_fu_726_p2__1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    quatizer_in_1_fu_726_p2__1_carry__0_i_2
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[14]),
        .I1(select_ln221_1_reg_1585[4]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[15]),
        .I3(select_ln221_1_reg_1585[5]),
        .O(quatizer_in_1_fu_726_p2__1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    quatizer_in_1_fu_726_p2__1_carry__0_i_3
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[13]),
        .I1(select_ln221_1_reg_1585[3]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[14]),
        .I3(select_ln221_1_reg_1585[4]),
        .O(quatizer_in_1_fu_726_p2__1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hD00D)) 
    quatizer_in_1_fu_726_p2__1_carry__0_i_4
       (.I0(sext_ln217_5_fu_689_p1[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[12]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[13]),
        .I3(select_ln221_1_reg_1585[3]),
        .O(quatizer_in_1_fu_726_p2__1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    quatizer_in_1_fu_726_p2__1_carry__0_i_5
       (.I0(select_ln221_1_reg_1585[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[15]),
        .I2(select_ln221_1_reg_1585[7]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[17]),
        .I4(select_ln221_1_reg_1585[6]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[16]),
        .O(quatizer_in_1_fu_726_p2__1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    quatizer_in_1_fu_726_p2__1_carry__0_i_6
       (.I0(select_ln221_1_reg_1585[4]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[14]),
        .I2(select_ln221_1_reg_1585[6]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[16]),
        .I4(select_ln221_1_reg_1585[5]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[15]),
        .O(quatizer_in_1_fu_726_p2__1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    quatizer_in_1_fu_726_p2__1_carry__0_i_7
       (.I0(select_ln221_1_reg_1585[3]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[13]),
        .I2(select_ln221_1_reg_1585[5]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[15]),
        .I4(select_ln221_1_reg_1585[4]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[14]),
        .O(quatizer_in_1_fu_726_p2__1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hD0022FFD2FFDD002)) 
    quatizer_in_1_fu_726_p2__1_carry__0_i_8
       (.I0(sext_ln217_5_fu_689_p1[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[12]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[13]),
        .I3(select_ln221_1_reg_1585[3]),
        .I4(select_ln221_1_reg_1585[4]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[14]),
        .O(quatizer_in_1_fu_726_p2__1_carry__0_i_8_n_0));
  CARRY4 quatizer_in_1_fu_726_p2__1_carry__1
       (.CI(quatizer_in_1_fu_726_p2__1_carry__0_n_0),
        .CO({NLW_quatizer_in_1_fu_726_p2__1_carry__1_CO_UNCONNECTED[3],quatizer_in_1_fu_726_p2__1_carry__1_n_1,quatizer_in_1_fu_726_p2__1_carry__1_n_2,quatizer_in_1_fu_726_p2__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,ap_phi_reg_pp0_iter3_read_word_1_reg_359[19],quatizer_in_1_fu_726_p2__1_carry__1_i_1_n_0,quatizer_in_1_fu_726_p2__1_carry__1_i_2_n_0}),
        .O({quatizer_in_1_fu_726_p2__1_carry__1_n_4,quatizer_in_1_fu_726_p2__1_carry__1_n_5,quatizer_in_1_fu_726_p2__1_carry__1_n_6,quatizer_in_1_fu_726_p2__1_carry__1_n_7}),
        .S({1'b1,quatizer_in_1_fu_726_p2__1_carry__1_i_3_n_0,quatizer_in_1_fu_726_p2__1_carry__1_i_4_n_0,quatizer_in_1_fu_726_p2__1_carry__1_i_5_n_0}));
  LUT4 #(
    .INIT(16'hDDD4)) 
    quatizer_in_1_fu_726_p2__1_carry__1_i_1
       (.I0(select_ln221_1_reg_1585[8]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[18]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[17]),
        .I3(select_ln221_1_reg_1585[7]),
        .O(quatizer_in_1_fu_726_p2__1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    quatizer_in_1_fu_726_p2__1_carry__1_i_2
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[16]),
        .I1(select_ln221_1_reg_1585[6]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[17]),
        .I3(select_ln221_1_reg_1585[7]),
        .O(quatizer_in_1_fu_726_p2__1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    quatizer_in_1_fu_726_p2__1_carry__1_i_3
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[19]),
        .O(quatizer_in_1_fu_726_p2__1_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'hE0FE1F01)) 
    quatizer_in_1_fu_726_p2__1_carry__1_i_4
       (.I0(select_ln221_1_reg_1585[7]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[17]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[18]),
        .I3(select_ln221_1_reg_1585[8]),
        .I4(ap_phi_reg_pp0_iter3_read_word_1_reg_359[19]),
        .O(quatizer_in_1_fu_726_p2__1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    quatizer_in_1_fu_726_p2__1_carry__1_i_5
       (.I0(select_ln221_1_reg_1585[6]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[16]),
        .I2(select_ln221_1_reg_1585[8]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[18]),
        .I4(select_ln221_1_reg_1585[7]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[17]),
        .O(quatizer_in_1_fu_726_p2__1_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h28)) 
    quatizer_in_1_fu_726_p2__1_carry_i_1
       (.I0(select_ln221_1_reg_1585[2]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[12]),
        .I2(sext_ln217_5_fu_689_p1[5]),
        .O(quatizer_in_1_fu_726_p2__1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    quatizer_in_1_fu_726_p2__1_carry_i_2
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[12]),
        .I1(sext_ln217_5_fu_689_p1[5]),
        .I2(select_ln221_1_reg_1585[2]),
        .O(quatizer_in_1_fu_726_p2__1_carry_i_2_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    quatizer_in_1_fu_726_p2__1_carry_i_3
       (.I0(sext_ln217_5_fu_689_p1[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[10]),
        .I2(select_ln221_1_reg_1585[0]),
        .O(quatizer_in_1_fu_726_p2__1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h3C69963C)) 
    quatizer_in_1_fu_726_p2__1_carry_i_4
       (.I0(select_ln221_1_reg_1585[2]),
        .I1(select_ln221_1_reg_1585[3]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[13]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[12]),
        .I4(sext_ln217_5_fu_689_p1[5]),
        .O(quatizer_in_1_fu_726_p2__1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h66699666)) 
    quatizer_in_1_fu_726_p2__1_carry_i_5
       (.I0(select_ln221_1_reg_1585[2]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[12]),
        .I2(select_ln221_1_reg_1585[1]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[11]),
        .I4(sext_ln217_5_fu_689_p1[5]),
        .O(quatizer_in_1_fu_726_p2__1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    quatizer_in_1_fu_726_p2__1_carry_i_6
       (.I0(quatizer_in_1_fu_726_p2__1_carry_i_3_n_0),
        .I1(sext_ln217_5_fu_689_p1[5]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[11]),
        .I3(select_ln221_1_reg_1585[1]),
        .O(quatizer_in_1_fu_726_p2__1_carry_i_6_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    quatizer_in_1_fu_726_p2__1_carry_i_7
       (.I0(sext_ln217_5_fu_689_p1[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[10]),
        .I2(select_ln221_1_reg_1585[0]),
        .O(quatizer_in_1_fu_726_p2__1_carry_i_7_n_0));
  CARRY4 quatizer_in_2_fu_844_p2__1_carry
       (.CI(1'b0),
        .CO({quatizer_in_2_fu_844_p2__1_carry_n_0,quatizer_in_2_fu_844_p2__1_carry_n_1,quatizer_in_2_fu_844_p2__1_carry_n_2,quatizer_in_2_fu_844_p2__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({quatizer_in_2_fu_844_p2__1_carry_i_1_n_0,quatizer_in_2_fu_844_p2__1_carry_i_2_n_0,quatizer_in_2_fu_844_p2__1_carry_i_3_n_0,1'b0}),
        .O({quatizer_in_2_fu_844_p2__1_carry_n_4,quatizer_in_2_fu_844_p2__1_carry_n_5,tmp_17_fu_860_p3,quatizer_in_2_fu_844_p2__1_carry_n_7}),
        .S({quatizer_in_2_fu_844_p2__1_carry_i_4_n_0,quatizer_in_2_fu_844_p2__1_carry_i_5_n_0,quatizer_in_2_fu_844_p2__1_carry_i_6_n_0,quatizer_in_2_fu_844_p2__1_carry_i_7_n_0}));
  CARRY4 quatizer_in_2_fu_844_p2__1_carry__0
       (.CI(quatizer_in_2_fu_844_p2__1_carry_n_0),
        .CO({quatizer_in_2_fu_844_p2__1_carry__0_n_0,quatizer_in_2_fu_844_p2__1_carry__0_n_1,quatizer_in_2_fu_844_p2__1_carry__0_n_2,quatizer_in_2_fu_844_p2__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({quatizer_in_2_fu_844_p2__1_carry__0_i_1_n_0,quatizer_in_2_fu_844_p2__1_carry__0_i_2_n_0,quatizer_in_2_fu_844_p2__1_carry__0_i_3_n_0,quatizer_in_2_fu_844_p2__1_carry__0_i_4_n_0}),
        .O({quatizer_in_2_fu_844_p2__1_carry__0_n_4,quatizer_in_2_fu_844_p2__1_carry__0_n_5,quatizer_in_2_fu_844_p2__1_carry__0_n_6,quatizer_in_2_fu_844_p2__1_carry__0_n_7}),
        .S({quatizer_in_2_fu_844_p2__1_carry__0_i_5_n_0,quatizer_in_2_fu_844_p2__1_carry__0_i_6_n_0,quatizer_in_2_fu_844_p2__1_carry__0_i_7_n_0,quatizer_in_2_fu_844_p2__1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    quatizer_in_2_fu_844_p2__1_carry__0_i_1
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[25]),
        .I1(select_ln221_2_reg_1590[5]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[26]),
        .I3(select_ln221_2_reg_1590[6]),
        .O(quatizer_in_2_fu_844_p2__1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    quatizer_in_2_fu_844_p2__1_carry__0_i_2
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[24]),
        .I1(select_ln221_2_reg_1590[4]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[25]),
        .I3(select_ln221_2_reg_1590[5]),
        .O(quatizer_in_2_fu_844_p2__1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    quatizer_in_2_fu_844_p2__1_carry__0_i_3
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[23]),
        .I1(select_ln221_2_reg_1590[3]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[24]),
        .I3(select_ln221_2_reg_1590[4]),
        .O(quatizer_in_2_fu_844_p2__1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hD00D)) 
    quatizer_in_2_fu_844_p2__1_carry__0_i_4
       (.I0(sext_ln217_8_fu_807_p1[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[22]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[23]),
        .I3(select_ln221_2_reg_1590[3]),
        .O(quatizer_in_2_fu_844_p2__1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    quatizer_in_2_fu_844_p2__1_carry__0_i_5
       (.I0(select_ln221_2_reg_1590[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[25]),
        .I2(select_ln221_2_reg_1590[7]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[27]),
        .I4(select_ln221_2_reg_1590[6]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[26]),
        .O(quatizer_in_2_fu_844_p2__1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    quatizer_in_2_fu_844_p2__1_carry__0_i_6
       (.I0(select_ln221_2_reg_1590[4]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[24]),
        .I2(select_ln221_2_reg_1590[6]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[26]),
        .I4(select_ln221_2_reg_1590[5]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[25]),
        .O(quatizer_in_2_fu_844_p2__1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    quatizer_in_2_fu_844_p2__1_carry__0_i_7
       (.I0(select_ln221_2_reg_1590[3]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[23]),
        .I2(select_ln221_2_reg_1590[5]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[25]),
        .I4(select_ln221_2_reg_1590[4]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[24]),
        .O(quatizer_in_2_fu_844_p2__1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hD0022FFD2FFDD002)) 
    quatizer_in_2_fu_844_p2__1_carry__0_i_8
       (.I0(sext_ln217_8_fu_807_p1[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[22]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[23]),
        .I3(select_ln221_2_reg_1590[3]),
        .I4(select_ln221_2_reg_1590[4]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[24]),
        .O(quatizer_in_2_fu_844_p2__1_carry__0_i_8_n_0));
  CARRY4 quatizer_in_2_fu_844_p2__1_carry__1
       (.CI(quatizer_in_2_fu_844_p2__1_carry__0_n_0),
        .CO({NLW_quatizer_in_2_fu_844_p2__1_carry__1_CO_UNCONNECTED[3],quatizer_in_2_fu_844_p2__1_carry__1_n_1,quatizer_in_2_fu_844_p2__1_carry__1_n_2,quatizer_in_2_fu_844_p2__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,ap_phi_reg_pp0_iter3_read_word_1_reg_359[29],quatizer_in_2_fu_844_p2__1_carry__1_i_1_n_0,quatizer_in_2_fu_844_p2__1_carry__1_i_2_n_0}),
        .O({quatizer_in_2_fu_844_p2__1_carry__1_n_4,quatizer_in_2_fu_844_p2__1_carry__1_n_5,quatizer_in_2_fu_844_p2__1_carry__1_n_6,quatizer_in_2_fu_844_p2__1_carry__1_n_7}),
        .S({1'b1,quatizer_in_2_fu_844_p2__1_carry__1_i_3_n_0,quatizer_in_2_fu_844_p2__1_carry__1_i_4_n_0,quatizer_in_2_fu_844_p2__1_carry__1_i_5_n_0}));
  LUT4 #(
    .INIT(16'hDDD4)) 
    quatizer_in_2_fu_844_p2__1_carry__1_i_1
       (.I0(select_ln221_2_reg_1590[8]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[28]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[27]),
        .I3(select_ln221_2_reg_1590[7]),
        .O(quatizer_in_2_fu_844_p2__1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    quatizer_in_2_fu_844_p2__1_carry__1_i_2
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[26]),
        .I1(select_ln221_2_reg_1590[6]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[27]),
        .I3(select_ln221_2_reg_1590[7]),
        .O(quatizer_in_2_fu_844_p2__1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    quatizer_in_2_fu_844_p2__1_carry__1_i_3
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[29]),
        .O(quatizer_in_2_fu_844_p2__1_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'hE0FE1F01)) 
    quatizer_in_2_fu_844_p2__1_carry__1_i_4
       (.I0(select_ln221_2_reg_1590[7]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[27]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[28]),
        .I3(select_ln221_2_reg_1590[8]),
        .I4(ap_phi_reg_pp0_iter3_read_word_1_reg_359[29]),
        .O(quatizer_in_2_fu_844_p2__1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    quatizer_in_2_fu_844_p2__1_carry__1_i_5
       (.I0(select_ln221_2_reg_1590[6]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[26]),
        .I2(select_ln221_2_reg_1590[8]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[28]),
        .I4(select_ln221_2_reg_1590[7]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[27]),
        .O(quatizer_in_2_fu_844_p2__1_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h28)) 
    quatizer_in_2_fu_844_p2__1_carry_i_1
       (.I0(select_ln221_2_reg_1590[2]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[22]),
        .I2(sext_ln217_8_fu_807_p1[5]),
        .O(quatizer_in_2_fu_844_p2__1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    quatizer_in_2_fu_844_p2__1_carry_i_2
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[22]),
        .I1(sext_ln217_8_fu_807_p1[5]),
        .I2(select_ln221_2_reg_1590[2]),
        .O(quatizer_in_2_fu_844_p2__1_carry_i_2_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    quatizer_in_2_fu_844_p2__1_carry_i_3
       (.I0(sext_ln217_8_fu_807_p1[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[20]),
        .I2(select_ln221_2_reg_1590[0]),
        .O(quatizer_in_2_fu_844_p2__1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h3C69963C)) 
    quatizer_in_2_fu_844_p2__1_carry_i_4
       (.I0(select_ln221_2_reg_1590[2]),
        .I1(select_ln221_2_reg_1590[3]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[23]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[22]),
        .I4(sext_ln217_8_fu_807_p1[5]),
        .O(quatizer_in_2_fu_844_p2__1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h66699666)) 
    quatizer_in_2_fu_844_p2__1_carry_i_5
       (.I0(select_ln221_2_reg_1590[2]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[22]),
        .I2(select_ln221_2_reg_1590[1]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[21]),
        .I4(sext_ln217_8_fu_807_p1[5]),
        .O(quatizer_in_2_fu_844_p2__1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    quatizer_in_2_fu_844_p2__1_carry_i_6
       (.I0(quatizer_in_2_fu_844_p2__1_carry_i_3_n_0),
        .I1(sext_ln217_8_fu_807_p1[5]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[21]),
        .I3(select_ln221_2_reg_1590[1]),
        .O(quatizer_in_2_fu_844_p2__1_carry_i_6_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    quatizer_in_2_fu_844_p2__1_carry_i_7
       (.I0(sext_ln217_8_fu_807_p1[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[20]),
        .I2(select_ln221_2_reg_1590[0]),
        .O(quatizer_in_2_fu_844_p2__1_carry_i_7_n_0));
  CARRY4 quatizer_in_fu_608_p2__1_carry
       (.CI(1'b0),
        .CO({quatizer_in_fu_608_p2__1_carry_n_0,quatizer_in_fu_608_p2__1_carry_n_1,quatizer_in_fu_608_p2__1_carry_n_2,quatizer_in_fu_608_p2__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({quatizer_in_fu_608_p2__1_carry_i_1_n_0,quatizer_in_fu_608_p2__1_carry_i_2_n_0,quatizer_in_fu_608_p2__1_carry_i_3_n_0,1'b0}),
        .O({p_1_in[1:0],tmp_5_fu_624_p3,quatizer_in_fu_608_p2__1_carry_n_7}),
        .S({quatizer_in_fu_608_p2__1_carry_i_4_n_0,quatizer_in_fu_608_p2__1_carry_i_5_n_0,quatizer_in_fu_608_p2__1_carry_i_6_n_0,quatizer_in_fu_608_p2__1_carry_i_7_n_0}));
  CARRY4 quatizer_in_fu_608_p2__1_carry__0
       (.CI(quatizer_in_fu_608_p2__1_carry_n_0),
        .CO({quatizer_in_fu_608_p2__1_carry__0_n_0,quatizer_in_fu_608_p2__1_carry__0_n_1,quatizer_in_fu_608_p2__1_carry__0_n_2,quatizer_in_fu_608_p2__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({quatizer_in_fu_608_p2__1_carry__0_i_1_n_0,quatizer_in_fu_608_p2__1_carry__0_i_2_n_0,quatizer_in_fu_608_p2__1_carry__0_i_3_n_0,quatizer_in_fu_608_p2__1_carry__0_i_4_n_0}),
        .O(p_1_in[5:2]),
        .S({quatizer_in_fu_608_p2__1_carry__0_i_5_n_0,quatizer_in_fu_608_p2__1_carry__0_i_6_n_0,quatizer_in_fu_608_p2__1_carry__0_i_7_n_0,quatizer_in_fu_608_p2__1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    quatizer_in_fu_608_p2__1_carry__0_i_1
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[5]),
        .I1(select_ln221_reg_1580[5]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[6]),
        .I3(select_ln221_reg_1580[6]),
        .O(quatizer_in_fu_608_p2__1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    quatizer_in_fu_608_p2__1_carry__0_i_2
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[4]),
        .I1(select_ln221_reg_1580[4]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[5]),
        .I3(select_ln221_reg_1580[5]),
        .O(quatizer_in_fu_608_p2__1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    quatizer_in_fu_608_p2__1_carry__0_i_3
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[3]),
        .I1(select_ln221_reg_1580[3]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[4]),
        .I3(select_ln221_reg_1580[4]),
        .O(quatizer_in_fu_608_p2__1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hD00D)) 
    quatizer_in_fu_608_p2__1_carry__0_i_4
       (.I0(sext_ln217_2_fu_571_p1[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[2]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[3]),
        .I3(select_ln221_reg_1580[3]),
        .O(quatizer_in_fu_608_p2__1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    quatizer_in_fu_608_p2__1_carry__0_i_5
       (.I0(select_ln221_reg_1580[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[5]),
        .I2(select_ln221_reg_1580[7]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[7]),
        .I4(select_ln221_reg_1580[6]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[6]),
        .O(quatizer_in_fu_608_p2__1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    quatizer_in_fu_608_p2__1_carry__0_i_6
       (.I0(select_ln221_reg_1580[4]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[4]),
        .I2(select_ln221_reg_1580[6]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[6]),
        .I4(select_ln221_reg_1580[5]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[5]),
        .O(quatizer_in_fu_608_p2__1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    quatizer_in_fu_608_p2__1_carry__0_i_7
       (.I0(select_ln221_reg_1580[3]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[3]),
        .I2(select_ln221_reg_1580[5]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[5]),
        .I4(select_ln221_reg_1580[4]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[4]),
        .O(quatizer_in_fu_608_p2__1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hD0022FFD2FFDD002)) 
    quatizer_in_fu_608_p2__1_carry__0_i_8
       (.I0(sext_ln217_2_fu_571_p1[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[2]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[3]),
        .I3(select_ln221_reg_1580[3]),
        .I4(select_ln221_reg_1580[4]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[4]),
        .O(quatizer_in_fu_608_p2__1_carry__0_i_8_n_0));
  CARRY4 quatizer_in_fu_608_p2__1_carry__1
       (.CI(quatizer_in_fu_608_p2__1_carry__0_n_0),
        .CO({NLW_quatizer_in_fu_608_p2__1_carry__1_CO_UNCONNECTED[3],quatizer_in_fu_608_p2__1_carry__1_n_1,quatizer_in_fu_608_p2__1_carry__1_n_2,quatizer_in_fu_608_p2__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,ap_phi_reg_pp0_iter3_read_word_1_reg_359[9],quatizer_in_fu_608_p2__1_carry__1_i_1_n_0,quatizer_in_fu_608_p2__1_carry__1_i_2_n_0}),
        .O(p_1_in[9:6]),
        .S({1'b1,quatizer_in_fu_608_p2__1_carry__1_i_3_n_0,quatizer_in_fu_608_p2__1_carry__1_i_4_n_0,quatizer_in_fu_608_p2__1_carry__1_i_5_n_0}));
  LUT4 #(
    .INIT(16'hDDD4)) 
    quatizer_in_fu_608_p2__1_carry__1_i_1
       (.I0(select_ln221_reg_1580[8]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[8]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[7]),
        .I3(select_ln221_reg_1580[7]),
        .O(quatizer_in_fu_608_p2__1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    quatizer_in_fu_608_p2__1_carry__1_i_2
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[6]),
        .I1(select_ln221_reg_1580[6]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[7]),
        .I3(select_ln221_reg_1580[7]),
        .O(quatizer_in_fu_608_p2__1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    quatizer_in_fu_608_p2__1_carry__1_i_3
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[9]),
        .O(quatizer_in_fu_608_p2__1_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'hE0FE1F01)) 
    quatizer_in_fu_608_p2__1_carry__1_i_4
       (.I0(select_ln221_reg_1580[7]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[7]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[8]),
        .I3(select_ln221_reg_1580[8]),
        .I4(ap_phi_reg_pp0_iter3_read_word_1_reg_359[9]),
        .O(quatizer_in_fu_608_p2__1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    quatizer_in_fu_608_p2__1_carry__1_i_5
       (.I0(select_ln221_reg_1580[6]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[6]),
        .I2(select_ln221_reg_1580[8]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[8]),
        .I4(select_ln221_reg_1580[7]),
        .I5(ap_phi_reg_pp0_iter3_read_word_1_reg_359[7]),
        .O(quatizer_in_fu_608_p2__1_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h28)) 
    quatizer_in_fu_608_p2__1_carry_i_1
       (.I0(select_ln221_reg_1580[2]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[2]),
        .I2(sext_ln217_2_fu_571_p1[5]),
        .O(quatizer_in_fu_608_p2__1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    quatizer_in_fu_608_p2__1_carry_i_2
       (.I0(ap_phi_reg_pp0_iter3_read_word_1_reg_359[2]),
        .I1(sext_ln217_2_fu_571_p1[5]),
        .I2(select_ln221_reg_1580[2]),
        .O(quatizer_in_fu_608_p2__1_carry_i_2_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    quatizer_in_fu_608_p2__1_carry_i_3
       (.I0(sext_ln217_2_fu_571_p1[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[0]),
        .I2(select_ln221_reg_1580[0]),
        .O(quatizer_in_fu_608_p2__1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h3C69963C)) 
    quatizer_in_fu_608_p2__1_carry_i_4
       (.I0(select_ln221_reg_1580[2]),
        .I1(select_ln221_reg_1580[3]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[3]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[2]),
        .I4(sext_ln217_2_fu_571_p1[5]),
        .O(quatizer_in_fu_608_p2__1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h66699666)) 
    quatizer_in_fu_608_p2__1_carry_i_5
       (.I0(select_ln221_reg_1580[2]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[2]),
        .I2(select_ln221_reg_1580[1]),
        .I3(ap_phi_reg_pp0_iter3_read_word_1_reg_359[1]),
        .I4(sext_ln217_2_fu_571_p1[5]),
        .O(quatizer_in_fu_608_p2__1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    quatizer_in_fu_608_p2__1_carry_i_6
       (.I0(quatizer_in_fu_608_p2__1_carry_i_3_n_0),
        .I1(sext_ln217_2_fu_571_p1[5]),
        .I2(ap_phi_reg_pp0_iter3_read_word_1_reg_359[1]),
        .I3(select_ln221_reg_1580[1]),
        .O(quatizer_in_fu_608_p2__1_carry_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    quatizer_in_fu_608_p2__1_carry_i_7
       (.I0(sext_ln217_2_fu_571_p1[5]),
        .I1(ap_phi_reg_pp0_iter3_read_word_1_reg_359[0]),
        .I2(select_ln221_reg_1580[0]),
        .O(quatizer_in_fu_608_p2__1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h0080FFFF00800080)) 
    ram_reg_i_1
       (.I0(ram_reg_i_27_n_0),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(cmp129_reg_1523_pp0_iter3_reg),
        .I3(trunc_ln190_reg_1512_pp0_iter3_reg),
        .I4(D),
        .I5(ram_reg),
        .O(offset_buffer_5_we1));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_13
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[10] ),
        .O(ADDRBWRADDR[9]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_14
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[9] ),
        .O(ADDRBWRADDR[8]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_15
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[8] ),
        .O(ADDRBWRADDR[7]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_16
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[7] ),
        .O(ADDRBWRADDR[6]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_17
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[6] ),
        .O(ADDRBWRADDR[5]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_18
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[5] ),
        .O(ADDRBWRADDR[4]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_19
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[4] ),
        .O(ADDRBWRADDR[3]));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    ram_reg_i_1__0
       (.I0(ram_reg_i_27_n_0),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(cmp129_reg_1523_pp0_iter3_reg),
        .I3(trunc_ln190_reg_1512_pp0_iter3_reg),
        .I4(D),
        .I5(ram_reg),
        .O(offset_buffer_4_we1));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_1__1
       (.I0(Q[3]),
        .I1(p_0_0_0429_134_fu_148[3]),
        .O(\ap_CS_fsm_reg[4]_0 [2]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_1__2
       (.I0(Q[3]),
        .I1(p_0_0_0429_239_fu_160[3]),
        .O(\ap_CS_fsm_reg[4]_1 [2]));
  LUT3 #(
    .INIT(8'h40)) 
    ram_reg_i_2
       (.I0(ap_block_pp0_stage0_11001__0),
        .I1(Q[3]),
        .I2(ap_enable_reg_pp0_iter1),
        .O(offset_buffer_4_ce0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_20
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[3] ),
        .O(ADDRBWRADDR[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_21
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[2] ),
        .O(ADDRBWRADDR[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_22
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[1] ),
        .O(ADDRBWRADDR[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_23
       (.I0(Q[3]),
        .I1(p_0_0_042929_fu_136[3]),
        .O(DIADI[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_24
       (.I0(Q[3]),
        .I1(p_0_0_042929_fu_136[1]),
        .O(DIADI[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_25
       (.I0(Q[3]),
        .I1(p_0_0_042929_fu_136[0]),
        .O(DIADI[0]));
  LUT5 #(
    .INIT(32'h0088F088)) 
    ram_reg_i_26
       (.I0(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter4),
        .I3(Q[3]),
        .I4(ap_block_pp0_stage0_11001__0),
        .O(WEA));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_i_27
       (.I0(Q[3]),
        .I1(ap_block_pp0_stage0_11001__0),
        .O(ram_reg_i_27_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_2__0
       (.I0(Q[3]),
        .I1(p_0_0_0429_134_fu_148[1]),
        .O(\ap_CS_fsm_reg[4]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_2__1
       (.I0(Q[3]),
        .I1(p_0_0_0429_239_fu_160[1]),
        .O(\ap_CS_fsm_reg[4]_1 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_3__0
       (.I0(Q[3]),
        .I1(p_0_0_0429_134_fu_148[0]),
        .O(\ap_CS_fsm_reg[4]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_3__1
       (.I0(Q[3]),
        .I1(p_0_0_0429_239_fu_160[0]),
        .O(\ap_CS_fsm_reg[4]_1 [0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_1_reg_1585[0]_i_1 
       (.I0(\select_ln221_1_reg_1585_reg[8]_0 [0]),
        .I1(\select_ln221_1_reg_1585_reg[8]_1 [0]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_1_fu_535_p3[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_1_reg_1585[1]_i_1 
       (.I0(\select_ln221_1_reg_1585_reg[8]_0 [1]),
        .I1(\select_ln221_1_reg_1585_reg[8]_1 [1]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_1_fu_535_p3[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_1_reg_1585[2]_i_1 
       (.I0(\select_ln221_1_reg_1585_reg[8]_0 [2]),
        .I1(\select_ln221_1_reg_1585_reg[8]_1 [2]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_1_fu_535_p3[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_1_reg_1585[3]_i_1 
       (.I0(\select_ln221_1_reg_1585_reg[8]_0 [3]),
        .I1(\select_ln221_1_reg_1585_reg[8]_1 [3]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_1_fu_535_p3[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_1_reg_1585[4]_i_1 
       (.I0(\select_ln221_1_reg_1585_reg[8]_0 [4]),
        .I1(\select_ln221_1_reg_1585_reg[8]_1 [4]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_1_fu_535_p3[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_1_reg_1585[5]_i_1 
       (.I0(\select_ln221_1_reg_1585_reg[8]_0 [5]),
        .I1(\select_ln221_1_reg_1585_reg[8]_1 [5]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_1_fu_535_p3[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_1_reg_1585[6]_i_1 
       (.I0(\select_ln221_1_reg_1585_reg[8]_0 [6]),
        .I1(\select_ln221_1_reg_1585_reg[8]_1 [6]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_1_fu_535_p3[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_1_reg_1585[7]_i_1 
       (.I0(\select_ln221_1_reg_1585_reg[8]_0 [7]),
        .I1(\select_ln221_1_reg_1585_reg[8]_1 [7]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_1_fu_535_p3[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_1_reg_1585[8]_i_1 
       (.I0(\select_ln221_1_reg_1585_reg[8]_0 [8]),
        .I1(\select_ln221_1_reg_1585_reg[8]_1 [8]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_1_fu_535_p3[8]));
  FDRE \select_ln221_1_reg_1585_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_1_fu_535_p3[0]),
        .Q(select_ln221_1_reg_1585[0]),
        .R(1'b0));
  FDRE \select_ln221_1_reg_1585_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_1_fu_535_p3[1]),
        .Q(select_ln221_1_reg_1585[1]),
        .R(1'b0));
  FDRE \select_ln221_1_reg_1585_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_1_fu_535_p3[2]),
        .Q(select_ln221_1_reg_1585[2]),
        .R(1'b0));
  FDRE \select_ln221_1_reg_1585_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_1_fu_535_p3[3]),
        .Q(select_ln221_1_reg_1585[3]),
        .R(1'b0));
  FDRE \select_ln221_1_reg_1585_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_1_fu_535_p3[4]),
        .Q(select_ln221_1_reg_1585[4]),
        .R(1'b0));
  FDRE \select_ln221_1_reg_1585_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_1_fu_535_p3[5]),
        .Q(select_ln221_1_reg_1585[5]),
        .R(1'b0));
  FDRE \select_ln221_1_reg_1585_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_1_fu_535_p3[6]),
        .Q(select_ln221_1_reg_1585[6]),
        .R(1'b0));
  FDRE \select_ln221_1_reg_1585_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_1_fu_535_p3[7]),
        .Q(select_ln221_1_reg_1585[7]),
        .R(1'b0));
  FDRE \select_ln221_1_reg_1585_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_1_fu_535_p3[8]),
        .Q(select_ln221_1_reg_1585[8]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_2_reg_1590[0]_i_1 
       (.I0(\select_ln221_2_reg_1590_reg[8]_0 [0]),
        .I1(\select_ln221_2_reg_1590_reg[8]_1 [0]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_2_fu_542_p3[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_2_reg_1590[1]_i_1 
       (.I0(\select_ln221_2_reg_1590_reg[8]_0 [1]),
        .I1(\select_ln221_2_reg_1590_reg[8]_1 [1]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_2_fu_542_p3[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_2_reg_1590[2]_i_1 
       (.I0(\select_ln221_2_reg_1590_reg[8]_0 [2]),
        .I1(\select_ln221_2_reg_1590_reg[8]_1 [2]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_2_fu_542_p3[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_2_reg_1590[3]_i_1 
       (.I0(\select_ln221_2_reg_1590_reg[8]_0 [3]),
        .I1(\select_ln221_2_reg_1590_reg[8]_1 [3]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_2_fu_542_p3[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_2_reg_1590[4]_i_1 
       (.I0(\select_ln221_2_reg_1590_reg[8]_0 [4]),
        .I1(\select_ln221_2_reg_1590_reg[8]_1 [4]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_2_fu_542_p3[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_2_reg_1590[5]_i_1 
       (.I0(\select_ln221_2_reg_1590_reg[8]_0 [5]),
        .I1(\select_ln221_2_reg_1590_reg[8]_1 [5]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_2_fu_542_p3[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_2_reg_1590[6]_i_1 
       (.I0(\select_ln221_2_reg_1590_reg[8]_0 [6]),
        .I1(\select_ln221_2_reg_1590_reg[8]_1 [6]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_2_fu_542_p3[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_2_reg_1590[7]_i_1 
       (.I0(\select_ln221_2_reg_1590_reg[8]_0 [7]),
        .I1(\select_ln221_2_reg_1590_reg[8]_1 [7]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_2_fu_542_p3[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_2_reg_1590[8]_i_1 
       (.I0(\select_ln221_2_reg_1590_reg[8]_0 [8]),
        .I1(\select_ln221_2_reg_1590_reg[8]_1 [8]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_2_fu_542_p3[8]));
  FDRE \select_ln221_2_reg_1590_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_2_fu_542_p3[0]),
        .Q(select_ln221_2_reg_1590[0]),
        .R(1'b0));
  FDRE \select_ln221_2_reg_1590_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_2_fu_542_p3[1]),
        .Q(select_ln221_2_reg_1590[1]),
        .R(1'b0));
  FDRE \select_ln221_2_reg_1590_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_2_fu_542_p3[2]),
        .Q(select_ln221_2_reg_1590[2]),
        .R(1'b0));
  FDRE \select_ln221_2_reg_1590_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_2_fu_542_p3[3]),
        .Q(select_ln221_2_reg_1590[3]),
        .R(1'b0));
  FDRE \select_ln221_2_reg_1590_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_2_fu_542_p3[4]),
        .Q(select_ln221_2_reg_1590[4]),
        .R(1'b0));
  FDRE \select_ln221_2_reg_1590_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_2_fu_542_p3[5]),
        .Q(select_ln221_2_reg_1590[5]),
        .R(1'b0));
  FDRE \select_ln221_2_reg_1590_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_2_fu_542_p3[6]),
        .Q(select_ln221_2_reg_1590[6]),
        .R(1'b0));
  FDRE \select_ln221_2_reg_1590_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_2_fu_542_p3[7]),
        .Q(select_ln221_2_reg_1590[7]),
        .R(1'b0));
  FDRE \select_ln221_2_reg_1590_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_2_fu_542_p3[8]),
        .Q(select_ln221_2_reg_1590[8]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_reg_1580[0]_i_1 
       (.I0(DOBDO[0]),
        .I1(\select_ln221_reg_1580_reg[8]_0 [0]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_fu_528_p3[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_reg_1580[1]_i_1 
       (.I0(DOBDO[1]),
        .I1(\select_ln221_reg_1580_reg[8]_0 [1]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_fu_528_p3[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_reg_1580[2]_i_1 
       (.I0(DOBDO[2]),
        .I1(\select_ln221_reg_1580_reg[8]_0 [2]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_fu_528_p3[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_reg_1580[3]_i_1 
       (.I0(DOBDO[3]),
        .I1(\select_ln221_reg_1580_reg[8]_0 [3]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_fu_528_p3[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_reg_1580[4]_i_1 
       (.I0(DOBDO[4]),
        .I1(\select_ln221_reg_1580_reg[8]_0 [4]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_fu_528_p3[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_reg_1580[5]_i_1 
       (.I0(DOBDO[5]),
        .I1(\select_ln221_reg_1580_reg[8]_0 [5]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_fu_528_p3[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_reg_1580[6]_i_1 
       (.I0(DOBDO[6]),
        .I1(\select_ln221_reg_1580_reg[8]_0 [6]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_fu_528_p3[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_reg_1580[7]_i_1 
       (.I0(DOBDO[7]),
        .I1(\select_ln221_reg_1580_reg[8]_0 [7]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_fu_528_p3[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \select_ln221_reg_1580[8]_i_1 
       (.I0(DOBDO[8]),
        .I1(\select_ln221_reg_1580_reg[8]_0 [8]),
        .I2(trunc_ln190_reg_1512),
        .O(select_ln221_fu_528_p3[8]));
  FDRE \select_ln221_reg_1580_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_fu_528_p3[0]),
        .Q(select_ln221_reg_1580[0]),
        .R(1'b0));
  FDRE \select_ln221_reg_1580_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_fu_528_p3[1]),
        .Q(select_ln221_reg_1580[1]),
        .R(1'b0));
  FDRE \select_ln221_reg_1580_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_fu_528_p3[2]),
        .Q(select_ln221_reg_1580[2]),
        .R(1'b0));
  FDRE \select_ln221_reg_1580_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_fu_528_p3[3]),
        .Q(select_ln221_reg_1580[3]),
        .R(1'b0));
  FDRE \select_ln221_reg_1580_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_fu_528_p3[4]),
        .Q(select_ln221_reg_1580[4]),
        .R(1'b0));
  FDRE \select_ln221_reg_1580_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_fu_528_p3[5]),
        .Q(select_ln221_reg_1580[5]),
        .R(1'b0));
  FDRE \select_ln221_reg_1580_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_fu_528_p3[6]),
        .Q(select_ln221_reg_1580[6]),
        .R(1'b0));
  FDRE \select_ln221_reg_1580_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_fu_528_p3[7]),
        .Q(select_ln221_reg_1580[7]),
        .R(1'b0));
  FDRE \select_ln221_reg_1580_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(select_ln221_fu_528_p3[8]),
        .Q(select_ln221_reg_1580[8]),
        .R(1'b0));
  CARRY4 sum_tmp_1_fu_1152_p2__1_carry
       (.CI(1'b0),
        .CO({sum_tmp_1_fu_1152_p2__1_carry_n_0,sum_tmp_1_fu_1152_p2__1_carry_n_1,sum_tmp_1_fu_1152_p2__1_carry_n_2,sum_tmp_1_fu_1152_p2__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sext_ln233_11_fu_1148_p1[3:2],sext_ln233_6_fu_1104_p1}),
        .O(NLW_sum_tmp_1_fu_1152_p2__1_carry_O_UNCONNECTED[3:0]),
        .S({sum_tmp_1_fu_1152_p2__1_carry_i_3_n_0,sum_tmp_1_fu_1152_p2__1_carry_i_4_n_0,sum_tmp_1_fu_1152_p2__1_carry_i_5_n_0,sum_tmp_1_fu_1152_p2__1_carry_i_6_n_0}));
  CARRY4 sum_tmp_1_fu_1152_p2__1_carry__0
       (.CI(sum_tmp_1_fu_1152_p2__1_carry_n_0),
        .CO({NLW_sum_tmp_1_fu_1152_p2__1_carry__0_CO_UNCONNECTED[3:2],sum_tmp_1_fu_1152_p2__1_carry__0_n_2,sum_tmp_1_fu_1152_p2__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sum_tmp_1_fu_1152_p2__1_carry__0_i_1_n_0,sext_ln233_11_fu_1148_p1[4]}),
        .O({NLW_sum_tmp_1_fu_1152_p2__1_carry__0_O_UNCONNECTED[3],sext_ln234_1_fu_1168_p1}),
        .S({1'b0,1'b1,sum_tmp_1_fu_1152_p2__1_carry__0_i_3_n_0,sum_tmp_1_fu_1152_p2__1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h45)) 
    sum_tmp_1_fu_1152_p2__1_carry__0_i_1
       (.I0(sext_ln233_8_fu_1122_p1[4]),
        .I1(sext_ln233_8_fu_1122_p1[2]),
        .I2(p_load77_reg_1633[2]),
        .O(sum_tmp_1_fu_1152_p2__1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hF2)) 
    sum_tmp_1_fu_1152_p2__1_carry__0_i_2
       (.I0(p_load77_reg_1633[2]),
        .I1(sext_ln233_8_fu_1122_p1[2]),
        .I2(sext_ln233_8_fu_1122_p1[4]),
        .O(sext_ln233_11_fu_1148_p1[4]));
  LUT4 #(
    .INIT(16'h0DF2)) 
    sum_tmp_1_fu_1152_p2__1_carry__0_i_3
       (.I0(p_load77_reg_1633[2]),
        .I1(sext_ln233_8_fu_1122_p1[2]),
        .I2(sext_ln233_8_fu_1122_p1[4]),
        .I3(sext_ln233_6_fu_1104_p1[3]),
        .O(sum_tmp_1_fu_1152_p2__1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    sum_tmp_1_fu_1152_p2__1_carry__0_i_4
       (.I0(p_load77_reg_1633[2]),
        .I1(sext_ln233_8_fu_1122_p1[2]),
        .I2(sext_ln233_8_fu_1122_p1[4]),
        .I3(sext_ln233_6_fu_1104_p1[3]),
        .O(sum_tmp_1_fu_1152_p2__1_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hCE)) 
    sum_tmp_1_fu_1152_p2__1_carry_i_1
       (.I0(p_load77_reg_1633[2]),
        .I1(sext_ln233_8_fu_1122_p1[4]),
        .I2(sext_ln233_8_fu_1122_p1[2]),
        .O(sext_ln233_11_fu_1148_p1[3]));
  LUT4 #(
    .INIT(16'h9C18)) 
    sum_tmp_1_fu_1152_p2__1_carry_i_2
       (.I0(sext_ln233_8_fu_1122_p1[4]),
        .I1(sext_ln233_8_fu_1122_p1[2]),
        .I2(p_load77_reg_1633[2]),
        .I3(p_load77_reg_1633[0]),
        .O(sext_ln233_11_fu_1148_p1[2]));
  LUT5 #(
    .INIT(32'h23DCDCDC)) 
    sum_tmp_1_fu_1152_p2__1_carry_i_3
       (.I0(sext_ln233_8_fu_1122_p1[2]),
        .I1(sext_ln233_8_fu_1122_p1[4]),
        .I2(p_load77_reg_1633[2]),
        .I3(sext_ln233_6_fu_1104_p1[3]),
        .I4(sext_ln233_6_fu_1104_p1[2]),
        .O(sum_tmp_1_fu_1152_p2__1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9C1863E763E79C18)) 
    sum_tmp_1_fu_1152_p2__1_carry_i_4
       (.I0(sext_ln233_8_fu_1122_p1[4]),
        .I1(sext_ln233_8_fu_1122_p1[2]),
        .I2(p_load77_reg_1633[2]),
        .I3(p_load77_reg_1633[0]),
        .I4(sext_ln233_6_fu_1104_p1[3]),
        .I5(sext_ln233_6_fu_1104_p1[2]),
        .O(sum_tmp_1_fu_1152_p2__1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h96996966)) 
    sum_tmp_1_fu_1152_p2__1_carry_i_5
       (.I0(p_load77_reg_1633[2]),
        .I1(sext_ln233_8_fu_1122_p1[4]),
        .I2(p_load77_reg_1633[0]),
        .I3(sext_ln233_8_fu_1122_p1[2]),
        .I4(sext_ln233_6_fu_1104_p1[3]),
        .O(sum_tmp_1_fu_1152_p2__1_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_tmp_1_fu_1152_p2__1_carry_i_6
       (.I0(sext_ln233_8_fu_1122_p1[2]),
        .I1(p_load77_reg_1633[0]),
        .I2(sext_ln233_6_fu_1104_p1[2]),
        .O(sum_tmp_1_fu_1152_p2__1_carry_i_6_n_0));
  CARRY4 sum_tmp_2_fu_1302_p2__1_carry
       (.CI(1'b0),
        .CO({sum_tmp_2_fu_1302_p2__1_carry_n_0,sum_tmp_2_fu_1302_p2__1_carry_n_1,sum_tmp_2_fu_1302_p2__1_carry_n_2,sum_tmp_2_fu_1302_p2__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sext_ln233_17_fu_1298_p1[3:2],sext_ln233_14_fu_1254_p1}),
        .O(NLW_sum_tmp_2_fu_1302_p2__1_carry_O_UNCONNECTED[3:0]),
        .S({sum_tmp_2_fu_1302_p2__1_carry_i_3_n_0,sum_tmp_2_fu_1302_p2__1_carry_i_4_n_0,sum_tmp_2_fu_1302_p2__1_carry_i_5_n_0,sum_tmp_2_fu_1302_p2__1_carry_i_6_n_0}));
  CARRY4 sum_tmp_2_fu_1302_p2__1_carry__0
       (.CI(sum_tmp_2_fu_1302_p2__1_carry_n_0),
        .CO({NLW_sum_tmp_2_fu_1302_p2__1_carry__0_CO_UNCONNECTED[3:2],sum_tmp_2_fu_1302_p2__1_carry__0_n_2,sum_tmp_2_fu_1302_p2__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sum_tmp_2_fu_1302_p2__1_carry__0_i_1_n_0,sext_ln233_17_fu_1298_p1[4]}),
        .O({NLW_sum_tmp_2_fu_1302_p2__1_carry__0_O_UNCONNECTED[3],sext_ln234_2_fu_1318_p1}),
        .S({1'b0,1'b1,sum_tmp_2_fu_1302_p2__1_carry__0_i_3_n_0,sum_tmp_2_fu_1302_p2__1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h45)) 
    sum_tmp_2_fu_1302_p2__1_carry__0_i_1
       (.I0(sext_ln233_13_fu_1272_p1[4]),
        .I1(sext_ln233_13_fu_1272_p1[2]),
        .I2(p_load_reg_1665[2]),
        .O(sum_tmp_2_fu_1302_p2__1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hF2)) 
    sum_tmp_2_fu_1302_p2__1_carry__0_i_2
       (.I0(p_load_reg_1665[2]),
        .I1(sext_ln233_13_fu_1272_p1[2]),
        .I2(sext_ln233_13_fu_1272_p1[4]),
        .O(sext_ln233_17_fu_1298_p1[4]));
  LUT4 #(
    .INIT(16'h0DF2)) 
    sum_tmp_2_fu_1302_p2__1_carry__0_i_3
       (.I0(p_load_reg_1665[2]),
        .I1(sext_ln233_13_fu_1272_p1[2]),
        .I2(sext_ln233_13_fu_1272_p1[4]),
        .I3(sext_ln233_14_fu_1254_p1[3]),
        .O(sum_tmp_2_fu_1302_p2__1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    sum_tmp_2_fu_1302_p2__1_carry__0_i_4
       (.I0(p_load_reg_1665[2]),
        .I1(sext_ln233_13_fu_1272_p1[2]),
        .I2(sext_ln233_13_fu_1272_p1[4]),
        .I3(sext_ln233_14_fu_1254_p1[3]),
        .O(sum_tmp_2_fu_1302_p2__1_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hCE)) 
    sum_tmp_2_fu_1302_p2__1_carry_i_1
       (.I0(p_load_reg_1665[2]),
        .I1(sext_ln233_13_fu_1272_p1[4]),
        .I2(sext_ln233_13_fu_1272_p1[2]),
        .O(sext_ln233_17_fu_1298_p1[3]));
  LUT4 #(
    .INIT(16'h9C18)) 
    sum_tmp_2_fu_1302_p2__1_carry_i_2
       (.I0(sext_ln233_13_fu_1272_p1[4]),
        .I1(sext_ln233_13_fu_1272_p1[2]),
        .I2(p_load_reg_1665[2]),
        .I3(p_load_reg_1665[0]),
        .O(sext_ln233_17_fu_1298_p1[2]));
  LUT5 #(
    .INIT(32'h23DCDCDC)) 
    sum_tmp_2_fu_1302_p2__1_carry_i_3
       (.I0(sext_ln233_13_fu_1272_p1[2]),
        .I1(sext_ln233_13_fu_1272_p1[4]),
        .I2(p_load_reg_1665[2]),
        .I3(sext_ln233_14_fu_1254_p1[3]),
        .I4(sext_ln233_14_fu_1254_p1[2]),
        .O(sum_tmp_2_fu_1302_p2__1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9C1863E763E79C18)) 
    sum_tmp_2_fu_1302_p2__1_carry_i_4
       (.I0(sext_ln233_13_fu_1272_p1[4]),
        .I1(sext_ln233_13_fu_1272_p1[2]),
        .I2(p_load_reg_1665[2]),
        .I3(p_load_reg_1665[0]),
        .I4(sext_ln233_14_fu_1254_p1[3]),
        .I5(sext_ln233_14_fu_1254_p1[2]),
        .O(sum_tmp_2_fu_1302_p2__1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h96996966)) 
    sum_tmp_2_fu_1302_p2__1_carry_i_5
       (.I0(p_load_reg_1665[2]),
        .I1(sext_ln233_13_fu_1272_p1[4]),
        .I2(p_load_reg_1665[0]),
        .I3(sext_ln233_13_fu_1272_p1[2]),
        .I4(sext_ln233_14_fu_1254_p1[3]),
        .O(sum_tmp_2_fu_1302_p2__1_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_tmp_2_fu_1302_p2__1_carry_i_6
       (.I0(sext_ln233_13_fu_1272_p1[2]),
        .I1(p_load_reg_1665[0]),
        .I2(sext_ln233_14_fu_1254_p1[2]),
        .O(sum_tmp_2_fu_1302_p2__1_carry_i_6_n_0));
  CARRY4 sum_tmp_fu_1002_p2__1_carry
       (.CI(1'b0),
        .CO({sum_tmp_fu_1002_p2__1_carry_n_0,sum_tmp_fu_1002_p2__1_carry_n_1,sum_tmp_fu_1002_p2__1_carry_n_2,sum_tmp_fu_1002_p2__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sext_ln233_5_fu_998_p1[3:2],sext_ln233_fu_954_p1}),
        .O(NLW_sum_tmp_fu_1002_p2__1_carry_O_UNCONNECTED[3:0]),
        .S({sum_tmp_fu_1002_p2__1_carry_i_3_n_0,sum_tmp_fu_1002_p2__1_carry_i_4_n_0,sum_tmp_fu_1002_p2__1_carry_i_5_n_0,sum_tmp_fu_1002_p2__1_carry_i_6_n_0}));
  CARRY4 sum_tmp_fu_1002_p2__1_carry__0
       (.CI(sum_tmp_fu_1002_p2__1_carry_n_0),
        .CO({NLW_sum_tmp_fu_1002_p2__1_carry__0_CO_UNCONNECTED[3:2],sum_tmp_fu_1002_p2__1_carry__0_n_2,sum_tmp_fu_1002_p2__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sum_tmp_fu_1002_p2__1_carry__0_i_1_n_0,sext_ln233_5_fu_998_p1[4]}),
        .O({NLW_sum_tmp_fu_1002_p2__1_carry__0_O_UNCONNECTED[3],sext_ln234_fu_1018_p1}),
        .S({1'b0,1'b1,sum_tmp_fu_1002_p2__1_carry__0_i_3_n_0,sum_tmp_fu_1002_p2__1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h45)) 
    sum_tmp_fu_1002_p2__1_carry__0_i_1
       (.I0(sext_ln233_3_fu_972_p1[4]),
        .I1(sext_ln233_3_fu_972_p1[2]),
        .I2(p_load81_reg_1601[2]),
        .O(sum_tmp_fu_1002_p2__1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hF2)) 
    sum_tmp_fu_1002_p2__1_carry__0_i_2
       (.I0(p_load81_reg_1601[2]),
        .I1(sext_ln233_3_fu_972_p1[2]),
        .I2(sext_ln233_3_fu_972_p1[4]),
        .O(sext_ln233_5_fu_998_p1[4]));
  LUT4 #(
    .INIT(16'h0DF2)) 
    sum_tmp_fu_1002_p2__1_carry__0_i_3
       (.I0(p_load81_reg_1601[2]),
        .I1(sext_ln233_3_fu_972_p1[2]),
        .I2(sext_ln233_3_fu_972_p1[4]),
        .I3(sext_ln233_fu_954_p1[3]),
        .O(sum_tmp_fu_1002_p2__1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    sum_tmp_fu_1002_p2__1_carry__0_i_4
       (.I0(p_load81_reg_1601[2]),
        .I1(sext_ln233_3_fu_972_p1[2]),
        .I2(sext_ln233_3_fu_972_p1[4]),
        .I3(sext_ln233_fu_954_p1[3]),
        .O(sum_tmp_fu_1002_p2__1_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hCE)) 
    sum_tmp_fu_1002_p2__1_carry_i_1
       (.I0(p_load81_reg_1601[2]),
        .I1(sext_ln233_3_fu_972_p1[4]),
        .I2(sext_ln233_3_fu_972_p1[2]),
        .O(sext_ln233_5_fu_998_p1[3]));
  LUT4 #(
    .INIT(16'h9C18)) 
    sum_tmp_fu_1002_p2__1_carry_i_2
       (.I0(sext_ln233_3_fu_972_p1[4]),
        .I1(sext_ln233_3_fu_972_p1[2]),
        .I2(p_load81_reg_1601[2]),
        .I3(p_load81_reg_1601[0]),
        .O(sext_ln233_5_fu_998_p1[2]));
  LUT5 #(
    .INIT(32'h23DCDCDC)) 
    sum_tmp_fu_1002_p2__1_carry_i_3
       (.I0(sext_ln233_3_fu_972_p1[2]),
        .I1(sext_ln233_3_fu_972_p1[4]),
        .I2(p_load81_reg_1601[2]),
        .I3(sext_ln233_fu_954_p1[3]),
        .I4(sext_ln233_fu_954_p1[2]),
        .O(sum_tmp_fu_1002_p2__1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9C1863E763E79C18)) 
    sum_tmp_fu_1002_p2__1_carry_i_4
       (.I0(sext_ln233_3_fu_972_p1[4]),
        .I1(sext_ln233_3_fu_972_p1[2]),
        .I2(p_load81_reg_1601[2]),
        .I3(p_load81_reg_1601[0]),
        .I4(sext_ln233_fu_954_p1[3]),
        .I5(sext_ln233_fu_954_p1[2]),
        .O(sum_tmp_fu_1002_p2__1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h96996966)) 
    sum_tmp_fu_1002_p2__1_carry_i_5
       (.I0(p_load81_reg_1601[2]),
        .I1(sext_ln233_3_fu_972_p1[4]),
        .I2(p_load81_reg_1601[0]),
        .I3(sext_ln233_3_fu_972_p1[2]),
        .I4(sext_ln233_fu_954_p1[3]),
        .O(sum_tmp_fu_1002_p2__1_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_tmp_fu_1002_p2__1_carry_i_6
       (.I0(sext_ln233_3_fu_972_p1[2]),
        .I1(p_load81_reg_1601[0]),
        .I2(sext_ln233_fu_954_p1[2]),
        .O(sum_tmp_fu_1002_p2__1_carry_i_6_n_0));
  FDRE \tmp_10_reg_1638_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_1_fu_726_p2__1_carry_n_5),
        .Q(tmp_10_reg_1638[0]),
        .R(1'b0));
  FDRE \tmp_10_reg_1638_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_1_fu_726_p2__1_carry_n_4),
        .Q(tmp_10_reg_1638[1]),
        .R(1'b0));
  FDRE \tmp_10_reg_1638_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_1_fu_726_p2__1_carry__0_n_7),
        .Q(tmp_10_reg_1638[2]),
        .R(1'b0));
  FDRE \tmp_10_reg_1638_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_1_fu_726_p2__1_carry__0_n_6),
        .Q(tmp_10_reg_1638[3]),
        .R(1'b0));
  FDRE \tmp_10_reg_1638_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_1_fu_726_p2__1_carry__0_n_5),
        .Q(tmp_10_reg_1638[4]),
        .R(1'b0));
  FDRE \tmp_10_reg_1638_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_1_fu_726_p2__1_carry__0_n_4),
        .Q(tmp_10_reg_1638[5]),
        .R(1'b0));
  FDRE \tmp_10_reg_1638_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_1_fu_726_p2__1_carry__1_n_7),
        .Q(tmp_10_reg_1638[6]),
        .R(1'b0));
  FDRE \tmp_10_reg_1638_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_1_fu_726_p2__1_carry__1_n_6),
        .Q(tmp_10_reg_1638[7]),
        .R(1'b0));
  FDRE \tmp_10_reg_1638_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_1_fu_726_p2__1_carry__1_n_5),
        .Q(tmp_10_reg_1638[8]),
        .R(1'b0));
  FDRE \tmp_10_reg_1638_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_1_fu_726_p2__1_carry__1_n_4),
        .Q(tmp_10_reg_1638[9]),
        .R(1'b0));
  FDRE \tmp_11_reg_1643_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(tmp_11_fu_742_p3),
        .Q(sext_ln233_8_fu_1122_p1[4]),
        .R(1'b0));
  FDRE \tmp_16_reg_1670_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_2_fu_844_p2__1_carry_n_5),
        .Q(tmp_16_reg_1670[0]),
        .R(1'b0));
  FDRE \tmp_16_reg_1670_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_2_fu_844_p2__1_carry_n_4),
        .Q(tmp_16_reg_1670[1]),
        .R(1'b0));
  FDRE \tmp_16_reg_1670_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_2_fu_844_p2__1_carry__0_n_7),
        .Q(tmp_16_reg_1670[2]),
        .R(1'b0));
  FDRE \tmp_16_reg_1670_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_2_fu_844_p2__1_carry__0_n_6),
        .Q(tmp_16_reg_1670[3]),
        .R(1'b0));
  FDRE \tmp_16_reg_1670_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_2_fu_844_p2__1_carry__0_n_5),
        .Q(tmp_16_reg_1670[4]),
        .R(1'b0));
  FDRE \tmp_16_reg_1670_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_2_fu_844_p2__1_carry__0_n_4),
        .Q(tmp_16_reg_1670[5]),
        .R(1'b0));
  FDRE \tmp_16_reg_1670_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_2_fu_844_p2__1_carry__1_n_7),
        .Q(tmp_16_reg_1670[6]),
        .R(1'b0));
  FDRE \tmp_16_reg_1670_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_2_fu_844_p2__1_carry__1_n_6),
        .Q(tmp_16_reg_1670[7]),
        .R(1'b0));
  FDRE \tmp_16_reg_1670_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_2_fu_844_p2__1_carry__1_n_5),
        .Q(tmp_16_reg_1670[8]),
        .R(1'b0));
  FDRE \tmp_16_reg_1670_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_2_fu_844_p2__1_carry__1_n_4),
        .Q(tmp_16_reg_1670[9]),
        .R(1'b0));
  FDRE \tmp_17_reg_1675_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(tmp_17_fu_860_p3),
        .Q(sext_ln233_13_fu_1272_p1[4]),
        .R(1'b0));
  (* srl_bus_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg[0]_srl2 " *) 
  SRL16E \tmp_3_reg_1527_pp0_iter2_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(p_0_in[0]),
        .Q(\tmp_3_reg_1527_pp0_iter2_reg_reg[0]_srl2_n_0 ));
  LUT3 #(
    .INIT(8'hD7)) 
    \tmp_3_reg_1527_pp0_iter2_reg_reg[0]_srl2_i_1 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[0] ),
        .I2(\col_index_1_fu_164_reg_n_0_[1] ),
        .O(p_0_in[0]));
  (* srl_bus_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg[1]_srl2 " *) 
  SRL16E \tmp_3_reg_1527_pp0_iter2_reg_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(p_0_in[1]),
        .Q(\tmp_3_reg_1527_pp0_iter2_reg_reg[1]_srl2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hDDD7)) 
    \tmp_3_reg_1527_pp0_iter2_reg_reg[1]_srl2_i_1 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[2] ),
        .I2(\col_index_1_fu_164_reg_n_0_[1] ),
        .I3(\col_index_1_fu_164_reg_n_0_[0] ),
        .O(p_0_in[1]));
  (* srl_bus_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg[2]_srl2 " *) 
  SRL16E \tmp_3_reg_1527_pp0_iter2_reg_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(p_0_in[2]),
        .Q(\tmp_3_reg_1527_pp0_iter2_reg_reg[2]_srl2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hDDDDDDD7)) 
    \tmp_3_reg_1527_pp0_iter2_reg_reg[2]_srl2_i_1 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[3] ),
        .I2(\col_index_1_fu_164_reg_n_0_[0] ),
        .I3(\col_index_1_fu_164_reg_n_0_[1] ),
        .I4(\col_index_1_fu_164_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* srl_bus_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg[3]_srl2 " *) 
  SRL16E \tmp_3_reg_1527_pp0_iter2_reg_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(p_0_in[3]),
        .Q(\tmp_3_reg_1527_pp0_iter2_reg_reg[3]_srl2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDDDD7)) 
    \tmp_3_reg_1527_pp0_iter2_reg_reg[3]_srl2_i_1 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[4] ),
        .I2(\col_index_1_fu_164_reg_n_0_[2] ),
        .I3(\col_index_1_fu_164_reg_n_0_[1] ),
        .I4(\col_index_1_fu_164_reg_n_0_[0] ),
        .I5(\col_index_1_fu_164_reg_n_0_[3] ),
        .O(p_0_in[3]));
  (* srl_bus_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg[4]_srl2 " *) 
  SRL16E \tmp_3_reg_1527_pp0_iter2_reg_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(p_0_in[4]),
        .Q(\tmp_3_reg_1527_pp0_iter2_reg_reg[4]_srl2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE333300013333)) 
    \tmp_3_reg_1527_pp0_iter2_reg_reg[4]_srl2_i_1 
       (.I0(\col_index_1_fu_164_reg_n_0_[3] ),
        .I1(\tmp_3_reg_1527_pp0_iter2_reg_reg[4]_srl2_i_2_n_0 ),
        .I2(\col_index_1_fu_164_reg_n_0_[2] ),
        .I3(\col_index_1_fu_164_reg_n_0_[4] ),
        .I4(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I5(\col_index_1_fu_164_reg_n_0_[5] ),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'hE0)) 
    \tmp_3_reg_1527_pp0_iter2_reg_reg[4]_srl2_i_2 
       (.I0(\col_index_1_fu_164_reg_n_0_[1] ),
        .I1(\col_index_1_fu_164_reg_n_0_[0] ),
        .I2(icmp_ln190_fu_420_p2_carry__0_n_0),
        .O(\tmp_3_reg_1527_pp0_iter2_reg_reg[4]_srl2_i_2_n_0 ));
  (* srl_bus_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg[5]_srl2 " *) 
  SRL16E \tmp_3_reg_1527_pp0_iter2_reg_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(p_0_in[5]),
        .Q(\tmp_3_reg_1527_pp0_iter2_reg_reg[5]_srl2_n_0 ));
  LUT4 #(
    .INIT(16'h88D7)) 
    \tmp_3_reg_1527_pp0_iter2_reg_reg[5]_srl2_i_1 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[6] ),
        .I2(\col_index_1_fu_164_reg_n_0_[5] ),
        .I3(\tmp_3_reg_1527_pp0_iter2_reg_reg[7]_srl2_i_2_n_0 ),
        .O(p_0_in[5]));
  (* srl_bus_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg[6]_srl2 " *) 
  SRL16E \tmp_3_reg_1527_pp0_iter2_reg_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(p_0_in[6]),
        .Q(\tmp_3_reg_1527_pp0_iter2_reg_reg[6]_srl2_n_0 ));
  LUT5 #(
    .INIT(32'hCF03CB07)) 
    \tmp_3_reg_1527_pp0_iter2_reg_reg[6]_srl2_i_1 
       (.I0(\col_index_1_fu_164_reg_n_0_[5] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I2(\tmp_3_reg_1527_pp0_iter2_reg_reg[7]_srl2_i_2_n_0 ),
        .I3(\col_index_1_fu_164_reg_n_0_[7] ),
        .I4(\col_index_1_fu_164_reg_n_0_[6] ),
        .O(p_0_in[6]));
  (* srl_bus_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg[7]_srl2 " *) 
  SRL16E \tmp_3_reg_1527_pp0_iter2_reg_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(p_0_in[7]),
        .Q(\tmp_3_reg_1527_pp0_iter2_reg_reg[7]_srl2_n_0 ));
  LUT6 #(
    .INIT(64'h8888DDDD8888DDD7)) 
    \tmp_3_reg_1527_pp0_iter2_reg_reg[7]_srl2_i_1 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[8] ),
        .I2(\col_index_1_fu_164_reg_n_0_[6] ),
        .I3(\col_index_1_fu_164_reg_n_0_[7] ),
        .I4(\tmp_3_reg_1527_pp0_iter2_reg_reg[7]_srl2_i_2_n_0 ),
        .I5(\col_index_1_fu_164_reg_n_0_[5] ),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \tmp_3_reg_1527_pp0_iter2_reg_reg[7]_srl2_i_2 
       (.I0(\col_index_1_fu_164_reg_n_0_[3] ),
        .I1(\col_index_1_fu_164_reg_n_0_[0] ),
        .I2(\col_index_1_fu_164_reg_n_0_[1] ),
        .I3(\col_index_1_fu_164_reg_n_0_[2] ),
        .I4(\col_index_1_fu_164_reg_n_0_[4] ),
        .I5(icmp_ln190_fu_420_p2_carry__0_n_0),
        .O(\tmp_3_reg_1527_pp0_iter2_reg_reg[7]_srl2_i_2_n_0 ));
  (* srl_bus_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg[8]_srl2 " *) 
  SRL16E \tmp_3_reg_1527_pp0_iter2_reg_reg[8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(p_0_in[8]),
        .Q(\tmp_3_reg_1527_pp0_iter2_reg_reg[8]_srl2_n_0 ));
  LUT6 #(
    .INIT(64'h8D8D8D8D8D8D8D87)) 
    \tmp_3_reg_1527_pp0_iter2_reg_reg[8]_srl2_i_1 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[9] ),
        .I2(\tmp_3_reg_1527_pp0_iter2_reg_reg[8]_srl2_i_2_n_0 ),
        .I3(\col_index_1_fu_164_reg_n_0_[7] ),
        .I4(\col_index_1_fu_164_reg_n_0_[6] ),
        .I5(\col_index_1_fu_164_reg_n_0_[8] ),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hFFFFCCCCFFFFCCC8)) 
    \tmp_3_reg_1527_pp0_iter2_reg_reg[8]_srl2_i_2 
       (.I0(\col_index_1_fu_164_reg_n_0_[5] ),
        .I1(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I2(\col_index_1_fu_164_reg_n_0_[4] ),
        .I3(\col_index_1_fu_164_reg_n_0_[2] ),
        .I4(\tmp_3_reg_1527_pp0_iter2_reg_reg[4]_srl2_i_2_n_0 ),
        .I5(\col_index_1_fu_164_reg_n_0_[3] ),
        .O(\tmp_3_reg_1527_pp0_iter2_reg_reg[8]_srl2_i_2_n_0 ));
  (* srl_bus_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0/grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97/tmp_3_reg_1527_pp0_iter2_reg_reg[9]_srl2 " *) 
  SRL16E \tmp_3_reg_1527_pp0_iter2_reg_reg[9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_subdone),
        .CLK(ap_clk),
        .D(p_0_in[9]),
        .Q(\tmp_3_reg_1527_pp0_iter2_reg_reg[9]_srl2_n_0 ));
  LUT4 #(
    .INIT(16'hE133)) 
    \tmp_3_reg_1527_pp0_iter2_reg_reg[9]_srl2_i_1 
       (.I0(\col_index_1_fu_164_reg_n_0_[9] ),
        .I1(\tmp_3_reg_1527_pp0_iter2_reg_reg[9]_srl2_i_2_n_0 ),
        .I2(\col_index_1_fu_164_reg_n_0_[10] ),
        .I3(icmp_ln190_fu_420_p2_carry__0_n_0),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFECCCCCCCC)) 
    \tmp_3_reg_1527_pp0_iter2_reg_reg[9]_srl2_i_2 
       (.I0(\col_index_1_fu_164_reg_n_0_[5] ),
        .I1(\tmp_3_reg_1527_pp0_iter2_reg_reg[7]_srl2_i_2_n_0 ),
        .I2(\col_index_1_fu_164_reg_n_0_[7] ),
        .I3(\col_index_1_fu_164_reg_n_0_[6] ),
        .I4(\col_index_1_fu_164_reg_n_0_[8] ),
        .I5(icmp_ln190_fu_420_p2_carry__0_n_0),
        .O(\tmp_3_reg_1527_pp0_iter2_reg_reg[9]_srl2_i_2_n_0 ));
  FDRE \tmp_3_reg_1527_pp0_iter3_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\tmp_3_reg_1527_pp0_iter2_reg_reg[0]_srl2_n_0 ),
        .Q(tmp_3_reg_1527_pp0_iter3_reg[0]),
        .R(1'b0));
  FDRE \tmp_3_reg_1527_pp0_iter3_reg_reg[1]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\tmp_3_reg_1527_pp0_iter2_reg_reg[1]_srl2_n_0 ),
        .Q(tmp_3_reg_1527_pp0_iter3_reg[1]),
        .R(1'b0));
  FDRE \tmp_3_reg_1527_pp0_iter3_reg_reg[2]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\tmp_3_reg_1527_pp0_iter2_reg_reg[2]_srl2_n_0 ),
        .Q(tmp_3_reg_1527_pp0_iter3_reg[2]),
        .R(1'b0));
  FDRE \tmp_3_reg_1527_pp0_iter3_reg_reg[3]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\tmp_3_reg_1527_pp0_iter2_reg_reg[3]_srl2_n_0 ),
        .Q(tmp_3_reg_1527_pp0_iter3_reg[3]),
        .R(1'b0));
  FDRE \tmp_3_reg_1527_pp0_iter3_reg_reg[4]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\tmp_3_reg_1527_pp0_iter2_reg_reg[4]_srl2_n_0 ),
        .Q(tmp_3_reg_1527_pp0_iter3_reg[4]),
        .R(1'b0));
  FDRE \tmp_3_reg_1527_pp0_iter3_reg_reg[5]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\tmp_3_reg_1527_pp0_iter2_reg_reg[5]_srl2_n_0 ),
        .Q(tmp_3_reg_1527_pp0_iter3_reg[5]),
        .R(1'b0));
  FDRE \tmp_3_reg_1527_pp0_iter3_reg_reg[6]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\tmp_3_reg_1527_pp0_iter2_reg_reg[6]_srl2_n_0 ),
        .Q(tmp_3_reg_1527_pp0_iter3_reg[6]),
        .R(1'b0));
  FDRE \tmp_3_reg_1527_pp0_iter3_reg_reg[7]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\tmp_3_reg_1527_pp0_iter2_reg_reg[7]_srl2_n_0 ),
        .Q(tmp_3_reg_1527_pp0_iter3_reg[7]),
        .R(1'b0));
  FDRE \tmp_3_reg_1527_pp0_iter3_reg_reg[8]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\tmp_3_reg_1527_pp0_iter2_reg_reg[8]_srl2_n_0 ),
        .Q(tmp_3_reg_1527_pp0_iter3_reg[8]),
        .R(1'b0));
  FDRE \tmp_3_reg_1527_pp0_iter3_reg_reg[9]__0 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\tmp_3_reg_1527_pp0_iter2_reg_reg[9]_srl2_n_0 ),
        .Q(tmp_3_reg_1527_pp0_iter3_reg[9]),
        .R(1'b0));
  FDRE \tmp_5_reg_1611_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(tmp_5_fu_624_p3),
        .Q(sext_ln233_3_fu_972_p1[4]),
        .R(1'b0));
  FDRE \tmp_s_reg_1606_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[0]),
        .Q(tmp_s_reg_1606[0]),
        .R(1'b0));
  FDRE \tmp_s_reg_1606_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[1]),
        .Q(tmp_s_reg_1606[1]),
        .R(1'b0));
  FDRE \tmp_s_reg_1606_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[2]),
        .Q(tmp_s_reg_1606[2]),
        .R(1'b0));
  FDRE \tmp_s_reg_1606_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[3]),
        .Q(tmp_s_reg_1606[3]),
        .R(1'b0));
  FDRE \tmp_s_reg_1606_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[4]),
        .Q(tmp_s_reg_1606[4]),
        .R(1'b0));
  FDRE \tmp_s_reg_1606_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[5]),
        .Q(tmp_s_reg_1606[5]),
        .R(1'b0));
  FDRE \tmp_s_reg_1606_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[6]),
        .Q(tmp_s_reg_1606[6]),
        .R(1'b0));
  FDRE \tmp_s_reg_1606_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[7]),
        .Q(tmp_s_reg_1606[7]),
        .R(1'b0));
  FDRE \tmp_s_reg_1606_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[8]),
        .Q(tmp_s_reg_1606[8]),
        .R(1'b0));
  FDRE \tmp_s_reg_1606_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(p_1_in[9]),
        .Q(tmp_s_reg_1606[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \trunc_ln190_reg_1512[0]_i_1 
       (.I0(icmp_ln190_fu_420_p2_carry__0_n_0),
        .I1(\col_index_1_fu_164_reg_n_0_[0] ),
        .O(trunc_ln190_1_fu_448_p1));
  FDRE \trunc_ln190_reg_1512_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(trunc_ln190_reg_1512),
        .Q(trunc_ln190_reg_1512_pp0_iter2_reg),
        .R(1'b0));
  FDRE \trunc_ln190_reg_1512_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(trunc_ln190_reg_1512_pp0_iter2_reg),
        .Q(trunc_ln190_reg_1512_pp0_iter3_reg),
        .R(1'b0));
  FDRE \trunc_ln190_reg_1512_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(trunc_ln190_1_fu_448_p1),
        .Q(trunc_ln190_reg_1512),
        .R(1'b0));
  FDRE \trunc_ln228_1_reg_1649_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_1_fu_726_p2__1_carry_n_7),
        .Q(sext_ln233_8_fu_1122_p1[2]),
        .R(1'b0));
  FDRE \trunc_ln228_2_reg_1681_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_2_fu_844_p2__1_carry_n_7),
        .Q(sext_ln233_13_fu_1272_p1[2]),
        .R(1'b0));
  FDRE \trunc_ln228_reg_1617_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(quatizer_in_fu_608_p2__1_carry_n_7),
        .Q(sext_ln233_3_fu_972_p1[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \write_word_reg_1691[0]_i_1 
       (.I0(tmp_s_reg_1606[0]),
        .I1(sext_ln233_3_fu_972_p1[4]),
        .I2(\write_word_reg_1691[5]_i_3_n_0 ),
        .I3(select_ln252_fu_1064_p3),
        .O(write_word_fu_1386_p4[0]));
  LUT6 #(
    .INIT(64'h7F80FFFF7F800000)) 
    \write_word_reg_1691[10]_i_1 
       (.I0(sext_ln233_8_fu_1122_p1[4]),
        .I1(tmp_10_reg_1638[0]),
        .I2(tmp_10_reg_1638[1]),
        .I3(tmp_10_reg_1638[2]),
        .I4(\write_word_reg_1691[13]_i_3_n_0 ),
        .I5(select_ln252_1_fu_1214_p3),
        .O(write_word_fu_1386_p4[10]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \write_word_reg_1691[11]_i_1 
       (.I0(\write_word_reg_1691[11]_i_2_n_0 ),
        .I1(tmp_10_reg_1638[3]),
        .I2(\write_word_reg_1691[13]_i_3_n_0 ),
        .I3(select_ln252_1_fu_1214_p3),
        .O(write_word_fu_1386_p4[11]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \write_word_reg_1691[11]_i_2 
       (.I0(tmp_10_reg_1638[2]),
        .I1(sext_ln233_8_fu_1122_p1[4]),
        .I2(tmp_10_reg_1638[0]),
        .I3(tmp_10_reg_1638[1]),
        .O(\write_word_reg_1691[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \write_word_reg_1691[12]_i_1 
       (.I0(\write_word_reg_1691[12]_i_2_n_0 ),
        .I1(tmp_10_reg_1638[4]),
        .I2(\write_word_reg_1691[13]_i_3_n_0 ),
        .I3(select_ln252_1_fu_1214_p3),
        .O(write_word_fu_1386_p4[12]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \write_word_reg_1691[12]_i_2 
       (.I0(tmp_10_reg_1638[3]),
        .I1(tmp_10_reg_1638[1]),
        .I2(tmp_10_reg_1638[0]),
        .I3(sext_ln233_8_fu_1122_p1[4]),
        .I4(tmp_10_reg_1638[2]),
        .O(\write_word_reg_1691[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \write_word_reg_1691[13]_i_1 
       (.I0(\write_word_reg_1691[13]_i_2_n_0 ),
        .I1(tmp_10_reg_1638[5]),
        .I2(\write_word_reg_1691[13]_i_3_n_0 ),
        .I3(select_ln252_1_fu_1214_p3),
        .O(write_word_fu_1386_p4[13]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \write_word_reg_1691[13]_i_2 
       (.I0(tmp_10_reg_1638[4]),
        .I1(tmp_10_reg_1638[2]),
        .I2(sext_ln233_8_fu_1122_p1[4]),
        .I3(tmp_10_reg_1638[0]),
        .I4(tmp_10_reg_1638[1]),
        .I5(tmp_10_reg_1638[3]),
        .O(\write_word_reg_1691[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h4001)) 
    \write_word_reg_1691[13]_i_3 
       (.I0(cmp147_reg_1532_pp0_iter3_reg),
        .I1(tmp_10_reg_1638[9]),
        .I2(tmp_10_reg_1638[8]),
        .I3(\write_word_reg_1691[13]_i_5_n_0 ),
        .O(\write_word_reg_1691[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h4015)) 
    \write_word_reg_1691[13]_i_4 
       (.I0(cmp147_reg_1532_pp0_iter3_reg),
        .I1(\write_word_reg_1691[13]_i_5_n_0 ),
        .I2(tmp_10_reg_1638[8]),
        .I3(tmp_10_reg_1638[9]),
        .O(select_ln252_1_fu_1214_p3));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \write_word_reg_1691[13]_i_5 
       (.I0(tmp_10_reg_1638[7]),
        .I1(tmp_10_reg_1638[5]),
        .I2(\write_word_reg_1691[13]_i_2_n_0 ),
        .I3(tmp_10_reg_1638[6]),
        .O(\write_word_reg_1691[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0110111111111010)) 
    \write_word_reg_1691[14]_i_1 
       (.I0(cmp147_reg_1532_pp0_iter3_reg),
        .I1(tmp_10_reg_1638[9]),
        .I2(tmp_10_reg_1638[8]),
        .I3(tmp_10_reg_1638[7]),
        .I4(\write_word_reg_1691[14]_i_2_n_0 ),
        .I5(tmp_10_reg_1638[6]),
        .O(write_word_fu_1386_p4[14]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_word_reg_1691[14]_i_2 
       (.I0(tmp_10_reg_1638[5]),
        .I1(\write_word_reg_1691[13]_i_2_n_0 ),
        .O(\write_word_reg_1691[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01111110)) 
    \write_word_reg_1691[15]_i_1 
       (.I0(cmp147_reg_1532_pp0_iter3_reg),
        .I1(tmp_10_reg_1638[9]),
        .I2(tmp_10_reg_1638[8]),
        .I3(tmp_10_reg_1638[7]),
        .I4(\write_word_reg_1691[15]_i_2_n_0 ),
        .O(write_word_fu_1386_p4[15]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \write_word_reg_1691[15]_i_2 
       (.I0(tmp_10_reg_1638[6]),
        .I1(\write_word_reg_1691[13]_i_2_n_0 ),
        .I2(tmp_10_reg_1638[5]),
        .O(\write_word_reg_1691[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \write_word_reg_1691[16]_i_1 
       (.I0(tmp_16_reg_1670[0]),
        .I1(sext_ln233_13_fu_1272_p1[4]),
        .I2(\write_word_reg_1691[21]_i_3_n_0 ),
        .I3(select_ln252_2_fu_1364_p3),
        .O(write_word_fu_1386_p4[16]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h78FF7800)) 
    \write_word_reg_1691[17]_i_1 
       (.I0(tmp_16_reg_1670[0]),
        .I1(sext_ln233_13_fu_1272_p1[4]),
        .I2(tmp_16_reg_1670[1]),
        .I3(\write_word_reg_1691[21]_i_3_n_0 ),
        .I4(select_ln252_2_fu_1364_p3),
        .O(write_word_fu_1386_p4[17]));
  LUT6 #(
    .INIT(64'h7F80FFFF7F800000)) 
    \write_word_reg_1691[18]_i_1 
       (.I0(sext_ln233_13_fu_1272_p1[4]),
        .I1(tmp_16_reg_1670[0]),
        .I2(tmp_16_reg_1670[1]),
        .I3(tmp_16_reg_1670[2]),
        .I4(\write_word_reg_1691[21]_i_3_n_0 ),
        .I5(select_ln252_2_fu_1364_p3),
        .O(write_word_fu_1386_p4[18]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \write_word_reg_1691[19]_i_1 
       (.I0(\write_word_reg_1691[19]_i_2_n_0 ),
        .I1(tmp_16_reg_1670[3]),
        .I2(\write_word_reg_1691[21]_i_3_n_0 ),
        .I3(select_ln252_2_fu_1364_p3),
        .O(write_word_fu_1386_p4[19]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \write_word_reg_1691[19]_i_2 
       (.I0(tmp_16_reg_1670[2]),
        .I1(sext_ln233_13_fu_1272_p1[4]),
        .I2(tmp_16_reg_1670[0]),
        .I3(tmp_16_reg_1670[1]),
        .O(\write_word_reg_1691[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h78FF7800)) 
    \write_word_reg_1691[1]_i_1 
       (.I0(tmp_s_reg_1606[0]),
        .I1(sext_ln233_3_fu_972_p1[4]),
        .I2(tmp_s_reg_1606[1]),
        .I3(\write_word_reg_1691[5]_i_3_n_0 ),
        .I4(select_ln252_fu_1064_p3),
        .O(write_word_fu_1386_p4[1]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \write_word_reg_1691[20]_i_1 
       (.I0(\write_word_reg_1691[20]_i_2_n_0 ),
        .I1(tmp_16_reg_1670[4]),
        .I2(\write_word_reg_1691[21]_i_3_n_0 ),
        .I3(select_ln252_2_fu_1364_p3),
        .O(write_word_fu_1386_p4[20]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \write_word_reg_1691[20]_i_2 
       (.I0(tmp_16_reg_1670[3]),
        .I1(tmp_16_reg_1670[1]),
        .I2(tmp_16_reg_1670[0]),
        .I3(sext_ln233_13_fu_1272_p1[4]),
        .I4(tmp_16_reg_1670[2]),
        .O(\write_word_reg_1691[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \write_word_reg_1691[21]_i_1 
       (.I0(\write_word_reg_1691[21]_i_2_n_0 ),
        .I1(tmp_16_reg_1670[5]),
        .I2(\write_word_reg_1691[21]_i_3_n_0 ),
        .I3(select_ln252_2_fu_1364_p3),
        .O(write_word_fu_1386_p4[21]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \write_word_reg_1691[21]_i_2 
       (.I0(tmp_16_reg_1670[4]),
        .I1(tmp_16_reg_1670[2]),
        .I2(sext_ln233_13_fu_1272_p1[4]),
        .I3(tmp_16_reg_1670[0]),
        .I4(tmp_16_reg_1670[1]),
        .I5(tmp_16_reg_1670[3]),
        .O(\write_word_reg_1691[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h4001)) 
    \write_word_reg_1691[21]_i_3 
       (.I0(cmp147_reg_1532_pp0_iter3_reg),
        .I1(tmp_16_reg_1670[9]),
        .I2(tmp_16_reg_1670[8]),
        .I3(\write_word_reg_1691[21]_i_5_n_0 ),
        .O(\write_word_reg_1691[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h4015)) 
    \write_word_reg_1691[21]_i_4 
       (.I0(cmp147_reg_1532_pp0_iter3_reg),
        .I1(\write_word_reg_1691[21]_i_5_n_0 ),
        .I2(tmp_16_reg_1670[8]),
        .I3(tmp_16_reg_1670[9]),
        .O(select_ln252_2_fu_1364_p3));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \write_word_reg_1691[21]_i_5 
       (.I0(tmp_16_reg_1670[7]),
        .I1(tmp_16_reg_1670[5]),
        .I2(\write_word_reg_1691[21]_i_2_n_0 ),
        .I3(tmp_16_reg_1670[6]),
        .O(\write_word_reg_1691[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0110111111111010)) 
    \write_word_reg_1691[22]_i_1 
       (.I0(cmp147_reg_1532_pp0_iter3_reg),
        .I1(tmp_16_reg_1670[9]),
        .I2(tmp_16_reg_1670[8]),
        .I3(tmp_16_reg_1670[7]),
        .I4(\write_word_reg_1691[22]_i_2_n_0 ),
        .I5(tmp_16_reg_1670[6]),
        .O(write_word_fu_1386_p4[22]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_word_reg_1691[22]_i_2 
       (.I0(tmp_16_reg_1670[5]),
        .I1(\write_word_reg_1691[21]_i_2_n_0 ),
        .O(\write_word_reg_1691[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01111110)) 
    \write_word_reg_1691[23]_i_1 
       (.I0(cmp147_reg_1532_pp0_iter3_reg),
        .I1(tmp_16_reg_1670[9]),
        .I2(tmp_16_reg_1670[8]),
        .I3(tmp_16_reg_1670[7]),
        .I4(\write_word_reg_1691[23]_i_2_n_0 ),
        .O(write_word_fu_1386_p4[23]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \write_word_reg_1691[23]_i_2 
       (.I0(tmp_16_reg_1670[6]),
        .I1(\write_word_reg_1691[21]_i_2_n_0 ),
        .I2(tmp_16_reg_1670[5]),
        .O(\write_word_reg_1691[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F80FFFF7F800000)) 
    \write_word_reg_1691[2]_i_1 
       (.I0(sext_ln233_3_fu_972_p1[4]),
        .I1(tmp_s_reg_1606[0]),
        .I2(tmp_s_reg_1606[1]),
        .I3(tmp_s_reg_1606[2]),
        .I4(\write_word_reg_1691[5]_i_3_n_0 ),
        .I5(select_ln252_fu_1064_p3),
        .O(write_word_fu_1386_p4[2]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \write_word_reg_1691[3]_i_1 
       (.I0(\write_word_reg_1691[3]_i_2_n_0 ),
        .I1(tmp_s_reg_1606[3]),
        .I2(\write_word_reg_1691[5]_i_3_n_0 ),
        .I3(select_ln252_fu_1064_p3),
        .O(write_word_fu_1386_p4[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \write_word_reg_1691[3]_i_2 
       (.I0(tmp_s_reg_1606[2]),
        .I1(sext_ln233_3_fu_972_p1[4]),
        .I2(tmp_s_reg_1606[0]),
        .I3(tmp_s_reg_1606[1]),
        .O(\write_word_reg_1691[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \write_word_reg_1691[4]_i_1 
       (.I0(\write_word_reg_1691[4]_i_2_n_0 ),
        .I1(tmp_s_reg_1606[4]),
        .I2(\write_word_reg_1691[5]_i_3_n_0 ),
        .I3(select_ln252_fu_1064_p3),
        .O(write_word_fu_1386_p4[4]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \write_word_reg_1691[4]_i_2 
       (.I0(tmp_s_reg_1606[3]),
        .I1(tmp_s_reg_1606[1]),
        .I2(tmp_s_reg_1606[0]),
        .I3(sext_ln233_3_fu_972_p1[4]),
        .I4(tmp_s_reg_1606[2]),
        .O(\write_word_reg_1691[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \write_word_reg_1691[5]_i_1 
       (.I0(\write_word_reg_1691[5]_i_2_n_0 ),
        .I1(tmp_s_reg_1606[5]),
        .I2(\write_word_reg_1691[5]_i_3_n_0 ),
        .I3(select_ln252_fu_1064_p3),
        .O(write_word_fu_1386_p4[5]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \write_word_reg_1691[5]_i_2 
       (.I0(tmp_s_reg_1606[4]),
        .I1(tmp_s_reg_1606[2]),
        .I2(sext_ln233_3_fu_972_p1[4]),
        .I3(tmp_s_reg_1606[0]),
        .I4(tmp_s_reg_1606[1]),
        .I5(tmp_s_reg_1606[3]),
        .O(\write_word_reg_1691[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h4001)) 
    \write_word_reg_1691[5]_i_3 
       (.I0(cmp147_reg_1532_pp0_iter3_reg),
        .I1(tmp_s_reg_1606[9]),
        .I2(tmp_s_reg_1606[8]),
        .I3(\write_word_reg_1691[5]_i_5_n_0 ),
        .O(\write_word_reg_1691[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h4015)) 
    \write_word_reg_1691[5]_i_4 
       (.I0(cmp147_reg_1532_pp0_iter3_reg),
        .I1(\write_word_reg_1691[5]_i_5_n_0 ),
        .I2(tmp_s_reg_1606[8]),
        .I3(tmp_s_reg_1606[9]),
        .O(select_ln252_fu_1064_p3));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \write_word_reg_1691[5]_i_5 
       (.I0(tmp_s_reg_1606[7]),
        .I1(tmp_s_reg_1606[5]),
        .I2(\write_word_reg_1691[5]_i_2_n_0 ),
        .I3(tmp_s_reg_1606[6]),
        .O(\write_word_reg_1691[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0110111111111010)) 
    \write_word_reg_1691[6]_i_1 
       (.I0(cmp147_reg_1532_pp0_iter3_reg),
        .I1(tmp_s_reg_1606[9]),
        .I2(tmp_s_reg_1606[8]),
        .I3(tmp_s_reg_1606[7]),
        .I4(\write_word_reg_1691[6]_i_2_n_0 ),
        .I5(tmp_s_reg_1606[6]),
        .O(write_word_fu_1386_p4[6]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_word_reg_1691[6]_i_2 
       (.I0(tmp_s_reg_1606[5]),
        .I1(\write_word_reg_1691[5]_i_2_n_0 ),
        .O(\write_word_reg_1691[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01111110)) 
    \write_word_reg_1691[7]_i_1 
       (.I0(cmp147_reg_1532_pp0_iter3_reg),
        .I1(tmp_s_reg_1606[9]),
        .I2(tmp_s_reg_1606[8]),
        .I3(tmp_s_reg_1606[7]),
        .I4(\write_word_reg_1691[7]_i_2_n_0 ),
        .O(write_word_fu_1386_p4[7]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \write_word_reg_1691[7]_i_2 
       (.I0(tmp_s_reg_1606[6]),
        .I1(\write_word_reg_1691[5]_i_2_n_0 ),
        .I2(tmp_s_reg_1606[5]),
        .O(\write_word_reg_1691[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \write_word_reg_1691[8]_i_1 
       (.I0(tmp_10_reg_1638[0]),
        .I1(sext_ln233_8_fu_1122_p1[4]),
        .I2(\write_word_reg_1691[13]_i_3_n_0 ),
        .I3(select_ln252_1_fu_1214_p3),
        .O(write_word_fu_1386_p4[8]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h78FF7800)) 
    \write_word_reg_1691[9]_i_1 
       (.I0(tmp_10_reg_1638[0]),
        .I1(sext_ln233_8_fu_1122_p1[4]),
        .I2(tmp_10_reg_1638[1]),
        .I3(\write_word_reg_1691[13]_i_3_n_0 ),
        .I4(select_ln252_1_fu_1214_p3),
        .O(write_word_fu_1386_p4[9]));
  FDRE \write_word_reg_1691_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[0]),
        .Q(\write_word_reg_1691_reg[23]_0 [0]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[10] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[10]),
        .Q(\write_word_reg_1691_reg[23]_0 [10]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[11] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[11]),
        .Q(\write_word_reg_1691_reg[23]_0 [11]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[12] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[12]),
        .Q(\write_word_reg_1691_reg[23]_0 [12]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[13] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[13]),
        .Q(\write_word_reg_1691_reg[23]_0 [13]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[14] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[14]),
        .Q(\write_word_reg_1691_reg[23]_0 [14]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[15] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[15]),
        .Q(\write_word_reg_1691_reg[23]_0 [15]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[16] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[16]),
        .Q(\write_word_reg_1691_reg[23]_0 [16]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[17] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[17]),
        .Q(\write_word_reg_1691_reg[23]_0 [17]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[18] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[18]),
        .Q(\write_word_reg_1691_reg[23]_0 [18]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[19] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[19]),
        .Q(\write_word_reg_1691_reg[23]_0 [19]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[1]),
        .Q(\write_word_reg_1691_reg[23]_0 [1]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[20] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[20]),
        .Q(\write_word_reg_1691_reg[23]_0 [20]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[21] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[21]),
        .Q(\write_word_reg_1691_reg[23]_0 [21]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[22] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[22]),
        .Q(\write_word_reg_1691_reg[23]_0 [22]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[23] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[23]),
        .Q(\write_word_reg_1691_reg[23]_0 [23]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[2]),
        .Q(\write_word_reg_1691_reg[23]_0 [2]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[3]),
        .Q(\write_word_reg_1691_reg[23]_0 [3]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[4]),
        .Q(\write_word_reg_1691_reg[23]_0 [4]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[5]),
        .Q(\write_word_reg_1691_reg[23]_0 [5]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[6]),
        .Q(\write_word_reg_1691_reg[23]_0 [6]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[7]),
        .Q(\write_word_reg_1691_reg[23]_0 [7]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[8]),
        .Q(\write_word_reg_1691_reg[23]_0 [8]),
        .R(1'b0));
  FDRE \write_word_reg_1691_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(write_word_fu_1386_p4[9]),
        .Q(\write_word_reg_1691_reg[23]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "quantizationdithering_accel_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1" *) 
module broncho_video_quantizationditherin_0_0_quantizationdithering_accel_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1
   (D,
    grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg,
    ap_done_cache_reg,
    ADDRARDADDR,
    grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg_0,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg,
    Q,
    tmp_3_reg_1527_pp0_iter3_reg,
    icmp_ln130_fu_178_p2_carry__0_0);
  output [0:0]D;
  output grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg;
  output [1:0]ap_done_cache_reg;
  output [9:0]ADDRARDADDR;
  output grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg_0;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg;
  input [2:0]Q;
  input [9:0]tmp_3_reg_1527_pp0_iter3_reg;
  input [15:0]icmp_ln130_fu_178_p2_carry__0_0;

  wire [9:0]ADDRARDADDR;
  wire [0:0]D;
  wire [2:0]Q;
  wire [15:1]add_ln130_fu_184_p2;
  wire add_ln130_fu_184_p2_carry__0_n_0;
  wire add_ln130_fu_184_p2_carry__0_n_1;
  wire add_ln130_fu_184_p2_carry__0_n_2;
  wire add_ln130_fu_184_p2_carry__0_n_3;
  wire add_ln130_fu_184_p2_carry__1_n_0;
  wire add_ln130_fu_184_p2_carry__1_n_1;
  wire add_ln130_fu_184_p2_carry__1_n_2;
  wire add_ln130_fu_184_p2_carry__1_n_3;
  wire add_ln130_fu_184_p2_carry__2_n_2;
  wire add_ln130_fu_184_p2_carry__2_n_3;
  wire add_ln130_fu_184_p2_carry_n_0;
  wire add_ln130_fu_184_p2_carry_n_1;
  wire add_ln130_fu_184_p2_carry_n_2;
  wire add_ln130_fu_184_p2_carry_n_3;
  wire ap_clk;
  wire [1:0]ap_done_cache_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire col_index_fu_52;
  wire \col_index_fu_52_reg_n_0_[0] ;
  wire \col_index_fu_52_reg_n_0_[10] ;
  wire \col_index_fu_52_reg_n_0_[11] ;
  wire \col_index_fu_52_reg_n_0_[12] ;
  wire \col_index_fu_52_reg_n_0_[13] ;
  wire \col_index_fu_52_reg_n_0_[14] ;
  wire \col_index_fu_52_reg_n_0_[15] ;
  wire \col_index_fu_52_reg_n_0_[1] ;
  wire \col_index_fu_52_reg_n_0_[2] ;
  wire \col_index_fu_52_reg_n_0_[3] ;
  wire \col_index_fu_52_reg_n_0_[4] ;
  wire \col_index_fu_52_reg_n_0_[5] ;
  wire \col_index_fu_52_reg_n_0_[6] ;
  wire \col_index_fu_52_reg_n_0_[7] ;
  wire \col_index_fu_52_reg_n_0_[8] ;
  wire \col_index_fu_52_reg_n_0_[9] ;
  wire flow_control_loop_pipe_sequential_init_U_n_0;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire flow_control_loop_pipe_sequential_init_U_n_16;
  wire flow_control_loop_pipe_sequential_init_U_n_17;
  wire flow_control_loop_pipe_sequential_init_U_n_18;
  wire flow_control_loop_pipe_sequential_init_U_n_29;
  wire flow_control_loop_pipe_sequential_init_U_n_30;
  wire flow_control_loop_pipe_sequential_init_U_n_31;
  wire flow_control_loop_pipe_sequential_init_U_n_32;
  wire flow_control_loop_pipe_sequential_init_U_n_33;
  wire flow_control_loop_pipe_sequential_init_U_n_34;
  wire flow_control_loop_pipe_sequential_init_U_n_35;
  wire flow_control_loop_pipe_sequential_init_U_n_36;
  wire grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg;
  wire grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg;
  wire grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg_0;
  wire [9:0]grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1;
  wire icmp_ln130_fu_178_p21_in;
  wire [15:0]icmp_ln130_fu_178_p2_carry__0_0;
  wire icmp_ln130_fu_178_p2_carry__0_n_3;
  wire icmp_ln130_fu_178_p2_carry_n_0;
  wire icmp_ln130_fu_178_p2_carry_n_1;
  wire icmp_ln130_fu_178_p2_carry_n_2;
  wire icmp_ln130_fu_178_p2_carry_n_3;
  wire [9:0]tmp_3_reg_1527_pp0_iter3_reg;
  wire [3:2]NLW_add_ln130_fu_184_p2_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_ln130_fu_184_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln130_fu_178_p2_carry_O_UNCONNECTED;
  wire [3:2]NLW_icmp_ln130_fu_178_p2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln130_fu_178_p2_carry__0_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln130_fu_184_p2_carry
       (.CI(1'b0),
        .CO({add_ln130_fu_184_p2_carry_n_0,add_ln130_fu_184_p2_carry_n_1,add_ln130_fu_184_p2_carry_n_2,add_ln130_fu_184_p2_carry_n_3}),
        .CYINIT(flow_control_loop_pipe_sequential_init_U_n_36),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln130_fu_184_p2[4:1]),
        .S(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1[3:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln130_fu_184_p2_carry__0
       (.CI(add_ln130_fu_184_p2_carry_n_0),
        .CO({add_ln130_fu_184_p2_carry__0_n_0,add_ln130_fu_184_p2_carry__0_n_1,add_ln130_fu_184_p2_carry__0_n_2,add_ln130_fu_184_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln130_fu_184_p2[8:5]),
        .S(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln130_fu_184_p2_carry__1
       (.CI(add_ln130_fu_184_p2_carry__0_n_0),
        .CO({add_ln130_fu_184_p2_carry__1_n_0,add_ln130_fu_184_p2_carry__1_n_1,add_ln130_fu_184_p2_carry__1_n_2,add_ln130_fu_184_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln130_fu_184_p2[12:9]),
        .S({flow_control_loop_pipe_sequential_init_U_n_29,flow_control_loop_pipe_sequential_init_U_n_30,grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1[9:8]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln130_fu_184_p2_carry__2
       (.CI(add_ln130_fu_184_p2_carry__1_n_0),
        .CO({NLW_add_ln130_fu_184_p2_carry__2_CO_UNCONNECTED[3:2],add_ln130_fu_184_p2_carry__2_n_2,add_ln130_fu_184_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_add_ln130_fu_184_p2_carry__2_O_UNCONNECTED[3],add_ln130_fu_184_p2[15:13]}),
        .S({1'b0,flow_control_loop_pipe_sequential_init_U_n_33,flow_control_loop_pipe_sequential_init_U_n_34,flow_control_loop_pipe_sequential_init_U_n_35}));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[0] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(D),
        .Q(\col_index_fu_52_reg_n_0_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[10] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[10]),
        .Q(\col_index_fu_52_reg_n_0_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[11] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[11]),
        .Q(\col_index_fu_52_reg_n_0_[11] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[12] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[12]),
        .Q(\col_index_fu_52_reg_n_0_[12] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[13] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[13]),
        .Q(\col_index_fu_52_reg_n_0_[13] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[14] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[14]),
        .Q(\col_index_fu_52_reg_n_0_[14] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[15] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[15]),
        .Q(\col_index_fu_52_reg_n_0_[15] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[1] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[1]),
        .Q(\col_index_fu_52_reg_n_0_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[2] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[2]),
        .Q(\col_index_fu_52_reg_n_0_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[3] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[3]),
        .Q(\col_index_fu_52_reg_n_0_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[4] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[4]),
        .Q(\col_index_fu_52_reg_n_0_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[5] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[5]),
        .Q(\col_index_fu_52_reg_n_0_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[6] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[6]),
        .Q(\col_index_fu_52_reg_n_0_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[7] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[7]),
        .Q(\col_index_fu_52_reg_n_0_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[8] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[8]),
        .Q(\col_index_fu_52_reg_n_0_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \col_index_fu_52_reg[9] 
       (.C(ap_clk),
        .CE(col_index_fu_52),
        .D(add_ln130_fu_184_p2[9]),
        .Q(\col_index_fu_52_reg_n_0_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_0));
  broncho_video_quantizationditherin_0_0_quantizationdithering_accel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.ADDRARDADDR(ADDRARDADDR),
        .CO(icmp_ln130_fu_178_p21_in),
        .D(D),
        .E(col_index_fu_52),
        .Q(Q),
        .S({flow_control_loop_pipe_sequential_init_U_n_15,flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17,flow_control_loop_pipe_sequential_init_U_n_18}),
        .SR(flow_control_loop_pipe_sequential_init_U_n_0),
        .ap_clk(ap_clk),
        .ap_done_cache_reg_0(ap_done_cache_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\col_index_fu_52_reg[0] (flow_control_loop_pipe_sequential_init_U_n_36),
        .\col_index_fu_52_reg[12] ({flow_control_loop_pipe_sequential_init_U_n_29,flow_control_loop_pipe_sequential_init_U_n_30}),
        .\col_index_fu_52_reg[15] ({flow_control_loop_pipe_sequential_init_U_n_33,flow_control_loop_pipe_sequential_init_U_n_34,flow_control_loop_pipe_sequential_init_U_n_35}),
        .\col_index_fu_52_reg[15]_0 ({\col_index_fu_52_reg_n_0_[15] ,\col_index_fu_52_reg_n_0_[14] ,\col_index_fu_52_reg_n_0_[13] ,\col_index_fu_52_reg_n_0_[12] ,\col_index_fu_52_reg_n_0_[11] ,\col_index_fu_52_reg_n_0_[10] ,\col_index_fu_52_reg_n_0_[9] ,\col_index_fu_52_reg_n_0_[8] ,\col_index_fu_52_reg_n_0_[7] ,\col_index_fu_52_reg_n_0_[6] ,\col_index_fu_52_reg_n_0_[5] ,\col_index_fu_52_reg_n_0_[4] ,\col_index_fu_52_reg_n_0_[3] ,\col_index_fu_52_reg_n_0_[2] ,\col_index_fu_52_reg_n_0_[1] ,\col_index_fu_52_reg_n_0_[0] }),
        .grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg),
        .grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg),
        .grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg_0(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_ap_start_reg_reg_0),
        .grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1(grp_xf_QuatizationDithering_Pipeline_VITIS_LOOP_130_1_fu_86_offset_buffer_address1),
        .icmp_ln130_fu_178_p2_carry__0(icmp_ln130_fu_178_p2_carry__0_0),
        .tmp_3_reg_1527_pp0_iter3_reg(tmp_3_reg_1527_pp0_iter3_reg),
        .\width_reg_156_reg[15] ({flow_control_loop_pipe_sequential_init_U_n_31,flow_control_loop_pipe_sequential_init_U_n_32}));
  CARRY4 icmp_ln130_fu_178_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln130_fu_178_p2_carry_n_0,icmp_ln130_fu_178_p2_carry_n_1,icmp_ln130_fu_178_p2_carry_n_2,icmp_ln130_fu_178_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln130_fu_178_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_15,flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17,flow_control_loop_pipe_sequential_init_U_n_18}));
  CARRY4 icmp_ln130_fu_178_p2_carry__0
       (.CI(icmp_ln130_fu_178_p2_carry_n_0),
        .CO({NLW_icmp_ln130_fu_178_p2_carry__0_CO_UNCONNECTED[3:2],icmp_ln130_fu_178_p21_in,icmp_ln130_fu_178_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln130_fu_178_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,flow_control_loop_pipe_sequential_init_U_n_31,flow_control_loop_pipe_sequential_init_U_n_32}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
