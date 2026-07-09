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
  parameter width = 1)(
  // Outputs
  output reg [width-1:0] dat_s2,
  // Inputs
  input clk, 
  input reset_n, 
  input [width-1:0] dat
);

reg [width-1:0] dat_s1;

always @(posedge clk or negedge reset_n) begin
  if (~reset_n) begin
    dat_s1 <= {width{1'b0}};
    dat_s2 <= {width{1'b0}}; 
  end
  else begin
    dat_s1 <= dat;
    dat_s2 <= dat_s1;
  end
end

endmodule
