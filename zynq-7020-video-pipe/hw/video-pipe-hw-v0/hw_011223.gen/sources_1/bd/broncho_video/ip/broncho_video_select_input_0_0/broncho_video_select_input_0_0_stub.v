// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Dec 13 11:15:35 2023
// Host        : DESKTOP-1T2E61L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top broncho_video_select_input_0_0 -prefix
//               broncho_video_select_input_0_0_ broncho_video_select_input_0_0_stub.v
// Design      : broncho_video_select_input_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "select_input,Vivado 2023.2" *)
module broncho_video_select_input_0_0(video_in, si, video_out)
/* synthesis syn_black_box black_box_pad_pin="video_in[9:0],si[1:0],video_out[7:0]" */;
  input [9:0]video_in;
  input [1:0]si;
  output [7:0]video_out;
endmodule
