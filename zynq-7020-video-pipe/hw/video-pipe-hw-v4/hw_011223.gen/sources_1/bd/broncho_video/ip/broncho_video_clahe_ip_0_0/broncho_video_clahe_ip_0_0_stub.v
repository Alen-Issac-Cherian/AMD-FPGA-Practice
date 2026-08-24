// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Dec 22 10:47:56 2023
// Host        : DESKTOP-1T2E61L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               g:/Project-Workspace/zynq-7020-video-pipe-3/hw/video-pipe-hw-v4/hw_011223.gen/sources_1/bd/broncho_video/ip/broncho_video_clahe_ip_0_0/broncho_video_clahe_ip_0_0_stub.v
// Design      : broncho_video_clahe_ip_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "clahe_ip,Vivado 2023.2" *)
module broncho_video_clahe_ip_0_0(IPCORE_CLK, IPCORE_RESETN, 
  AXI4_Stream_Video_0_Master_TREADY, AXI4_Stream_Video_0_Slave_TDATA, 
  AXI4_Stream_Video_0_Slave_TVALID, AXI4_Stream_Video_0_Slave_TLAST, 
  AXI4_Stream_Video_0_Slave_TUSER, AXI4_Master_0_Rd_RDATA, AXI4_Master_0_Rd_RLAST, 
  AXI4_Master_0_Rd_RVALID, AXI4_Master_0_Rd_RID, AXI4_Master_0_Rd_RRESP, 
  AXI4_Master_0_Rd_ARREADY, AXI4_Master_0_Wr_AWREADY, AXI4_Master_0_Wr_WREADY, 
  AXI4_Master_0_Wr_BID, AXI4_Master_0_Wr_BRESP, AXI4_Master_0_Wr_BVALID, AXI4_Lite_ACLK, 
  AXI4_Lite_ARESETN, AXI4_Lite_AWADDR, AXI4_Lite_AWVALID, AXI4_Lite_WDATA, AXI4_Lite_WSTRB, 
  AXI4_Lite_WVALID, AXI4_Lite_BREADY, AXI4_Lite_ARADDR, AXI4_Lite_ARVALID, 
  AXI4_Lite_RREADY, AXI4_Stream_Video_0_Master_TDATA, 
  AXI4_Stream_Video_0_Master_TVALID, AXI4_Stream_Video_0_Master_TLAST, 
  AXI4_Stream_Video_0_Master_TUSER, AXI4_Stream_Video_0_Slave_TREADY, 
  AXI4_Master_0_Rd_ARID, AXI4_Master_0_Rd_ARADDR, AXI4_Master_0_Rd_ARLEN, 
  AXI4_Master_0_Rd_ARSIZE, AXI4_Master_0_Rd_ARBURST, AXI4_Master_0_Rd_ARLOCK, 
  AXI4_Master_0_Rd_ARCACHE, AXI4_Master_0_Rd_ARPROT, AXI4_Master_0_Rd_ARVALID, 
  AXI4_Master_0_Rd_RREADY, AXI4_Master_0_Wr_AWID, AXI4_Master_0_Wr_AWADDR, 
  AXI4_Master_0_Wr_AWLEN, AXI4_Master_0_Wr_AWSIZE, AXI4_Master_0_Wr_AWBURST, 
  AXI4_Master_0_Wr_AWLOCK, AXI4_Master_0_Wr_AWCACHE, AXI4_Master_0_Wr_AWPROT, 
  AXI4_Master_0_Wr_AWVALID, AXI4_Master_0_Wr_WDATA, AXI4_Master_0_Wr_WSTRB, 
  AXI4_Master_0_Wr_WLAST, AXI4_Master_0_Wr_WVALID, AXI4_Master_0_Wr_BREADY, 
  wr_valid_debug, rd_valid_debug, wfifo_ready, rfifo_ready, AXI4_Lite_AWREADY, 
  AXI4_Lite_WREADY, AXI4_Lite_BRESP, AXI4_Lite_BVALID, AXI4_Lite_ARREADY, AXI4_Lite_RDATA, 
  AXI4_Lite_RRESP, AXI4_Lite_RVALID)
/* synthesis syn_black_box black_box_pad_pin="IPCORE_RESETN,AXI4_Stream_Video_0_Master_TREADY,AXI4_Stream_Video_0_Slave_TDATA[15:0],AXI4_Stream_Video_0_Slave_TVALID,AXI4_Stream_Video_0_Slave_TLAST,AXI4_Stream_Video_0_Slave_TUSER,AXI4_Master_0_Rd_RDATA[31:0],AXI4_Master_0_Rd_RLAST,AXI4_Master_0_Rd_RVALID,AXI4_Master_0_Rd_RID,AXI4_Master_0_Rd_RRESP[1:0],AXI4_Master_0_Rd_ARREADY,AXI4_Master_0_Wr_AWREADY,AXI4_Master_0_Wr_WREADY,AXI4_Master_0_Wr_BID,AXI4_Master_0_Wr_BRESP[1:0],AXI4_Master_0_Wr_BVALID,AXI4_Lite_ARESETN,AXI4_Lite_AWADDR[15:0],AXI4_Lite_AWVALID,AXI4_Lite_WDATA[31:0],AXI4_Lite_WSTRB[3:0],AXI4_Lite_WVALID,AXI4_Lite_BREADY,AXI4_Lite_ARADDR[15:0],AXI4_Lite_ARVALID,AXI4_Lite_RREADY,AXI4_Stream_Video_0_Master_TDATA[15:0],AXI4_Stream_Video_0_Master_TVALID,AXI4_Stream_Video_0_Master_TLAST,AXI4_Stream_Video_0_Master_TUSER,AXI4_Stream_Video_0_Slave_TREADY,AXI4_Master_0_Rd_ARID,AXI4_Master_0_Rd_ARADDR[31:0],AXI4_Master_0_Rd_ARLEN[7:0],AXI4_Master_0_Rd_ARSIZE[2:0],AXI4_Master_0_Rd_ARBURST[1:0],AXI4_Master_0_Rd_ARLOCK,AXI4_Master_0_Rd_ARCACHE[3:0],AXI4_Master_0_Rd_ARPROT[2:0],AXI4_Master_0_Rd_ARVALID,AXI4_Master_0_Rd_RREADY,AXI4_Master_0_Wr_AWID,AXI4_Master_0_Wr_AWADDR[31:0],AXI4_Master_0_Wr_AWLEN[7:0],AXI4_Master_0_Wr_AWSIZE[2:0],AXI4_Master_0_Wr_AWBURST[1:0],AXI4_Master_0_Wr_AWLOCK,AXI4_Master_0_Wr_AWCACHE[3:0],AXI4_Master_0_Wr_AWPROT[2:0],AXI4_Master_0_Wr_AWVALID,AXI4_Master_0_Wr_WDATA[31:0],AXI4_Master_0_Wr_WSTRB[3:0],AXI4_Master_0_Wr_WLAST,AXI4_Master_0_Wr_WVALID,AXI4_Master_0_Wr_BREADY,wr_valid_debug,rd_valid_debug,wfifo_ready,rfifo_ready,AXI4_Lite_AWREADY,AXI4_Lite_WREADY,AXI4_Lite_BRESP[1:0],AXI4_Lite_BVALID,AXI4_Lite_ARREADY,AXI4_Lite_RDATA[31:0],AXI4_Lite_RRESP[1:0],AXI4_Lite_RVALID" */
/* synthesis syn_force_seq_prim="IPCORE_CLK" */
/* synthesis syn_force_seq_prim="AXI4_Lite_ACLK" */;
  input IPCORE_CLK /* synthesis syn_isclock = 1 */;
  input IPCORE_RESETN;
  input AXI4_Stream_Video_0_Master_TREADY;
  input [15:0]AXI4_Stream_Video_0_Slave_TDATA;
  input AXI4_Stream_Video_0_Slave_TVALID;
  input AXI4_Stream_Video_0_Slave_TLAST;
  input AXI4_Stream_Video_0_Slave_TUSER;
  input [31:0]AXI4_Master_0_Rd_RDATA;
  input AXI4_Master_0_Rd_RLAST;
  input AXI4_Master_0_Rd_RVALID;
  input AXI4_Master_0_Rd_RID;
  input [1:0]AXI4_Master_0_Rd_RRESP;
  input AXI4_Master_0_Rd_ARREADY;
  input AXI4_Master_0_Wr_AWREADY;
  input AXI4_Master_0_Wr_WREADY;
  input AXI4_Master_0_Wr_BID;
  input [1:0]AXI4_Master_0_Wr_BRESP;
  input AXI4_Master_0_Wr_BVALID;
  input AXI4_Lite_ACLK /* synthesis syn_isclock = 1 */;
  input AXI4_Lite_ARESETN;
  input [15:0]AXI4_Lite_AWADDR;
  input AXI4_Lite_AWVALID;
  input [31:0]AXI4_Lite_WDATA;
  input [3:0]AXI4_Lite_WSTRB;
  input AXI4_Lite_WVALID;
  input AXI4_Lite_BREADY;
  input [15:0]AXI4_Lite_ARADDR;
  input AXI4_Lite_ARVALID;
  input AXI4_Lite_RREADY;
  output [15:0]AXI4_Stream_Video_0_Master_TDATA;
  output AXI4_Stream_Video_0_Master_TVALID;
  output AXI4_Stream_Video_0_Master_TLAST;
  output AXI4_Stream_Video_0_Master_TUSER;
  output AXI4_Stream_Video_0_Slave_TREADY;
  output AXI4_Master_0_Rd_ARID;
  output [31:0]AXI4_Master_0_Rd_ARADDR;
  output [7:0]AXI4_Master_0_Rd_ARLEN;
  output [2:0]AXI4_Master_0_Rd_ARSIZE;
  output [1:0]AXI4_Master_0_Rd_ARBURST;
  output AXI4_Master_0_Rd_ARLOCK;
  output [3:0]AXI4_Master_0_Rd_ARCACHE;
  output [2:0]AXI4_Master_0_Rd_ARPROT;
  output AXI4_Master_0_Rd_ARVALID;
  output AXI4_Master_0_Rd_RREADY;
  output AXI4_Master_0_Wr_AWID;
  output [31:0]AXI4_Master_0_Wr_AWADDR;
  output [7:0]AXI4_Master_0_Wr_AWLEN;
  output [2:0]AXI4_Master_0_Wr_AWSIZE;
  output [1:0]AXI4_Master_0_Wr_AWBURST;
  output AXI4_Master_0_Wr_AWLOCK;
  output [3:0]AXI4_Master_0_Wr_AWCACHE;
  output [2:0]AXI4_Master_0_Wr_AWPROT;
  output AXI4_Master_0_Wr_AWVALID;
  output [31:0]AXI4_Master_0_Wr_WDATA;
  output [3:0]AXI4_Master_0_Wr_WSTRB;
  output AXI4_Master_0_Wr_WLAST;
  output AXI4_Master_0_Wr_WVALID;
  output AXI4_Master_0_Wr_BREADY;
  output wr_valid_debug;
  output rd_valid_debug;
  output wfifo_ready;
  output rfifo_ready;
  output AXI4_Lite_AWREADY;
  output AXI4_Lite_WREADY;
  output [1:0]AXI4_Lite_BRESP;
  output AXI4_Lite_BVALID;
  output AXI4_Lite_ARREADY;
  output [31:0]AXI4_Lite_RDATA;
  output [1:0]AXI4_Lite_RRESP;
  output AXI4_Lite_RVALID;
endmodule
