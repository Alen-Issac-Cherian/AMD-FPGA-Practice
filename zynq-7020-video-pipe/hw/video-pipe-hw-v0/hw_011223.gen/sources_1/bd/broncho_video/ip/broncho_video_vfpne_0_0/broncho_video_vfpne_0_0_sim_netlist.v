// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Dec 15 18:38:25 2023
// Host        : DESKTOP-1T2E61L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/Project-Workspace/zynq-7020-video-pipe-3/hw/video-pipe-hw-v0/hw_011223.gen/sources_1/bd/broncho_video/ip/broncho_video_vfpne_0_0/broncho_video_vfpne_0_0_sim_netlist.v
// Design      : broncho_video_vfpne_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "broncho_video_vfpne_0_0,vfpne,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "vfpne,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module broncho_video_vfpne_0_0
   (arst_n,
    p_clk_in,
    p_data_in,
    p_de_in,
    p_vsync_in,
    compute,
    p_clk_out,
    p_data_out,
    p_de_out,
    p_vsync_out,
    done,
    output_select,
    skip_count,
    lram_dps);
  input arst_n;
  input p_clk_in;
  input [9:0]p_data_in;
  input p_de_in;
  input p_vsync_in;
  input compute;
  output p_clk_out;
  output [9:0]p_data_out;
  output p_de_out;
  output p_vsync_out;
  output done;
  input [1:0]output_select;
  input [3:0]skip_count;
  input [1:0]lram_dps;

  wire arst_n;
  wire compute;
  wire done;
  wire p_clk_in;
  wire [9:0]p_data_in;
  wire [9:0]p_data_out;
  wire p_de_in;
  wire p_de_out;
  wire p_vsync_in;
  wire p_vsync_out;
  wire [3:0]skip_count;

  assign p_clk_out = p_clk_in;
  broncho_video_vfpne_0_0_vfpne inst
       (.arst_n(arst_n),
        .compute(compute),
        .done_int_reg_0(done),
        .p_clk_in(p_clk_in),
        .p_data_in(p_data_in),
        .p_data_out(p_data_out),
        .p_de_in(p_de_in),
        .p_de_out(p_de_out),
        .p_vsync_in(p_vsync_in),
        .p_vsync_out(p_vsync_out),
        .skip_count(skip_count));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_0" *) (* X_CORE_INFO = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
module broncho_video_vfpne_0_0_blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* syn_isclock = "1" *) input clka;
  input ena;
  input [0:0]wea;
  input [16:0]addra;
  input [19:0]dina;
  (* syn_isclock = "1" *) input clkb;
  input enb;
  input [16:0]addrb;
  output [19:0]doutb;


endmodule

(* ORIG_REF_NAME = "vfpne" *) 
module broncho_video_vfpne_0_0_vfpne
   (p_de_out,
    done_int_reg_0,
    p_data_out,
    p_vsync_out,
    p_vsync_in,
    p_data_in,
    p_clk_in,
    compute,
    p_de_in,
    skip_count,
    arst_n);
  output p_de_out;
  output done_int_reg_0;
  output [9:0]p_data_out;
  output p_vsync_out;
  input p_vsync_in;
  input [9:0]p_data_in;
  input p_clk_in;
  input compute;
  input p_de_in;
  input [3:0]skip_count;
  input arst_n;

  wire \FSM_onehot_c_state[0]_i_1_n_0 ;
  wire \FSM_onehot_c_state[1]_i_1_n_0 ;
  wire \FSM_onehot_c_state[1]_i_2_n_0 ;
  wire \FSM_onehot_c_state[2]_i_1_n_0 ;
  wire \FSM_onehot_c_state[3]_i_1_n_0 ;
  wire \FSM_onehot_c_state[4]_i_1_n_0 ;
  wire \FSM_onehot_c_state[5]_i_1_n_0 ;
  wire \FSM_onehot_c_state[5]_i_3_n_0 ;
  wire \FSM_onehot_c_state[6]_i_1_n_0 ;
  wire \FSM_onehot_c_state[7]_i_1_n_0 ;
  wire \FSM_onehot_c_state_reg_n_0_[0] ;
  wire \FSM_onehot_c_state_reg_n_0_[1] ;
  wire \FSM_onehot_c_state_reg_n_0_[3] ;
  wire \FSM_onehot_c_state_reg_n_0_[5] ;
  wire \FSM_onehot_c_state_reg_n_0_[7] ;
  wire [10:19]L;
  wire LRAM_INST1_i_10_n_0;
  wire LRAM_INST1_i_11_n_0;
  wire LRAM_INST1_i_12_n_0;
  wire LRAM_INST1_i_13_n_0;
  wire LRAM_INST1_i_14_n_0;
  wire LRAM_INST1_i_15_n_0;
  wire LRAM_INST1_i_16_n_0;
  wire LRAM_INST1_i_17_n_0;
  wire LRAM_INST1_i_18_n_0;
  wire LRAM_INST1_i_19_n_0;
  wire LRAM_INST1_i_3_n_0;
  wire LRAM_INST1_i_41_n_0;
  wire LRAM_INST1_i_42_n_0;
  wire LRAM_INST1_i_43_n_0;
  wire LRAM_INST1_i_44_n_0;
  wire LRAM_INST1_i_45_n_0;
  wire LRAM_INST1_i_46_n_0;
  wire LRAM_INST1_i_47_n_0;
  wire LRAM_INST1_i_48_n_0;
  wire LRAM_INST1_i_49_n_0;
  wire LRAM_INST1_i_4_n_0;
  wire LRAM_INST1_i_50_n_0;
  wire LRAM_INST1_i_51_n_0;
  wire LRAM_INST1_i_52_n_0;
  wire LRAM_INST1_i_53_n_0;
  wire LRAM_INST1_i_54_n_0;
  wire LRAM_INST1_i_55_n_0;
  wire LRAM_INST1_i_56_n_0;
  wire LRAM_INST1_i_57_n_0;
  wire LRAM_INST1_i_5_n_0;
  wire LRAM_INST1_i_6_n_0;
  wire LRAM_INST1_i_7_n_0;
  wire LRAM_INST1_i_8_n_0;
  wire LRAM_INST1_i_9_n_0;
  wire arst_n;
  wire compute;
  wire compute_d;
  wire \data_d2[9]_i_1_n_0 ;
  wire [19:0]dina;
  wire done_int_i_1_n_0;
  wire done_int_reg_0;
  wire [9:0]frame_min;
  wire \frame_min[0]_i_1_n_0 ;
  wire \frame_min[1]_i_1_n_0 ;
  wire \frame_min[2]_i_1_n_0 ;
  wire \frame_min[3]_i_1_n_0 ;
  wire \frame_min[4]_i_1_n_0 ;
  wire \frame_min[5]_i_1_n_0 ;
  wire \frame_min[6]_i_1_n_0 ;
  wire \frame_min[7]_i_1_n_0 ;
  wire \frame_min[8]_i_1_n_0 ;
  wire \frame_min[9]_i_1_n_0 ;
  wire \frame_min[9]_i_2_n_0 ;
  wire frame_min_compute_clr_i_1_n_0;
  wire frame_min_compute_clr_reg_n_0;
  wire frame_min_compute_en_i_1_n_0;
  wire frame_min_compute_en_reg_n_0;
  wire gtOp;
  wire gtOp_carry__0_i_1_n_0;
  wire gtOp_carry__0_i_2_n_0;
  wire gtOp_carry_i_1_n_0;
  wire gtOp_carry_i_2_n_0;
  wire gtOp_carry_i_3_n_0;
  wire gtOp_carry_i_4_n_0;
  wire gtOp_carry_i_5_n_0;
  wire gtOp_carry_i_6_n_0;
  wire gtOp_carry_i_7_n_0;
  wire gtOp_carry_i_8_n_0;
  wire gtOp_carry_n_0;
  wire gtOp_carry_n_1;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire href_d;
  wire href_d2;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire in6;
  wire input_wr;
  wire input_wr_count;
  wire [3:0]input_wr_count_reg;
  wire input_wr_i_1_n_0;
  wire input_wr_reg_n_0;
  wire \minusOp_inferred__1/i__carry__0_n_0 ;
  wire \minusOp_inferred__1/i__carry__0_n_1 ;
  wire \minusOp_inferred__1/i__carry__0_n_2 ;
  wire \minusOp_inferred__1/i__carry__0_n_3 ;
  wire \minusOp_inferred__1/i__carry__0_n_4 ;
  wire \minusOp_inferred__1/i__carry__0_n_5 ;
  wire \minusOp_inferred__1/i__carry__0_n_6 ;
  wire \minusOp_inferred__1/i__carry__0_n_7 ;
  wire \minusOp_inferred__1/i__carry__1_n_0 ;
  wire \minusOp_inferred__1/i__carry__1_n_1 ;
  wire \minusOp_inferred__1/i__carry__1_n_2 ;
  wire \minusOp_inferred__1/i__carry__1_n_3 ;
  wire \minusOp_inferred__1/i__carry__1_n_4 ;
  wire \minusOp_inferred__1/i__carry__1_n_5 ;
  wire \minusOp_inferred__1/i__carry__1_n_6 ;
  wire \minusOp_inferred__1/i__carry__1_n_7 ;
  wire \minusOp_inferred__1/i__carry__2_n_0 ;
  wire \minusOp_inferred__1/i__carry__2_n_1 ;
  wire \minusOp_inferred__1/i__carry__2_n_2 ;
  wire \minusOp_inferred__1/i__carry__2_n_3 ;
  wire \minusOp_inferred__1/i__carry__2_n_4 ;
  wire \minusOp_inferred__1/i__carry__2_n_5 ;
  wire \minusOp_inferred__1/i__carry__2_n_6 ;
  wire \minusOp_inferred__1/i__carry__2_n_7 ;
  wire \minusOp_inferred__1/i__carry__3_n_1 ;
  wire \minusOp_inferred__1/i__carry__3_n_2 ;
  wire \minusOp_inferred__1/i__carry__3_n_3 ;
  wire \minusOp_inferred__1/i__carry__3_n_4 ;
  wire \minusOp_inferred__1/i__carry__3_n_5 ;
  wire \minusOp_inferred__1/i__carry__3_n_6 ;
  wire \minusOp_inferred__1/i__carry__3_n_7 ;
  wire \minusOp_inferred__1/i__carry_n_0 ;
  wire \minusOp_inferred__1/i__carry_n_1 ;
  wire \minusOp_inferred__1/i__carry_n_2 ;
  wire \minusOp_inferred__1/i__carry_n_3 ;
  wire \minusOp_inferred__1/i__carry_n_4 ;
  wire \minusOp_inferred__1/i__carry_n_5 ;
  wire \minusOp_inferred__1/i__carry_n_6 ;
  wire \minusOp_inferred__1/i__carry_n_7 ;
  wire p_clk_in;
  wire [9:0]p_data_in;
  wire [9:0]p_data_out;
  wire p_de_in;
  wire p_de_out;
  wire p_vsync_in;
  wire p_vsync_out;
  wire pattern_wr;
  wire pattern_wr_i_1_n_0;
  wire pattern_wr_reg_n_0;
  wire \pix_cnt[0]_i_1_n_0 ;
  wire \pix_cnt[0]_i_3_n_0 ;
  wire \pix_cnt[0]_i_4_n_0 ;
  wire \pix_cnt[0]_i_5_n_0 ;
  wire \pix_cnt[0]_i_6_n_0 ;
  wire \pix_cnt[0]_i_7_n_0 ;
  wire \pix_cnt[12]_i_2_n_0 ;
  wire \pix_cnt[12]_i_3_n_0 ;
  wire \pix_cnt[12]_i_4_n_0 ;
  wire \pix_cnt[12]_i_5_n_0 ;
  wire \pix_cnt[16]_i_2_n_0 ;
  wire \pix_cnt[4]_i_2_n_0 ;
  wire \pix_cnt[4]_i_3_n_0 ;
  wire \pix_cnt[4]_i_4_n_0 ;
  wire \pix_cnt[4]_i_5_n_0 ;
  wire \pix_cnt[8]_i_2_n_0 ;
  wire \pix_cnt[8]_i_3_n_0 ;
  wire \pix_cnt[8]_i_4_n_0 ;
  wire \pix_cnt[8]_i_5_n_0 ;
  wire \pix_cnt_2[0]_i_1_n_0 ;
  wire \pix_cnt_2[0]_i_3_n_0 ;
  wire \pix_cnt_2[0]_i_4_n_0 ;
  wire \pix_cnt_2[0]_i_5_n_0 ;
  wire \pix_cnt_2[0]_i_6_n_0 ;
  wire \pix_cnt_2[0]_i_7_n_0 ;
  wire \pix_cnt_2[12]_i_2_n_0 ;
  wire \pix_cnt_2[12]_i_3_n_0 ;
  wire \pix_cnt_2[12]_i_4_n_0 ;
  wire \pix_cnt_2[12]_i_5_n_0 ;
  wire \pix_cnt_2[16]_i_2_n_0 ;
  wire \pix_cnt_2[4]_i_2_n_0 ;
  wire \pix_cnt_2[4]_i_3_n_0 ;
  wire \pix_cnt_2[4]_i_4_n_0 ;
  wire \pix_cnt_2[4]_i_5_n_0 ;
  wire \pix_cnt_2[8]_i_2_n_0 ;
  wire \pix_cnt_2[8]_i_3_n_0 ;
  wire \pix_cnt_2[8]_i_4_n_0 ;
  wire \pix_cnt_2[8]_i_5_n_0 ;
  wire [16:0]pix_cnt_2_reg;
  wire \pix_cnt_2_reg[0]_i_2_n_0 ;
  wire \pix_cnt_2_reg[0]_i_2_n_1 ;
  wire \pix_cnt_2_reg[0]_i_2_n_2 ;
  wire \pix_cnt_2_reg[0]_i_2_n_3 ;
  wire \pix_cnt_2_reg[0]_i_2_n_4 ;
  wire \pix_cnt_2_reg[0]_i_2_n_5 ;
  wire \pix_cnt_2_reg[0]_i_2_n_6 ;
  wire \pix_cnt_2_reg[0]_i_2_n_7 ;
  wire \pix_cnt_2_reg[12]_i_1_n_0 ;
  wire \pix_cnt_2_reg[12]_i_1_n_1 ;
  wire \pix_cnt_2_reg[12]_i_1_n_2 ;
  wire \pix_cnt_2_reg[12]_i_1_n_3 ;
  wire \pix_cnt_2_reg[12]_i_1_n_4 ;
  wire \pix_cnt_2_reg[12]_i_1_n_5 ;
  wire \pix_cnt_2_reg[12]_i_1_n_6 ;
  wire \pix_cnt_2_reg[12]_i_1_n_7 ;
  wire \pix_cnt_2_reg[16]_i_1_n_7 ;
  wire \pix_cnt_2_reg[4]_i_1_n_0 ;
  wire \pix_cnt_2_reg[4]_i_1_n_1 ;
  wire \pix_cnt_2_reg[4]_i_1_n_2 ;
  wire \pix_cnt_2_reg[4]_i_1_n_3 ;
  wire \pix_cnt_2_reg[4]_i_1_n_4 ;
  wire \pix_cnt_2_reg[4]_i_1_n_5 ;
  wire \pix_cnt_2_reg[4]_i_1_n_6 ;
  wire \pix_cnt_2_reg[4]_i_1_n_7 ;
  wire \pix_cnt_2_reg[8]_i_1_n_0 ;
  wire \pix_cnt_2_reg[8]_i_1_n_1 ;
  wire \pix_cnt_2_reg[8]_i_1_n_2 ;
  wire \pix_cnt_2_reg[8]_i_1_n_3 ;
  wire \pix_cnt_2_reg[8]_i_1_n_4 ;
  wire \pix_cnt_2_reg[8]_i_1_n_5 ;
  wire \pix_cnt_2_reg[8]_i_1_n_6 ;
  wire \pix_cnt_2_reg[8]_i_1_n_7 ;
  wire pix_cnt_clr_i_1_n_0;
  wire pix_cnt_clr_i_2_n_0;
  wire pix_cnt_clr_i_3_n_0;
  wire pix_cnt_clr_i_4_n_0;
  wire pix_cnt_clr_reg_n_0;
  wire pix_cnt_en;
  wire pix_cnt_en_i_1_n_0;
  wire pix_cnt_en_i_2_n_0;
  wire pix_cnt_en_i_4_n_0;
  wire pix_cnt_en_reg_n_0;
  wire [16:0]pix_cnt_reg;
  wire \pix_cnt_reg[0]_i_2_n_0 ;
  wire \pix_cnt_reg[0]_i_2_n_1 ;
  wire \pix_cnt_reg[0]_i_2_n_2 ;
  wire \pix_cnt_reg[0]_i_2_n_3 ;
  wire \pix_cnt_reg[0]_i_2_n_4 ;
  wire \pix_cnt_reg[0]_i_2_n_5 ;
  wire \pix_cnt_reg[0]_i_2_n_6 ;
  wire \pix_cnt_reg[0]_i_2_n_7 ;
  wire \pix_cnt_reg[12]_i_1_n_0 ;
  wire \pix_cnt_reg[12]_i_1_n_1 ;
  wire \pix_cnt_reg[12]_i_1_n_2 ;
  wire \pix_cnt_reg[12]_i_1_n_3 ;
  wire \pix_cnt_reg[12]_i_1_n_4 ;
  wire \pix_cnt_reg[12]_i_1_n_5 ;
  wire \pix_cnt_reg[12]_i_1_n_6 ;
  wire \pix_cnt_reg[12]_i_1_n_7 ;
  wire \pix_cnt_reg[16]_i_1_n_7 ;
  wire \pix_cnt_reg[4]_i_1_n_0 ;
  wire \pix_cnt_reg[4]_i_1_n_1 ;
  wire \pix_cnt_reg[4]_i_1_n_2 ;
  wire \pix_cnt_reg[4]_i_1_n_3 ;
  wire \pix_cnt_reg[4]_i_1_n_4 ;
  wire \pix_cnt_reg[4]_i_1_n_5 ;
  wire \pix_cnt_reg[4]_i_1_n_6 ;
  wire \pix_cnt_reg[4]_i_1_n_7 ;
  wire \pix_cnt_reg[8]_i_1_n_0 ;
  wire \pix_cnt_reg[8]_i_1_n_1 ;
  wire \pix_cnt_reg[8]_i_1_n_2 ;
  wire \pix_cnt_reg[8]_i_1_n_3 ;
  wire \pix_cnt_reg[8]_i_1_n_4 ;
  wire \pix_cnt_reg[8]_i_1_n_5 ;
  wire \pix_cnt_reg[8]_i_1_n_6 ;
  wire \pix_cnt_reg[8]_i_1_n_7 ;
  wire pix_toggle;
  wire pix_toggle_i_1_n_0;
  wire [3:0]plusOp;
  wire ram1_rd_ck_en;
  wire [19:0]ram1_rdata;
  wire ram1_wr_ck_en;
  wire ram1_wr_en;
  wire [3:0]skip_count;
  wire vsync_d;
  wire zero_wr;
  wire zero_wr_i_1_n_0;
  wire zero_wr_reg_n_0;
  wire [3:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [3:1]NLW_gtOp_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_minusOp_inferred__1/i__carry__3_CO_UNCONNECTED ;
  wire [3:0]\NLW_pix_cnt_2_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_pix_cnt_2_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pix_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_pix_cnt_reg[16]_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFBAA)) 
    \FSM_onehot_c_state[0]_i_1 
       (.I0(\FSM_onehot_c_state_reg_n_0_[7] ),
        .I1(compute),
        .I2(compute_d),
        .I3(\FSM_onehot_c_state_reg_n_0_[0] ),
        .O(\FSM_onehot_c_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEECCCCEEFEEEEE)) 
    \FSM_onehot_c_state[1]_i_1 
       (.I0(\FSM_onehot_c_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_c_state[1]_i_2_n_0 ),
        .I2(input_wr),
        .I3(in6),
        .I4(vsync_d),
        .I5(p_vsync_in),
        .O(\FSM_onehot_c_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_c_state[1]_i_2 
       (.I0(\FSM_onehot_c_state_reg_n_0_[0] ),
        .I1(compute_d),
        .I2(compute),
        .O(\FSM_onehot_c_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF320)) 
    \FSM_onehot_c_state[2]_i_1 
       (.I0(\FSM_onehot_c_state_reg_n_0_[1] ),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .I3(zero_wr),
        .O(\FSM_onehot_c_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF320)) 
    \FSM_onehot_c_state[3]_i_1 
       (.I0(zero_wr),
        .I1(p_vsync_in),
        .I2(vsync_d),
        .I3(\FSM_onehot_c_state_reg_n_0_[3] ),
        .O(\FSM_onehot_c_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF320)) 
    \FSM_onehot_c_state[4]_i_1 
       (.I0(\FSM_onehot_c_state_reg_n_0_[3] ),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .I3(input_wr),
        .O(\FSM_onehot_c_state[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF0F0800)) 
    \FSM_onehot_c_state[5]_i_1 
       (.I0(in6),
        .I1(input_wr),
        .I2(p_vsync_in),
        .I3(vsync_d),
        .I4(\FSM_onehot_c_state_reg_n_0_[5] ),
        .O(\FSM_onehot_c_state[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \FSM_onehot_c_state[5]_i_2 
       (.I0(input_wr_count_reg[3]),
        .I1(skip_count[3]),
        .I2(\FSM_onehot_c_state[5]_i_3_n_0 ),
        .O(in6));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_onehot_c_state[5]_i_3 
       (.I0(input_wr_count_reg[0]),
        .I1(skip_count[0]),
        .I2(skip_count[2]),
        .I3(input_wr_count_reg[2]),
        .I4(skip_count[1]),
        .I5(input_wr_count_reg[1]),
        .O(\FSM_onehot_c_state[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF320)) 
    \FSM_onehot_c_state[6]_i_1 
       (.I0(\FSM_onehot_c_state_reg_n_0_[5] ),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .I3(pattern_wr),
        .O(\FSM_onehot_c_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_c_state[7]_i_1 
       (.I0(pattern_wr),
        .I1(p_vsync_in),
        .I2(vsync_d),
        .O(\FSM_onehot_c_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_c_state_reg[0] 
       (.C(p_clk_in),
        .CE(1'b1),
        .D(\FSM_onehot_c_state[0]_i_1_n_0 ),
        .PRE(\data_d2[9]_i_1_n_0 ),
        .Q(\FSM_onehot_c_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_state_reg[1] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\FSM_onehot_c_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_c_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_state_reg[2] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\FSM_onehot_c_state[2]_i_1_n_0 ),
        .Q(zero_wr));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_state_reg[3] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\FSM_onehot_c_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_c_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_state_reg[4] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\FSM_onehot_c_state[4]_i_1_n_0 ),
        .Q(input_wr));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_state_reg[5] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\FSM_onehot_c_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_c_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_state_reg[6] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\FSM_onehot_c_state[6]_i_1_n_0 ),
        .Q(pattern_wr));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_state_reg[7] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\FSM_onehot_c_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_c_state_reg_n_0_[7] ));
  (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
  broncho_video_vfpne_0_0_blk_mem_gen_0 LRAM_INST1
       (.addra({LRAM_INST1_i_3_n_0,LRAM_INST1_i_4_n_0,LRAM_INST1_i_5_n_0,LRAM_INST1_i_6_n_0,LRAM_INST1_i_7_n_0,LRAM_INST1_i_8_n_0,LRAM_INST1_i_9_n_0,LRAM_INST1_i_10_n_0,LRAM_INST1_i_11_n_0,LRAM_INST1_i_12_n_0,LRAM_INST1_i_13_n_0,LRAM_INST1_i_14_n_0,LRAM_INST1_i_15_n_0,LRAM_INST1_i_16_n_0,LRAM_INST1_i_17_n_0,LRAM_INST1_i_18_n_0,LRAM_INST1_i_19_n_0}),
        .addrb({LRAM_INST1_i_41_n_0,LRAM_INST1_i_42_n_0,LRAM_INST1_i_43_n_0,LRAM_INST1_i_44_n_0,LRAM_INST1_i_45_n_0,LRAM_INST1_i_46_n_0,LRAM_INST1_i_47_n_0,LRAM_INST1_i_48_n_0,LRAM_INST1_i_49_n_0,LRAM_INST1_i_50_n_0,LRAM_INST1_i_51_n_0,LRAM_INST1_i_52_n_0,LRAM_INST1_i_53_n_0,LRAM_INST1_i_54_n_0,LRAM_INST1_i_55_n_0,LRAM_INST1_i_56_n_0,LRAM_INST1_i_57_n_0}),
        .clka(p_clk_in),
        .clkb(p_clk_in),
        .dina(dina),
        .doutb(ram1_rdata),
        .ena(ram1_wr_ck_en),
        .enb(ram1_rd_ck_en),
        .wea(ram1_wr_en));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_1
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_toggle),
        .O(ram1_wr_ck_en));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_10
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[9]),
        .O(LRAM_INST1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_11
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[8]),
        .O(LRAM_INST1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_12
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[7]),
        .O(LRAM_INST1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_13
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[6]),
        .O(LRAM_INST1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_14
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[5]),
        .O(LRAM_INST1_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_15
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[4]),
        .O(LRAM_INST1_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_16
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[3]),
        .O(LRAM_INST1_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_17
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[2]),
        .O(LRAM_INST1_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_18
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[1]),
        .O(LRAM_INST1_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_19
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[0]),
        .O(LRAM_INST1_i_19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_2
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(p_de_in),
        .O(ram1_wr_en));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_20
       (.I0(\minusOp_inferred__1/i__carry__3_n_4 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(p_data_in[9]),
        .I4(zero_wr_reg_n_0),
        .O(dina[19]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_21
       (.I0(\minusOp_inferred__1/i__carry__3_n_5 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(p_data_in[8]),
        .I4(zero_wr_reg_n_0),
        .O(dina[18]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_22
       (.I0(\minusOp_inferred__1/i__carry__3_n_6 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(p_data_in[7]),
        .I4(zero_wr_reg_n_0),
        .O(dina[17]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_23
       (.I0(\minusOp_inferred__1/i__carry__3_n_7 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(p_data_in[6]),
        .I4(zero_wr_reg_n_0),
        .O(dina[16]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_24
       (.I0(\minusOp_inferred__1/i__carry__2_n_4 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(p_data_in[5]),
        .I4(zero_wr_reg_n_0),
        .O(dina[15]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_25
       (.I0(\minusOp_inferred__1/i__carry__2_n_5 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(p_data_in[4]),
        .I4(zero_wr_reg_n_0),
        .O(dina[14]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_26
       (.I0(\minusOp_inferred__1/i__carry__2_n_6 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(p_data_in[3]),
        .I4(zero_wr_reg_n_0),
        .O(dina[13]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_27
       (.I0(\minusOp_inferred__1/i__carry__2_n_7 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(p_data_in[2]),
        .I4(zero_wr_reg_n_0),
        .O(dina[12]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_28
       (.I0(\minusOp_inferred__1/i__carry__1_n_4 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(p_data_in[1]),
        .I4(zero_wr_reg_n_0),
        .O(dina[11]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_29
       (.I0(\minusOp_inferred__1/i__carry__1_n_5 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(p_data_in[0]),
        .I4(zero_wr_reg_n_0),
        .O(dina[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_3
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[16]),
        .O(LRAM_INST1_i_3_n_0));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_30
       (.I0(\minusOp_inferred__1/i__carry__1_n_6 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(L[10]),
        .I4(zero_wr_reg_n_0),
        .O(dina[9]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_31
       (.I0(\minusOp_inferred__1/i__carry__1_n_7 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(L[11]),
        .I4(zero_wr_reg_n_0),
        .O(dina[8]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_32
       (.I0(\minusOp_inferred__1/i__carry__0_n_4 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(L[12]),
        .I4(zero_wr_reg_n_0),
        .O(dina[7]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_33
       (.I0(\minusOp_inferred__1/i__carry__0_n_5 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(L[13]),
        .I4(zero_wr_reg_n_0),
        .O(dina[6]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_34
       (.I0(\minusOp_inferred__1/i__carry__0_n_6 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(L[14]),
        .I4(zero_wr_reg_n_0),
        .O(dina[5]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_35
       (.I0(\minusOp_inferred__1/i__carry__0_n_7 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(L[15]),
        .I4(zero_wr_reg_n_0),
        .O(dina[4]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_36
       (.I0(\minusOp_inferred__1/i__carry_n_4 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(L[16]),
        .I4(zero_wr_reg_n_0),
        .O(dina[3]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_37
       (.I0(\minusOp_inferred__1/i__carry_n_5 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(L[17]),
        .I4(zero_wr_reg_n_0),
        .O(dina[2]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_38
       (.I0(\minusOp_inferred__1/i__carry_n_6 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(L[18]),
        .I4(zero_wr_reg_n_0),
        .O(dina[1]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    LRAM_INST1_i_39
       (.I0(\minusOp_inferred__1/i__carry_n_7 ),
        .I1(pattern_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(L[19]),
        .I4(zero_wr_reg_n_0),
        .O(dina[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_4
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[15]),
        .O(LRAM_INST1_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_40
       (.I0(done_int_reg_0),
        .I1(p_de_in),
        .O(ram1_rd_ck_en));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_41
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[16]),
        .O(LRAM_INST1_i_41_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_42
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[15]),
        .O(LRAM_INST1_i_42_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_43
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[14]),
        .O(LRAM_INST1_i_43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_44
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[13]),
        .O(LRAM_INST1_i_44_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_45
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[12]),
        .O(LRAM_INST1_i_45_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_46
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[11]),
        .O(LRAM_INST1_i_46_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_47
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[10]),
        .O(LRAM_INST1_i_47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_48
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[9]),
        .O(LRAM_INST1_i_48_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_49
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[8]),
        .O(LRAM_INST1_i_49_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_5
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[14]),
        .O(LRAM_INST1_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_50
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[7]),
        .O(LRAM_INST1_i_50_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_51
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[6]),
        .O(LRAM_INST1_i_51_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_52
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[5]),
        .O(LRAM_INST1_i_52_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_53
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[4]),
        .O(LRAM_INST1_i_53_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_54
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[3]),
        .O(LRAM_INST1_i_54_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_55
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[2]),
        .O(LRAM_INST1_i_55_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_56
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[1]),
        .O(LRAM_INST1_i_56_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_57
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[0]),
        .O(LRAM_INST1_i_57_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_6
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[13]),
        .O(LRAM_INST1_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_7
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[12]),
        .O(LRAM_INST1_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_8
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[11]),
        .O(LRAM_INST1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_9
       (.I0(pattern_wr_reg_n_0),
        .I1(input_wr_reg_n_0),
        .I2(zero_wr_reg_n_0),
        .I3(pix_cnt_reg[10]),
        .O(LRAM_INST1_i_9_n_0));
  FDCE compute_d_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(compute),
        .Q(compute_d));
  LUT1 #(
    .INIT(2'h1)) 
    \data_d2[9]_i_1 
       (.I0(arst_n),
        .O(\data_d2[9]_i_1_n_0 ));
  FDCE \data_d2_reg[0] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(L[19]),
        .Q(p_data_out[0]));
  FDCE \data_d2_reg[1] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(L[18]),
        .Q(p_data_out[1]));
  FDCE \data_d2_reg[2] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(L[17]),
        .Q(p_data_out[2]));
  FDCE \data_d2_reg[3] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(L[16]),
        .Q(p_data_out[3]));
  FDCE \data_d2_reg[4] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(L[15]),
        .Q(p_data_out[4]));
  FDCE \data_d2_reg[5] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(L[14]),
        .Q(p_data_out[5]));
  FDCE \data_d2_reg[6] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(L[13]),
        .Q(p_data_out[6]));
  FDCE \data_d2_reg[7] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(L[12]),
        .Q(p_data_out[7]));
  FDCE \data_d2_reg[8] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(L[11]),
        .Q(p_data_out[8]));
  FDCE \data_d2_reg[9] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(L[10]),
        .Q(p_data_out[9]));
  FDCE \data_d_reg[0] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(p_data_in[0]),
        .Q(L[19]));
  FDCE \data_d_reg[1] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(p_data_in[1]),
        .Q(L[18]));
  FDCE \data_d_reg[2] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(p_data_in[2]),
        .Q(L[17]));
  FDCE \data_d_reg[3] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(p_data_in[3]),
        .Q(L[16]));
  FDCE \data_d_reg[4] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(p_data_in[4]),
        .Q(L[15]));
  FDCE \data_d_reg[5] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(p_data_in[5]),
        .Q(L[14]));
  FDCE \data_d_reg[6] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(p_data_in[6]),
        .Q(L[13]));
  FDCE \data_d_reg[7] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(p_data_in[7]),
        .Q(L[12]));
  FDCE \data_d_reg[8] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(p_data_in[8]),
        .Q(L[11]));
  FDCE \data_d_reg[9] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(p_data_in[9]),
        .Q(L[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFBFFAAAA)) 
    done_int_i_1
       (.I0(\FSM_onehot_c_state_reg_n_0_[7] ),
        .I1(compute),
        .I2(compute_d),
        .I3(\FSM_onehot_c_state_reg_n_0_[0] ),
        .I4(done_int_reg_0),
        .O(done_int_i_1_n_0));
  FDCE done_int_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(done_int_i_1_n_0),
        .Q(done_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[0]_i_1 
       (.I0(p_data_in[0]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[1]_i_1 
       (.I0(p_data_in[1]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[2]_i_1 
       (.I0(p_data_in[2]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[3]_i_1 
       (.I0(p_data_in[3]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[4]_i_1 
       (.I0(p_data_in[4]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[5]_i_1 
       (.I0(p_data_in[5]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[6]_i_1 
       (.I0(p_data_in[6]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[7]_i_1 
       (.I0(p_data_in[7]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[8]_i_1 
       (.I0(p_data_in[8]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \frame_min[9]_i_1 
       (.I0(frame_min_compute_clr_reg_n_0),
        .I1(p_de_in),
        .I2(gtOp),
        .I3(frame_min_compute_en_reg_n_0),
        .O(\frame_min[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[9]_i_2 
       (.I0(p_data_in[9]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF2F0F2FFF2F0F2F0)) 
    frame_min_compute_clr_i_1
       (.I0(compute),
        .I1(compute_d),
        .I2(\FSM_onehot_c_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_c_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_c_state_reg_n_0_[3] ),
        .I5(frame_min_compute_clr_reg_n_0),
        .O(frame_min_compute_clr_i_1_n_0));
  FDCE frame_min_compute_clr_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(frame_min_compute_clr_i_1_n_0),
        .Q(frame_min_compute_clr_reg_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    frame_min_compute_en_i_1
       (.I0(\FSM_onehot_c_state[4]_i_1_n_0 ),
        .I1(input_wr),
        .I2(\FSM_onehot_c_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_c_state_reg_n_0_[1] ),
        .I4(zero_wr),
        .I5(frame_min_compute_en_reg_n_0),
        .O(frame_min_compute_en_i_1_n_0));
  FDCE frame_min_compute_en_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(frame_min_compute_en_i_1_n_0),
        .Q(frame_min_compute_en_reg_n_0));
  FDPE \frame_min_reg[0] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[0]_i_1_n_0 ),
        .PRE(\data_d2[9]_i_1_n_0 ),
        .Q(frame_min[0]));
  FDPE \frame_min_reg[1] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[1]_i_1_n_0 ),
        .PRE(\data_d2[9]_i_1_n_0 ),
        .Q(frame_min[1]));
  FDPE \frame_min_reg[2] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[2]_i_1_n_0 ),
        .PRE(\data_d2[9]_i_1_n_0 ),
        .Q(frame_min[2]));
  FDPE \frame_min_reg[3] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[3]_i_1_n_0 ),
        .PRE(\data_d2[9]_i_1_n_0 ),
        .Q(frame_min[3]));
  FDPE \frame_min_reg[4] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[4]_i_1_n_0 ),
        .PRE(\data_d2[9]_i_1_n_0 ),
        .Q(frame_min[4]));
  FDPE \frame_min_reg[5] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[5]_i_1_n_0 ),
        .PRE(\data_d2[9]_i_1_n_0 ),
        .Q(frame_min[5]));
  FDPE \frame_min_reg[6] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[6]_i_1_n_0 ),
        .PRE(\data_d2[9]_i_1_n_0 ),
        .Q(frame_min[6]));
  FDPE \frame_min_reg[7] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[7]_i_1_n_0 ),
        .PRE(\data_d2[9]_i_1_n_0 ),
        .Q(frame_min[7]));
  FDPE \frame_min_reg[8] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[8]_i_1_n_0 ),
        .PRE(\data_d2[9]_i_1_n_0 ),
        .Q(frame_min[8]));
  FDPE \frame_min_reg[9] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[9]_i_2_n_0 ),
        .PRE(\data_d2[9]_i_1_n_0 ),
        .Q(frame_min[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gtOp_carry
       (.CI(1'b0),
        .CO({gtOp_carry_n_0,gtOp_carry_n_1,gtOp_carry_n_2,gtOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry_i_1_n_0,gtOp_carry_i_2_n_0,gtOp_carry_i_3_n_0,gtOp_carry_i_4_n_0}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[3:0]),
        .S({gtOp_carry_i_5_n_0,gtOp_carry_i_6_n_0,gtOp_carry_i_7_n_0,gtOp_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gtOp_carry__0
       (.CI(gtOp_carry_n_0),
        .CO({NLW_gtOp_carry__0_CO_UNCONNECTED[3:1],gtOp}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gtOp_carry__0_i_1_n_0}),
        .O(NLW_gtOp_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,gtOp_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_1
       (.I0(frame_min[8]),
        .I1(p_data_in[8]),
        .I2(p_data_in[9]),
        .I3(frame_min[9]),
        .O(gtOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_2
       (.I0(frame_min[8]),
        .I1(p_data_in[8]),
        .I2(frame_min[9]),
        .I3(p_data_in[9]),
        .O(gtOp_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_1
       (.I0(frame_min[6]),
        .I1(p_data_in[6]),
        .I2(p_data_in[7]),
        .I3(frame_min[7]),
        .O(gtOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_2
       (.I0(frame_min[4]),
        .I1(p_data_in[4]),
        .I2(p_data_in[5]),
        .I3(frame_min[5]),
        .O(gtOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_3
       (.I0(frame_min[2]),
        .I1(p_data_in[2]),
        .I2(p_data_in[3]),
        .I3(frame_min[3]),
        .O(gtOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_4
       (.I0(frame_min[0]),
        .I1(p_data_in[0]),
        .I2(p_data_in[1]),
        .I3(frame_min[1]),
        .O(gtOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_5
       (.I0(frame_min[6]),
        .I1(p_data_in[6]),
        .I2(frame_min[7]),
        .I3(p_data_in[7]),
        .O(gtOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_6
       (.I0(frame_min[4]),
        .I1(p_data_in[4]),
        .I2(frame_min[5]),
        .I3(p_data_in[5]),
        .O(gtOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_7
       (.I0(frame_min[2]),
        .I1(p_data_in[2]),
        .I2(frame_min[3]),
        .I3(p_data_in[3]),
        .O(gtOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8
       (.I0(frame_min[0]),
        .I1(p_data_in[0]),
        .I2(frame_min[1]),
        .I3(p_data_in[1]),
        .O(gtOp_carry_i_8_n_0));
  FDCE href_d2_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(href_d),
        .Q(href_d2));
  FDCE href_d_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(p_de_in),
        .Q(href_d));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(L[12]),
        .I1(frame_min[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(L[13]),
        .I1(frame_min[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(L[14]),
        .I1(frame_min[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(L[15]),
        .I1(frame_min[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1
       (.I0(p_data_in[1]),
        .I1(frame_min[1]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(p_data_in[0]),
        .I1(frame_min[0]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(L[10]),
        .I1(frame_min[9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(L[11]),
        .I1(frame_min[8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(p_data_in[5]),
        .I1(frame_min[5]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2
       (.I0(p_data_in[4]),
        .I1(frame_min[4]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3
       (.I0(p_data_in[3]),
        .I1(frame_min[3]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4
       (.I0(p_data_in[2]),
        .I1(frame_min[2]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1
       (.I0(p_data_in[9]),
        .I1(frame_min[9]),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_2
       (.I0(p_data_in[8]),
        .I1(frame_min[8]),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_3
       (.I0(p_data_in[7]),
        .I1(frame_min[7]),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_4
       (.I0(p_data_in[6]),
        .I1(frame_min[6]),
        .O(i__carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(L[16]),
        .I1(frame_min[3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(L[17]),
        .I1(frame_min[2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(L[18]),
        .I1(frame_min[1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(L[19]),
        .I1(frame_min[0]),
        .O(i__carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \input_wr_count[0]_i_1 
       (.I0(input_wr_count_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \input_wr_count[1]_i_1 
       (.I0(input_wr_count_reg[0]),
        .I1(input_wr_count_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \input_wr_count[2]_i_1 
       (.I0(input_wr_count_reg[0]),
        .I1(input_wr_count_reg[1]),
        .I2(input_wr_count_reg[2]),
        .O(plusOp[2]));
  LUT3 #(
    .INIT(8'h20)) 
    \input_wr_count[3]_i_1 
       (.I0(input_wr),
        .I1(p_vsync_in),
        .I2(vsync_d),
        .O(input_wr_count));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \input_wr_count[3]_i_2 
       (.I0(input_wr_count_reg[1]),
        .I1(input_wr_count_reg[0]),
        .I2(input_wr_count_reg[2]),
        .I3(input_wr_count_reg[3]),
        .O(plusOp[3]));
  FDCE \input_wr_count_reg[0] 
       (.C(p_clk_in),
        .CE(input_wr_count),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(plusOp[0]),
        .Q(input_wr_count_reg[0]));
  FDCE \input_wr_count_reg[1] 
       (.C(p_clk_in),
        .CE(input_wr_count),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(plusOp[1]),
        .Q(input_wr_count_reg[1]));
  FDCE \input_wr_count_reg[2] 
       (.C(p_clk_in),
        .CE(input_wr_count),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(plusOp[2]),
        .Q(input_wr_count_reg[2]));
  FDCE \input_wr_count_reg[3] 
       (.C(p_clk_in),
        .CE(input_wr_count),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(plusOp[3]),
        .Q(input_wr_count_reg[3]));
  LUT4 #(
    .INIT(16'hBFB0)) 
    input_wr_i_1
       (.I0(p_vsync_in),
        .I1(vsync_d),
        .I2(input_wr),
        .I3(input_wr_reg_n_0),
        .O(input_wr_i_1_n_0));
  FDCE input_wr_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(input_wr_i_1_n_0),
        .Q(input_wr_reg_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__1/i__carry_n_0 ,\minusOp_inferred__1/i__carry_n_1 ,\minusOp_inferred__1/i__carry_n_2 ,\minusOp_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({L[16],L[17],L[18],L[19]}),
        .O({\minusOp_inferred__1/i__carry_n_4 ,\minusOp_inferred__1/i__carry_n_5 ,\minusOp_inferred__1/i__carry_n_6 ,\minusOp_inferred__1/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry__0 
       (.CI(\minusOp_inferred__1/i__carry_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__0_n_0 ,\minusOp_inferred__1/i__carry__0_n_1 ,\minusOp_inferred__1/i__carry__0_n_2 ,\minusOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({L[12],L[13],L[14],L[15]}),
        .O({\minusOp_inferred__1/i__carry__0_n_4 ,\minusOp_inferred__1/i__carry__0_n_5 ,\minusOp_inferred__1/i__carry__0_n_6 ,\minusOp_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry__1 
       (.CI(\minusOp_inferred__1/i__carry__0_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__1_n_0 ,\minusOp_inferred__1/i__carry__1_n_1 ,\minusOp_inferred__1/i__carry__1_n_2 ,\minusOp_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({p_data_in[1:0],L[10],L[11]}),
        .O({\minusOp_inferred__1/i__carry__1_n_4 ,\minusOp_inferred__1/i__carry__1_n_5 ,\minusOp_inferred__1/i__carry__1_n_6 ,\minusOp_inferred__1/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry__2 
       (.CI(\minusOp_inferred__1/i__carry__1_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__2_n_0 ,\minusOp_inferred__1/i__carry__2_n_1 ,\minusOp_inferred__1/i__carry__2_n_2 ,\minusOp_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_data_in[5:2]),
        .O({\minusOp_inferred__1/i__carry__2_n_4 ,\minusOp_inferred__1/i__carry__2_n_5 ,\minusOp_inferred__1/i__carry__2_n_6 ,\minusOp_inferred__1/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry__3 
       (.CI(\minusOp_inferred__1/i__carry__2_n_0 ),
        .CO({\NLW_minusOp_inferred__1/i__carry__3_CO_UNCONNECTED [3],\minusOp_inferred__1/i__carry__3_n_1 ,\minusOp_inferred__1/i__carry__3_n_2 ,\minusOp_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_data_in[8:6]}),
        .O({\minusOp_inferred__1/i__carry__3_n_4 ,\minusOp_inferred__1/i__carry__3_n_5 ,\minusOp_inferred__1/i__carry__3_n_6 ,\minusOp_inferred__1/i__carry__3_n_7 }),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    p_de_out_INST_0
       (.I0(href_d2),
        .I1(done_int_reg_0),
        .O(p_de_out));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hBFB0)) 
    pattern_wr_i_1
       (.I0(p_vsync_in),
        .I1(vsync_d),
        .I2(pattern_wr),
        .I3(pattern_wr_reg_n_0),
        .O(pattern_wr_i_1_n_0));
  FDCE pattern_wr_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(pattern_wr_i_1_n_0),
        .Q(pattern_wr_reg_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    \pix_cnt[0]_i_1 
       (.I0(pix_cnt_clr_reg_n_0),
        .I1(pix_toggle),
        .I2(pix_cnt_en_reg_n_0),
        .O(\pix_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[0]_i_3 
       (.I0(pix_cnt_reg[0]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[0]_i_4 
       (.I0(pix_cnt_reg[3]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[0]_i_5 
       (.I0(pix_cnt_reg[2]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[0]_i_6 
       (.I0(pix_cnt_reg[1]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix_cnt[0]_i_7 
       (.I0(pix_cnt_reg[0]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[12]_i_2 
       (.I0(pix_cnt_reg[15]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[12]_i_3 
       (.I0(pix_cnt_reg[14]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[12]_i_4 
       (.I0(pix_cnt_reg[13]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[12]_i_5 
       (.I0(pix_cnt_reg[12]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[16]_i_2 
       (.I0(pix_cnt_reg[16]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[4]_i_2 
       (.I0(pix_cnt_reg[7]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[4]_i_3 
       (.I0(pix_cnt_reg[6]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[4]_i_4 
       (.I0(pix_cnt_reg[5]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[4]_i_5 
       (.I0(pix_cnt_reg[4]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[8]_i_2 
       (.I0(pix_cnt_reg[11]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[8]_i_3 
       (.I0(pix_cnt_reg[10]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[8]_i_4 
       (.I0(pix_cnt_reg[9]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[8]_i_5 
       (.I0(pix_cnt_reg[8]),
        .I1(pix_cnt_clr_reg_n_0),
        .O(\pix_cnt[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \pix_cnt_2[0]_i_1 
       (.I0(vsync_d),
        .I1(p_vsync_in),
        .I2(pix_toggle),
        .I3(p_de_in),
        .O(\pix_cnt_2[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[0]_i_3 
       (.I0(pix_cnt_2_reg[0]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[0]_i_4 
       (.I0(pix_cnt_2_reg[3]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[0]_i_5 
       (.I0(pix_cnt_2_reg[2]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[0]_i_6 
       (.I0(pix_cnt_2_reg[1]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \pix_cnt_2[0]_i_7 
       (.I0(pix_cnt_2_reg[0]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[12]_i_2 
       (.I0(pix_cnt_2_reg[15]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[12]_i_3 
       (.I0(pix_cnt_2_reg[14]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[12]_i_4 
       (.I0(pix_cnt_2_reg[13]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[12]_i_5 
       (.I0(pix_cnt_2_reg[12]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[16]_i_2 
       (.I0(pix_cnt_2_reg[16]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[4]_i_2 
       (.I0(pix_cnt_2_reg[7]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[4]_i_3 
       (.I0(pix_cnt_2_reg[6]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[4]_i_4 
       (.I0(pix_cnt_2_reg[5]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[4]_i_5 
       (.I0(pix_cnt_2_reg[4]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[8]_i_2 
       (.I0(pix_cnt_2_reg[11]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[8]_i_3 
       (.I0(pix_cnt_2_reg[10]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[8]_i_4 
       (.I0(pix_cnt_2_reg[9]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt_2[8]_i_5 
       (.I0(pix_cnt_2_reg[8]),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .O(\pix_cnt_2[8]_i_5_n_0 ));
  FDCE \pix_cnt_2_reg[0] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[0]_i_2_n_7 ),
        .Q(pix_cnt_2_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pix_cnt_2_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pix_cnt_2_reg[0]_i_2_n_0 ,\pix_cnt_2_reg[0]_i_2_n_1 ,\pix_cnt_2_reg[0]_i_2_n_2 ,\pix_cnt_2_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pix_cnt_2[0]_i_3_n_0 }),
        .O({\pix_cnt_2_reg[0]_i_2_n_4 ,\pix_cnt_2_reg[0]_i_2_n_5 ,\pix_cnt_2_reg[0]_i_2_n_6 ,\pix_cnt_2_reg[0]_i_2_n_7 }),
        .S({\pix_cnt_2[0]_i_4_n_0 ,\pix_cnt_2[0]_i_5_n_0 ,\pix_cnt_2[0]_i_6_n_0 ,\pix_cnt_2[0]_i_7_n_0 }));
  FDCE \pix_cnt_2_reg[10] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[8]_i_1_n_5 ),
        .Q(pix_cnt_2_reg[10]));
  FDCE \pix_cnt_2_reg[11] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[8]_i_1_n_4 ),
        .Q(pix_cnt_2_reg[11]));
  FDCE \pix_cnt_2_reg[12] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[12]_i_1_n_7 ),
        .Q(pix_cnt_2_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pix_cnt_2_reg[12]_i_1 
       (.CI(\pix_cnt_2_reg[8]_i_1_n_0 ),
        .CO({\pix_cnt_2_reg[12]_i_1_n_0 ,\pix_cnt_2_reg[12]_i_1_n_1 ,\pix_cnt_2_reg[12]_i_1_n_2 ,\pix_cnt_2_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_2_reg[12]_i_1_n_4 ,\pix_cnt_2_reg[12]_i_1_n_5 ,\pix_cnt_2_reg[12]_i_1_n_6 ,\pix_cnt_2_reg[12]_i_1_n_7 }),
        .S({\pix_cnt_2[12]_i_2_n_0 ,\pix_cnt_2[12]_i_3_n_0 ,\pix_cnt_2[12]_i_4_n_0 ,\pix_cnt_2[12]_i_5_n_0 }));
  FDCE \pix_cnt_2_reg[13] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[12]_i_1_n_6 ),
        .Q(pix_cnt_2_reg[13]));
  FDCE \pix_cnt_2_reg[14] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[12]_i_1_n_5 ),
        .Q(pix_cnt_2_reg[14]));
  FDCE \pix_cnt_2_reg[15] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[12]_i_1_n_4 ),
        .Q(pix_cnt_2_reg[15]));
  FDCE \pix_cnt_2_reg[16] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[16]_i_1_n_7 ),
        .Q(pix_cnt_2_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pix_cnt_2_reg[16]_i_1 
       (.CI(\pix_cnt_2_reg[12]_i_1_n_0 ),
        .CO(\NLW_pix_cnt_2_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pix_cnt_2_reg[16]_i_1_O_UNCONNECTED [3:1],\pix_cnt_2_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\pix_cnt_2[16]_i_2_n_0 }));
  FDCE \pix_cnt_2_reg[1] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[0]_i_2_n_6 ),
        .Q(pix_cnt_2_reg[1]));
  FDCE \pix_cnt_2_reg[2] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[0]_i_2_n_5 ),
        .Q(pix_cnt_2_reg[2]));
  FDCE \pix_cnt_2_reg[3] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[0]_i_2_n_4 ),
        .Q(pix_cnt_2_reg[3]));
  FDCE \pix_cnt_2_reg[4] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[4]_i_1_n_7 ),
        .Q(pix_cnt_2_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pix_cnt_2_reg[4]_i_1 
       (.CI(\pix_cnt_2_reg[0]_i_2_n_0 ),
        .CO({\pix_cnt_2_reg[4]_i_1_n_0 ,\pix_cnt_2_reg[4]_i_1_n_1 ,\pix_cnt_2_reg[4]_i_1_n_2 ,\pix_cnt_2_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_2_reg[4]_i_1_n_4 ,\pix_cnt_2_reg[4]_i_1_n_5 ,\pix_cnt_2_reg[4]_i_1_n_6 ,\pix_cnt_2_reg[4]_i_1_n_7 }),
        .S({\pix_cnt_2[4]_i_2_n_0 ,\pix_cnt_2[4]_i_3_n_0 ,\pix_cnt_2[4]_i_4_n_0 ,\pix_cnt_2[4]_i_5_n_0 }));
  FDCE \pix_cnt_2_reg[5] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[4]_i_1_n_6 ),
        .Q(pix_cnt_2_reg[5]));
  FDCE \pix_cnt_2_reg[6] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[4]_i_1_n_5 ),
        .Q(pix_cnt_2_reg[6]));
  FDCE \pix_cnt_2_reg[7] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[4]_i_1_n_4 ),
        .Q(pix_cnt_2_reg[7]));
  FDCE \pix_cnt_2_reg[8] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[8]_i_1_n_7 ),
        .Q(pix_cnt_2_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pix_cnt_2_reg[8]_i_1 
       (.CI(\pix_cnt_2_reg[4]_i_1_n_0 ),
        .CO({\pix_cnt_2_reg[8]_i_1_n_0 ,\pix_cnt_2_reg[8]_i_1_n_1 ,\pix_cnt_2_reg[8]_i_1_n_2 ,\pix_cnt_2_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_2_reg[8]_i_1_n_4 ,\pix_cnt_2_reg[8]_i_1_n_5 ,\pix_cnt_2_reg[8]_i_1_n_6 ,\pix_cnt_2_reg[8]_i_1_n_7 }),
        .S({\pix_cnt_2[8]_i_2_n_0 ,\pix_cnt_2[8]_i_3_n_0 ,\pix_cnt_2[8]_i_4_n_0 ,\pix_cnt_2[8]_i_5_n_0 }));
  FDCE \pix_cnt_2_reg[9] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_2_reg[8]_i_1_n_6 ),
        .Q(pix_cnt_2_reg[9]));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    pix_cnt_clr_i_1
       (.I0(\FSM_onehot_c_state_reg_n_0_[1] ),
        .I1(pix_cnt_clr_i_2_n_0),
        .I2(\FSM_onehot_c_state[1]_i_2_n_0 ),
        .I3(pix_cnt_clr_i_3_n_0),
        .I4(pix_cnt_clr_i_4_n_0),
        .I5(pix_cnt_clr_reg_n_0),
        .O(pix_cnt_clr_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    pix_cnt_clr_i_2
       (.I0(p_vsync_in),
        .I1(vsync_d),
        .I2(pattern_wr),
        .I3(zero_wr),
        .I4(input_wr),
        .O(pix_cnt_clr_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pix_cnt_clr_i_3
       (.I0(\FSM_onehot_c_state_reg_n_0_[7] ),
        .I1(pattern_wr),
        .I2(input_wr),
        .I3(\FSM_onehot_c_state_reg_n_0_[5] ),
        .O(pix_cnt_clr_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pix_cnt_clr_i_4
       (.I0(zero_wr),
        .I1(\FSM_onehot_c_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_c_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_c_state_reg_n_0_[1] ),
        .O(pix_cnt_clr_i_4_n_0));
  FDCE pix_cnt_clr_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(pix_cnt_clr_i_1_n_0),
        .Q(pix_cnt_clr_reg_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    pix_cnt_en_i_1
       (.I0(pix_cnt_en_i_2_n_0),
        .I1(pix_cnt_en),
        .I2(pix_cnt_en_reg_n_0),
        .O(pix_cnt_en_i_1_n_0));
  LUT6 #(
    .INIT(64'hEEEE00EEEEEE00EE)) 
    pix_cnt_en_i_2
       (.I0(zero_wr),
        .I1(pix_cnt_en_i_4_n_0),
        .I2(\FSM_onehot_c_state_reg_n_0_[5] ),
        .I3(vsync_d),
        .I4(p_vsync_in),
        .I5(\FSM_onehot_c_state_reg_n_0_[3] ),
        .O(pix_cnt_en_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pix_cnt_en_i_3
       (.I0(pattern_wr),
        .I1(\FSM_onehot_c_state_reg_n_0_[5] ),
        .I2(zero_wr),
        .I3(\FSM_onehot_c_state_reg_n_0_[1] ),
        .I4(input_wr),
        .I5(\FSM_onehot_c_state_reg_n_0_[3] ),
        .O(pix_cnt_en));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4F4F4F0)) 
    pix_cnt_en_i_4
       (.I0(vsync_d),
        .I1(p_vsync_in),
        .I2(input_wr),
        .I3(\FSM_onehot_c_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_c_state_reg_n_0_[5] ),
        .I5(pattern_wr),
        .O(pix_cnt_en_i_4_n_0));
  FDCE pix_cnt_en_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(pix_cnt_en_i_1_n_0),
        .Q(pix_cnt_en_reg_n_0));
  FDCE \pix_cnt_reg[0] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[0]_i_2_n_7 ),
        .Q(pix_cnt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pix_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pix_cnt_reg[0]_i_2_n_0 ,\pix_cnt_reg[0]_i_2_n_1 ,\pix_cnt_reg[0]_i_2_n_2 ,\pix_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pix_cnt[0]_i_3_n_0 }),
        .O({\pix_cnt_reg[0]_i_2_n_4 ,\pix_cnt_reg[0]_i_2_n_5 ,\pix_cnt_reg[0]_i_2_n_6 ,\pix_cnt_reg[0]_i_2_n_7 }),
        .S({\pix_cnt[0]_i_4_n_0 ,\pix_cnt[0]_i_5_n_0 ,\pix_cnt[0]_i_6_n_0 ,\pix_cnt[0]_i_7_n_0 }));
  FDCE \pix_cnt_reg[10] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[8]_i_1_n_5 ),
        .Q(pix_cnt_reg[10]));
  FDCE \pix_cnt_reg[11] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[8]_i_1_n_4 ),
        .Q(pix_cnt_reg[11]));
  FDCE \pix_cnt_reg[12] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[12]_i_1_n_7 ),
        .Q(pix_cnt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pix_cnt_reg[12]_i_1 
       (.CI(\pix_cnt_reg[8]_i_1_n_0 ),
        .CO({\pix_cnt_reg[12]_i_1_n_0 ,\pix_cnt_reg[12]_i_1_n_1 ,\pix_cnt_reg[12]_i_1_n_2 ,\pix_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_reg[12]_i_1_n_4 ,\pix_cnt_reg[12]_i_1_n_5 ,\pix_cnt_reg[12]_i_1_n_6 ,\pix_cnt_reg[12]_i_1_n_7 }),
        .S({\pix_cnt[12]_i_2_n_0 ,\pix_cnt[12]_i_3_n_0 ,\pix_cnt[12]_i_4_n_0 ,\pix_cnt[12]_i_5_n_0 }));
  FDCE \pix_cnt_reg[13] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[12]_i_1_n_6 ),
        .Q(pix_cnt_reg[13]));
  FDCE \pix_cnt_reg[14] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[12]_i_1_n_5 ),
        .Q(pix_cnt_reg[14]));
  FDCE \pix_cnt_reg[15] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[12]_i_1_n_4 ),
        .Q(pix_cnt_reg[15]));
  FDCE \pix_cnt_reg[16] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[16]_i_1_n_7 ),
        .Q(pix_cnt_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pix_cnt_reg[16]_i_1 
       (.CI(\pix_cnt_reg[12]_i_1_n_0 ),
        .CO(\NLW_pix_cnt_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pix_cnt_reg[16]_i_1_O_UNCONNECTED [3:1],\pix_cnt_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\pix_cnt[16]_i_2_n_0 }));
  FDCE \pix_cnt_reg[1] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[0]_i_2_n_6 ),
        .Q(pix_cnt_reg[1]));
  FDCE \pix_cnt_reg[2] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[0]_i_2_n_5 ),
        .Q(pix_cnt_reg[2]));
  FDCE \pix_cnt_reg[3] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[0]_i_2_n_4 ),
        .Q(pix_cnt_reg[3]));
  FDCE \pix_cnt_reg[4] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[4]_i_1_n_7 ),
        .Q(pix_cnt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pix_cnt_reg[4]_i_1 
       (.CI(\pix_cnt_reg[0]_i_2_n_0 ),
        .CO({\pix_cnt_reg[4]_i_1_n_0 ,\pix_cnt_reg[4]_i_1_n_1 ,\pix_cnt_reg[4]_i_1_n_2 ,\pix_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_reg[4]_i_1_n_4 ,\pix_cnt_reg[4]_i_1_n_5 ,\pix_cnt_reg[4]_i_1_n_6 ,\pix_cnt_reg[4]_i_1_n_7 }),
        .S({\pix_cnt[4]_i_2_n_0 ,\pix_cnt[4]_i_3_n_0 ,\pix_cnt[4]_i_4_n_0 ,\pix_cnt[4]_i_5_n_0 }));
  FDCE \pix_cnt_reg[5] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[4]_i_1_n_6 ),
        .Q(pix_cnt_reg[5]));
  FDCE \pix_cnt_reg[6] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[4]_i_1_n_5 ),
        .Q(pix_cnt_reg[6]));
  FDCE \pix_cnt_reg[7] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[4]_i_1_n_4 ),
        .Q(pix_cnt_reg[7]));
  FDCE \pix_cnt_reg[8] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[8]_i_1_n_7 ),
        .Q(pix_cnt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pix_cnt_reg[8]_i_1 
       (.CI(\pix_cnt_reg[4]_i_1_n_0 ),
        .CO({\pix_cnt_reg[8]_i_1_n_0 ,\pix_cnt_reg[8]_i_1_n_1 ,\pix_cnt_reg[8]_i_1_n_2 ,\pix_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_reg[8]_i_1_n_4 ,\pix_cnt_reg[8]_i_1_n_5 ,\pix_cnt_reg[8]_i_1_n_6 ,\pix_cnt_reg[8]_i_1_n_7 }),
        .S({\pix_cnt[8]_i_2_n_0 ,\pix_cnt[8]_i_3_n_0 ,\pix_cnt[8]_i_4_n_0 ,\pix_cnt[8]_i_5_n_0 }));
  FDCE \pix_cnt_reg[9] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(\pix_cnt_reg[8]_i_1_n_6 ),
        .Q(pix_cnt_reg[9]));
  LUT4 #(
    .INIT(16'h1540)) 
    pix_toggle_i_1
       (.I0(pix_cnt_clr_reg_n_0),
        .I1(p_vsync_in),
        .I2(p_de_in),
        .I3(pix_toggle),
        .O(pix_toggle_i_1_n_0));
  FDCE pix_toggle_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(pix_toggle_i_1_n_0),
        .Q(pix_toggle));
  FDCE vsync_d2_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(vsync_d),
        .Q(p_vsync_out));
  FDCE vsync_d_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(p_vsync_in),
        .Q(vsync_d));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hBFB0)) 
    zero_wr_i_1
       (.I0(p_vsync_in),
        .I1(vsync_d),
        .I2(zero_wr),
        .I3(zero_wr_reg_n_0),
        .O(zero_wr_i_1_n_0));
  FDCE zero_wr_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(\data_d2[9]_i_1_n_0 ),
        .D(zero_wr_i_1_n_0),
        .Q(zero_wr_reg_n_0));
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
