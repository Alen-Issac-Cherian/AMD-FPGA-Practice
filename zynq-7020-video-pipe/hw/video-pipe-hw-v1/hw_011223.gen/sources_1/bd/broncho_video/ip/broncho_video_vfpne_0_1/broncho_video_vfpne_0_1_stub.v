// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Dec 15 11:29:57 2023
// Host        : DESKTOP-1T2E61L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               g:/Project-Workspace/zynq-7020-video-pipe-3/hw/video-pipe-hw-v1/hw_011223.gen/sources_1/bd/broncho_video/ip/broncho_video_vfpne_0_1/broncho_video_vfpne_0_1_stub.v
// Design      : broncho_video_vfpne_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vfpne,Vivado 2023.2" *)
module broncho_video_vfpne_0_1(arst_n, p_clk_in, p_data_in, p_de_in, p_vsync_in, 
  compute, p_clk_out, p_data_out, p_de_out, p_vsync_out, done, output_select, skip_count, lram_dps)
/* synthesis syn_black_box black_box_pad_pin="arst_n,p_data_in[9:0],p_de_in,p_vsync_in,compute,p_data_out[9:0],p_de_out,p_vsync_out,done,output_select[1:0],skip_count[3:0],lram_dps[1:0]" */
/* synthesis syn_force_seq_prim="p_clk_in" */
/* synthesis syn_force_seq_prim="p_clk_out" */;
  input arst_n;
  input p_clk_in /* synthesis syn_isclock = 1 */;
  input [9:0]p_data_in;
  input p_de_in;
  input p_vsync_in;
  input compute;
  output p_clk_out /* synthesis syn_isclock = 1 */;
  output [9:0]p_data_out;
  output p_de_out;
  output p_vsync_out;
  output done;
  input [1:0]output_select;
  input [3:0]skip_count;
  input [1:0]lram_dps;
endmodule
