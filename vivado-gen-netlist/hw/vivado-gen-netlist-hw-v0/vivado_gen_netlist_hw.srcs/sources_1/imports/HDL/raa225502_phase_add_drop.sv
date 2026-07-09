`timescale 1ns/1ps

// Phase Add/Drop Rev 1.0

module raa225502_phase_add_drop (
  // Outputs
  output logic [6:0] en_phase,
  output logic       clk_req,
  input  logic       clk,
  input  logic       rstn,
  input  logic [7:0] phase_dis,
  input  logic       force_1ph,
  input  logic       rst_ph_timers, 
  input  logic       maxph_trig1, 
  input  logic       maxph_trig2, 
  input  logic       maxph_trig3, 
  input  logic       maxph_trig4, 
  input  logic       maxph_trig5, 
  input  logic       imon_ph_add,
  input  logic       imon_ph_drop,
  input  logic [2:0] IMON_ADD_BLNK_TIME_R, 
  input  logic [2:0] IMON_DROP_BLNK_TIME_R, 
  input  logic       dis_maxph_trig1,
  input  logic       dis_maxph_trig2,
  input  logic       dis_maxph_trig3,
  input  logic       dis_maxph_trig4,
  input  logic       dis_maxph_trig5,
  input  logic       dis_imon_ph_add,
  input  logic       dis_imon_ph_drop,
  input  logic       ph_override, 
  input  logic [2:0] run_ph_override,
  input  logic       scan_mode,
  input  logic       scan_clk,
  input  logic       scan_en,
  input  logic       scan_reset,
  input  logic       scan_in,
  output logic       scan_out
);

logic       clk_scan;
logic [6:0] max_phase;
logic       rstn_s2;
logic       clk_req_rstn;
logic [6:0] run_ph_override_dec;
logic [6:0] IMON_ADD_BLNK_TIME;
logic [9:0] IMON_DROP_BLNK_TIME;
logic       force_maxph_async;
logic       force_maxph_s1;
logic       force_maxph_s2; 
logic       force_1ph_s2;
logic       clk_req_force_1ph;
logic       rst_ph_timers_s2;
logic       clk_req_rst_ph_timers;
logic       imon_ph_add_s2;
logic       clk_req_imon_ph_add;
logic       imon_ph_add_masked;
logic       imon_ph_drop_s2;
logic       clk_req_imon_ph_drop;
logic       imon_ph_drop_masked;
logic [6:0] imon_add_ph_timer;
logic [9:0] imon_drop_ph_timer;
logic       imon_add_ph_timer_done;
logic       imon_drop_ph_timer_done;
logic       timer_clk_req;
logic [6:0] run_ph;
logic       rst_timers;
logic [6:0] en_phase_int;
logic [1:0] drop_timer_en_cnt;

////////////////
// Misc Logic //
////////////////

clk_mux	mux_scan_clk (.Z(clk_scan), .I0(clk), .I1(scan_clk), .S(scan_mode));

assign max_phase = ~phase_dis[7:1];

////////////////
// Reset sync //
////////////////

raa225502_sync sync_reset_i1 (
  .dat_s2(rstn_s2),
  // Inputs
  .clk(clk_scan), 
  .reset_n(rstn), 
  .dat(1'b1),
  .oEnClk_async(clk_req_rstn)
);

//////////////////
// Timer Decode //
//////////////////

always_comb 
  case (IMON_ADD_BLNK_TIME_R)
    3'd0: IMON_ADD_BLNK_TIME = 7'h40;  // 250ns @ 32MHz Clk
    3'd1: IMON_ADD_BLNK_TIME = 7'h04;  // 375ns @ 32MHz Clk
    3'd2: IMON_ADD_BLNK_TIME = 7'h30;  // 500ns @ 32MHz Clk
    3'd3: IMON_ADD_BLNK_TIME = 7'h14;  // 750ns @ 32MHz Clk
    3'd4: IMON_ADD_BLNK_TIME = 7'h0F;  // 1us @ 32MHz Clk
    3'd5: IMON_ADD_BLNK_TIME = 7'h70;  // 2us @ 32MHz Clk
    3'd6: IMON_ADD_BLNK_TIME = 7'h23;  // 3us @ 32MHz Clk
    3'd7: IMON_ADD_BLNK_TIME = 7'h3F;  // 4us @ 32MHz Clk
  endcase
	
always_comb 
  case (IMON_DROP_BLNK_TIME_R)
    3'd0: IMON_DROP_BLNK_TIME = 10'h311;  // 1us @ 2us Pulse
    3'd1: IMON_DROP_BLNK_TIME = 10'h226;  // 2us @ 2us Pulse 
    3'd2: IMON_DROP_BLNK_TIME = 10'h208;  // 3us @ 2us Pulse
    3'd3: IMON_DROP_BLNK_TIME = 10'h006;  // 5us @ 2us Pulse 
    3'd4: IMON_DROP_BLNK_TIME = 10'h2AD;  // 7us @ 2us Pulse 
    //3'd5: IMON_DROP_BLNK_TIME = 10'h077;  // 10us @ 2us Pulse 
    3'd5: IMON_DROP_BLNK_TIME = 10'h37F;  // 10us @ 2us Pulse 
    3'd6: IMON_DROP_BLNK_TIME = 10'h0B8;  // 15us @ 2us Pulse 
    3'd7: IMON_DROP_BLNK_TIME = 10'h14E;  // 20us @ 2us Pulse 
  endcase 

////////////////////////////////////////
// Max Phase Async Assert, Sync Reset //
////////////////////////////////////////

assign force_maxph_async = ~rstn |
                           (maxph_trig1 & !dis_maxph_trig1) | 
                           (maxph_trig2 & !dis_maxph_trig2) | 
                           (maxph_trig3 & !dis_maxph_trig3) | 
                           (maxph_trig4 & !dis_maxph_trig4) | 
                           (maxph_trig5 & !dis_maxph_trig5);

always_ff @(posedge clk_scan or posedge force_maxph_async) begin
  if (force_maxph_async) begin
    force_maxph_s1  <= 1'b1;
    force_maxph_s2 <= 1'b1;
  end
  else begin
    force_maxph_s1  <= 1'b0;
    force_maxph_s2 <= force_maxph_s1;
  end
end
  
///////////////////
// Synchronizers //
///////////////////

raa225502_sync sync_force_1ph_i1(
 .dat_s2(force_1ph_s2),
 .clk(clk_scan),
 .reset_n(rstn_s2),
 .dat(force_1ph),
 .oEnClk_async(clk_req_force_1ph)
);

raa225502_sync sync_rst_ph_timers_i1(
 .dat_s2(rst_ph_timers_s2),
 .clk(clk_scan),
 .reset_n(rstn_s2),
 .dat(rst_ph_timers),
 .oEnClk_async(clk_req_rst_ph_timers)
);

raa225502_sync sync_imon_ph_add_i1(
 .dat_s2(imon_ph_add_s2),
 .clk(clk_scan),
 .reset_n(rstn_s2),
 .dat(imon_ph_add),
 .oEnClk_async(clk_req_imon_ph_add)
);

assign imon_ph_add_masked = imon_ph_add_s2 & ~dis_imon_ph_add;

raa225502_sync sync_imon_ph_drop_i1(
 .dat_s2(imon_ph_drop_s2),
 .clk(clk_scan),
 .reset_n(rstn_s2),
 .dat(imon_ph_drop),
 .oEnClk_async(clk_req_imon_ph_drop)
);

assign imon_ph_drop_masked = imon_ph_drop_s2 & ~dis_imon_ph_drop;

//////////////////////////
// Imon Add/Drop Timers //
//////////////////////////

always_ff @(posedge clk_scan or posedge force_maxph_s2) begin
  if (force_maxph_s2) 
    imon_add_ph_timer <= 7'h7F;
  else if (rst_timers)
    imon_add_ph_timer <= 7'h7F;
  else if (imon_add_ph_timer_done)
    imon_add_ph_timer <= imon_add_ph_timer;
  else
    imon_add_ph_timer <= {imon_add_ph_timer[0],
                          imon_add_ph_timer[0]^imon_add_ph_timer[6],
                          imon_add_ph_timer[5:1]};
end

always_ff @(posedge clk_scan) begin
  drop_timer_en_cnt[0] <= ~drop_timer_en_cnt[0] & rstn_s2;
end

always_ff @(posedge clk_scan or negedge rstn_s2) begin
  if (!rstn_s2)
    drop_timer_en_cnt[1] <= 1'b0;
  else
    drop_timer_en_cnt[1] <= ^drop_timer_en_cnt;
end

assign drop_timer_en = &drop_timer_en_cnt;

always_ff @(posedge clk_scan or posedge force_maxph_s2) begin
  if (force_maxph_s2) 
    imon_drop_ph_timer <= 10'h3FF;
  else if (rst_timers)
    imon_drop_ph_timer <= 10'h3FF;
  else if (imon_drop_ph_timer_done)
    imon_drop_ph_timer <= imon_drop_ph_timer;
  else if (drop_timer_en)
    imon_drop_ph_timer <= {imon_drop_ph_timer[0],
                           imon_drop_ph_timer[9:8],
                           imon_drop_ph_timer[0]^imon_drop_ph_timer[7],
                           imon_drop_ph_timer[6:1]};
  else 
    imon_drop_ph_timer <= imon_drop_ph_timer;
end

assign imon_add_ph_timer_done = (imon_add_ph_timer == IMON_ADD_BLNK_TIME);
assign imon_drop_ph_timer_done = (imon_drop_ph_timer == IMON_DROP_BLNK_TIME);
assign timer_clk_req = !(imon_add_ph_timer_done & imon_drop_ph_timer_done);
                                                            
///////////////////
// Phase Control //
///////////////////

always_ff @(posedge clk_scan or posedge force_maxph_s2) begin
  if (force_maxph_s2) begin
    run_ph     <= 7'h7F;
    rst_timers <= 1'b1; 
  end 
  else if (imon_ph_add_masked && (en_phase_int < max_phase) && imon_add_ph_timer_done && !rst_timers) begin
    run_ph     <= {en_phase_int[5:0],1'b1}; 
    rst_timers <= 1'b1;
  end 
  else if (imon_ph_drop_masked && |en_phase_int && ~imon_ph_add_masked && imon_drop_ph_timer_done && !rst_timers) begin
    run_ph     <= en_phase_int >> 1; 
    rst_timers <= 1'b1;
  end 
  else if (rst_ph_timers_s2) begin
    run_ph     <= en_phase_int; 
    rst_timers <= 1'b1;
  end 
  else begin
    run_ph     <= en_phase_int; 
    rst_timers <= 1'b0;
  end
end

//////////////////////////////
// Output Mask and Override //
//////////////////////////////

always_comb 
  case (run_ph_override)
    3'b000: run_ph_override_dec = 7'b0000000;
    3'b001: run_ph_override_dec = 7'b0000001;
    3'b010: run_ph_override_dec = 7'b0000011; 
    3'b011: run_ph_override_dec = 7'b0000111;
    3'b100: run_ph_override_dec = 7'b0001111;
    3'b101: run_ph_override_dec = 7'b0011111;
    3'b110: run_ph_override_dec = 7'b0111111; 
    3'b111: run_ph_override_dec = 7'b1111111;
  endcase

assign en_phase_int = run_ph & max_phase & {7{~force_1ph_s2}};
assign en_phase = ph_override ? run_ph_override_dec : en_phase_int;

/////////////////
// Clk Request //
/////////////////

assign clk_req = clk_req_rstn | clk_req_force_1ph | clk_req_rst_ph_timers |
                 clk_req_imon_ph_add | clk_req_imon_ph_drop | rst_timers |
                 timer_clk_req;

endmodule          

