// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Dec 13 11:15:35 2023
// Host        : DESKTOP-1T2E61L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top broncho_video_select_input_0_0 -prefix
//               broncho_video_select_input_0_0_ broncho_video_select_input_0_0_sim_netlist.v
// Design      : broncho_video_select_input_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "broncho_video_select_input_0_0,select_input,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "select_input,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module broncho_video_select_input_0_0
   (video_in,
    si,
    video_out);
  input [9:0]video_in;
  input [1:0]si;
  output [7:0]video_out;

  wire [1:0]si;
  wire [9:0]video_in;
  wire [7:0]video_out;
  wire \video_out[5]_INST_0_i_1_n_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFEAC86240)) 
    \video_out[0]_INST_0 
       (.I0(si[1]),
        .I1(si[0]),
        .I2(video_in[0]),
        .I3(video_in[1]),
        .I4(video_in[2]),
        .I5(\video_out[5]_INST_0_i_1_n_0 ),
        .O(video_out[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAC86240)) 
    \video_out[1]_INST_0 
       (.I0(si[1]),
        .I1(si[0]),
        .I2(video_in[1]),
        .I3(video_in[2]),
        .I4(video_in[3]),
        .I5(\video_out[5]_INST_0_i_1_n_0 ),
        .O(video_out[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAC86240)) 
    \video_out[2]_INST_0 
       (.I0(si[1]),
        .I1(si[0]),
        .I2(video_in[2]),
        .I3(video_in[3]),
        .I4(video_in[4]),
        .I5(\video_out[5]_INST_0_i_1_n_0 ),
        .O(video_out[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAC86240)) 
    \video_out[3]_INST_0 
       (.I0(si[1]),
        .I1(si[0]),
        .I2(video_in[3]),
        .I3(video_in[4]),
        .I4(video_in[5]),
        .I5(\video_out[5]_INST_0_i_1_n_0 ),
        .O(video_out[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAC86240)) 
    \video_out[4]_INST_0 
       (.I0(si[1]),
        .I1(si[0]),
        .I2(video_in[4]),
        .I3(video_in[5]),
        .I4(video_in[6]),
        .I5(\video_out[5]_INST_0_i_1_n_0 ),
        .O(video_out[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAC86240)) 
    \video_out[5]_INST_0 
       (.I0(si[1]),
        .I1(si[0]),
        .I2(video_in[5]),
        .I3(video_in[6]),
        .I4(video_in[7]),
        .I5(\video_out[5]_INST_0_i_1_n_0 ),
        .O(video_out[5]));
  LUT4 #(
    .INIT(16'h0CE0)) 
    \video_out[5]_INST_0_i_1 
       (.I0(video_in[8]),
        .I1(video_in[9]),
        .I2(si[0]),
        .I3(si[1]),
        .O(\video_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFC3C3CFCCC3808)) 
    \video_out[6]_INST_0 
       (.I0(video_in[6]),
        .I1(si[0]),
        .I2(si[1]),
        .I3(video_in[7]),
        .I4(video_in[8]),
        .I5(video_in[9]),
        .O(video_out[6]));
  LUT5 #(
    .INIT(32'hFCFC3C20)) 
    \video_out[7]_INST_0 
       (.I0(video_in[7]),
        .I1(si[1]),
        .I2(si[0]),
        .I3(video_in[8]),
        .I4(video_in[9]),
        .O(video_out[7]));
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
