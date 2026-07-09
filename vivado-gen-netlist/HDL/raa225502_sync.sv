////////////////////////////////////////////////////////////
//
// Module raa225502_sync.v
//
// (c) Copyright 2018, Renesas Electronics 
// All rights reserved
//
// This file is confidential and proprietary product of
// Intersil Corporation.
//
// Any unauthorized use, reproduction or transfer of this
// code is strictly prohibited.
//
// Function: Generic 2 flop synchronizer
//
// IO:
//   Outputs
//     dat_s2: Synchronized data
//   Inputs
//     clk: Synchronizing clock
//     reset_n: Power-On Reset
//     dat: Asynchronous data
//
// Assumptions: 
//
// Revision History:
//
// Author: Jackson Carroll (jackson.carroll.wm@renesas.com)
//
///////////////////////////////////////////////////////////

module raa225502_sync #(
  parameter width = 1,
  parameter reset_val = 1'b0)(
  // Outputs
  output reg [width-1:0] dat_s2,
  output oEnClk_async,
  // Inputs
  input clk, 
  input reset_n, 
  input [width-1:0] dat
);

reg [width-1:0] dat_s1;
wire [width-1:0] idat;

//genvar x;

`ifdef RTL_SIM
// synopsys translate_off
// lint_checking BADSYS UEASTR off
import type_spmi::*;
reg [width-1:0] dat_flopped;
reg randomise;
always @(posedge clk or negedge reset_n) begin
  if (!reset_n) dat_flopped <= 0;
  else          dat_flopped <= dat;
end

always @(dat) begin
  //randomise = $random();
  randomise = rand_1bit();
end
assign idat = randomise ? dat_flopped : dat;
// lint_checking BADSYS UEASTR on
// synopsys translate_on
`else
assign idat = dat;
`endif


always @(posedge clk or negedge reset_n) begin
  if (!reset_n) begin
    dat_s1 <= {width{reset_val}};
    dat_s2 <= {width{reset_val}}; 
  end
  else begin
    dat_s1 <= idat;
    dat_s2 <= dat_s1;
  end
end

assign oEnClk_async = |(dat_s2^dat);

// assign oEnClk_async = ({dat_s2,dat_s1,idat} != 3'b000) & ({dat_s2,dat_s1,idat} != 3'b111);  //Signal to enable clock when input changes (must be synchronised itself)

//generate
//for (x=0; x<width; x=x+1) begin : genEnClkAsync
//  assign oEnClk_async[x] = ({dat_s2[x],dat_s1[x],idat[x]} != 3'b000) & ({dat_s2[x],dat_s1[x],idat[x]} != 3'b111);  //Signal to enable clock when input changes (must be synchronised itself)
//end
//endgenerate

endmodule
