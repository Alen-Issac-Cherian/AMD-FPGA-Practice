// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Dec 27 17:00:49 2023
// Host        : hp-HP-Pavilion-Laptop-14-ec0xxx running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/alen/repo/zynq-7020-video-pipe-3/hw/video-pipe-hw-v5/hw_011223.gen/sources_1/bd/broncho_video/ip/broncho_video_vio_2_0/broncho_video_vio_2_0_stub.v
// Design      : broncho_video_vio_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2023.2" *)
module broncho_video_vio_2_0(clk, probe_in0, probe_in1, probe_in2, probe_in3, 
  probe_in4, probe_in5, probe_in6, probe_out0, probe_out1)
/* synthesis syn_black_box black_box_pad_pin="probe_in0[9:0],probe_in1[0:0],probe_in2[0:0],probe_in3[9:0],probe_in4[0:0],probe_in5[0:0],probe_in6[0:0],probe_out0[0:0],probe_out1[1:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [9:0]probe_in0;
  input [0:0]probe_in1;
  input [0:0]probe_in2;
  input [9:0]probe_in3;
  input [0:0]probe_in4;
  input [0:0]probe_in5;
  input [0:0]probe_in6;
  output [0:0]probe_out0;
  output [1:0]probe_out1;
endmodule
