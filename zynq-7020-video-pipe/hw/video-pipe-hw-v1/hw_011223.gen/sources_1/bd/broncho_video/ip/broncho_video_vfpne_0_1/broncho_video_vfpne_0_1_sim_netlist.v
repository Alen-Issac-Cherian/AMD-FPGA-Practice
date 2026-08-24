// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Dec 15 11:29:57 2023
// Host        : DESKTOP-1T2E61L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/Project-Workspace/zynq-7020-video-pipe-3/hw/video-pipe-hw-v1/hw_011223.gen/sources_1/bd/broncho_video/ip/broncho_video_vfpne_0_1/broncho_video_vfpne_0_1_sim_netlist.v
// Design      : broncho_video_vfpne_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "broncho_video_vfpne_0_1,vfpne,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "vfpne,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module broncho_video_vfpne_0_1
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
  wire [1:0]output_select;
  wire p_clk_in;
  wire [9:0]p_data_in;
  wire [9:0]p_data_out;
  wire p_de_in;
  wire p_de_out;
  wire p_vsync_in;
  wire p_vsync_out;
  wire [3:0]skip_count;

  assign p_clk_out = p_clk_in;
  broncho_video_vfpne_0_1_vfpne inst
       (.arst_n(arst_n),
        .compute(compute),
        .done_int_reg_0(done),
        .href_d2_reg_0(p_de_out),
        .output_select(output_select),
        .p_clk_in(p_clk_in),
        .p_data_in(p_data_in),
        .p_data_out(p_data_out),
        .p_de_in(p_de_in),
        .p_vsync_in(p_vsync_in),
        .p_vsync_out(p_vsync_out),
        .skip_count(skip_count));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_0" *) (* X_CORE_INFO = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
module broncho_video_vfpne_0_1_blk_mem_gen_0
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
module broncho_video_vfpne_0_1_vfpne
   (href_d2_reg_0,
    done_int_reg_0,
    p_vsync_out,
    p_data_out,
    p_vsync_in,
    p_data_in,
    p_clk_in,
    compute,
    p_de_in,
    output_select,
    skip_count,
    arst_n);
  output href_d2_reg_0;
  output done_int_reg_0;
  output p_vsync_out;
  output [9:0]p_data_out;
  input p_vsync_in;
  input [9:0]p_data_in;
  input p_clk_in;
  input compute;
  input p_de_in;
  input [1:0]output_select;
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
  wire [16:0]addra;
  wire [16:0]addrb;
  wire arst_n;
  wire compute;
  wire compute_d;
  wire [9:0]data_d2;
  wire [10:0]data_out_temp1;
  wire data_out_temp119_out;
  wire data_out_temp11__0;
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
  wire href_d2_i_1_n_0;
  wire href_d2_reg_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
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
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire in6;
  wire input_wr;
  wire input_wr_count;
  wire [3:0]input_wr_count_reg;
  wire input_wr_i_1_n_0;
  wire input_wr_reg_n_0;
  wire ltOp__8;
  wire [9:0]minusOp;
  wire \minusOp_inferred__0/i__carry__0_n_0 ;
  wire \minusOp_inferred__0/i__carry__0_n_1 ;
  wire \minusOp_inferred__0/i__carry__0_n_2 ;
  wire \minusOp_inferred__0/i__carry__0_n_3 ;
  wire \minusOp_inferred__0/i__carry__1_n_2 ;
  wire \minusOp_inferred__0/i__carry__1_n_3 ;
  wire \minusOp_inferred__0/i__carry__1_n_5 ;
  wire \minusOp_inferred__0/i__carry_n_0 ;
  wire \minusOp_inferred__0/i__carry_n_1 ;
  wire \minusOp_inferred__0/i__carry_n_2 ;
  wire \minusOp_inferred__0/i__carry_n_3 ;
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
  wire [1:0]output_select;
  wire p_7_in;
  wire p_clk_in;
  wire [9:0]p_data_in;
  wire [9:0]p_data_out;
  wire \p_data_out[0]_INST_0_i_1_n_0 ;
  wire \p_data_out[1]_INST_0_i_1_n_0 ;
  wire \p_data_out[2]_INST_0_i_1_n_0 ;
  wire \p_data_out[3]_INST_0_i_1_n_0 ;
  wire \p_data_out[3]_INST_0_i_2_n_0 ;
  wire \p_data_out[3]_INST_0_i_2_n_1 ;
  wire \p_data_out[3]_INST_0_i_2_n_2 ;
  wire \p_data_out[3]_INST_0_i_2_n_3 ;
  wire \p_data_out[3]_INST_0_i_4_n_0 ;
  wire \p_data_out[3]_INST_0_i_5_n_0 ;
  wire \p_data_out[3]_INST_0_i_6_n_0 ;
  wire \p_data_out[3]_INST_0_i_7_n_0 ;
  wire \p_data_out[4]_INST_0_i_1_n_0 ;
  wire \p_data_out[5]_INST_0_i_1_n_0 ;
  wire \p_data_out[6]_INST_0_i_1_n_0 ;
  wire \p_data_out[7]_INST_0_i_1_n_0 ;
  wire \p_data_out[7]_INST_0_i_2_n_0 ;
  wire \p_data_out[7]_INST_0_i_2_n_1 ;
  wire \p_data_out[7]_INST_0_i_2_n_2 ;
  wire \p_data_out[7]_INST_0_i_2_n_3 ;
  wire \p_data_out[7]_INST_0_i_3_n_0 ;
  wire \p_data_out[7]_INST_0_i_4_n_0 ;
  wire \p_data_out[7]_INST_0_i_5_n_0 ;
  wire \p_data_out[7]_INST_0_i_6_n_0 ;
  wire \p_data_out[8]_INST_0_i_1_n_0 ;
  wire \p_data_out[9]_INST_0_i_10_n_0 ;
  wire \p_data_out[9]_INST_0_i_11_n_0 ;
  wire \p_data_out[9]_INST_0_i_13_n_0 ;
  wire \p_data_out[9]_INST_0_i_1_n_0 ;
  wire \p_data_out[9]_INST_0_i_2_n_0 ;
  wire \p_data_out[9]_INST_0_i_3_n_2 ;
  wire \p_data_out[9]_INST_0_i_3_n_3 ;
  wire \p_data_out[9]_INST_0_i_4_n_0 ;
  wire \p_data_out[9]_INST_0_i_5_n_0 ;
  wire \p_data_out[9]_INST_0_i_6_n_0 ;
  wire \p_data_out[9]_INST_0_i_7_n_0 ;
  wire \p_data_out[9]_INST_0_i_9_n_0 ;
  wire p_de_in;
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
  wire pix_cnt_clr;
  wire pix_cnt_clr_i_1_n_0;
  wire pix_cnt_clr_i_3_n_0;
  wire pix_cnt_clr_reg_n_0;
  wire pix_cnt_en_i_1_n_0;
  wire pix_cnt_en_i_2_n_0;
  wire pix_cnt_en_i_3_n_0;
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
  wire pix_toggle_2;
  wire pix_toggle_2_i_1_n_0;
  wire pix_toggle_i_1_n_0;
  wire [3:0]plusOp;
  wire ram1_rd_ck_en;
  wire [19:0]ram1_rdata;
  wire ram1_wr_ck_en;
  wire ram1_wr_en;
  wire [3:0]skip_count;
  wire vsync_d;
  wire vsync_fedge__0;
  wire zero_wr;
  wire zero_wr_i_1_n_0;
  wire zero_wr_reg_n_0;
  wire [3:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [3:1]NLW_gtOp_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry__0_O_UNCONNECTED;
  wire [3:2]\NLW_minusOp_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_minusOp_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:3]\NLW_minusOp_inferred__1/i__carry__3_CO_UNCONNECTED ;
  wire [3:2]\NLW_p_data_out[9]_INST_0_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_p_data_out[9]_INST_0_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_pix_cnt_2_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_pix_cnt_2_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pix_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_pix_cnt_reg[16]_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFF8A)) 
    \FSM_onehot_c_state[0]_i_1 
       (.I0(\FSM_onehot_c_state_reg_n_0_[0] ),
        .I1(compute_d),
        .I2(compute),
        .I3(\FSM_onehot_c_state_reg_n_0_[7] ),
        .O(\FSM_onehot_c_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFAAEEEEEEAAEE)) 
    \FSM_onehot_c_state[1]_i_1 
       (.I0(\FSM_onehot_c_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_c_state_reg_n_0_[1] ),
        .I2(in6),
        .I3(p_vsync_in),
        .I4(vsync_d),
        .I5(input_wr),
        .O(\FSM_onehot_c_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_c_state[1]_i_2 
       (.I0(\FSM_onehot_c_state_reg_n_0_[0] ),
        .I1(compute),
        .I2(compute_d),
        .O(\FSM_onehot_c_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8E8A)) 
    \FSM_onehot_c_state[2]_i_1 
       (.I0(zero_wr),
        .I1(p_vsync_in),
        .I2(vsync_d),
        .I3(\FSM_onehot_c_state_reg_n_0_[1] ),
        .O(\FSM_onehot_c_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8E8A)) 
    \FSM_onehot_c_state[3]_i_1 
       (.I0(\FSM_onehot_c_state_reg_n_0_[3] ),
        .I1(vsync_d),
        .I2(p_vsync_in),
        .I3(zero_wr),
        .O(\FSM_onehot_c_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8E8A)) 
    \FSM_onehot_c_state[4]_i_1 
       (.I0(input_wr),
        .I1(p_vsync_in),
        .I2(vsync_d),
        .I3(\FSM_onehot_c_state_reg_n_0_[3] ),
        .O(\FSM_onehot_c_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF0F0800)) 
    \FSM_onehot_c_state[5]_i_1 
       (.I0(in6),
        .I1(input_wr),
        .I2(p_vsync_in),
        .I3(vsync_d),
        .I4(\FSM_onehot_c_state_reg_n_0_[5] ),
        .O(\FSM_onehot_c_state[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h90090000)) 
    \FSM_onehot_c_state[5]_i_2 
       (.I0(skip_count[3]),
        .I1(input_wr_count_reg[3]),
        .I2(skip_count[2]),
        .I3(input_wr_count_reg[2]),
        .I4(\FSM_onehot_c_state[5]_i_3_n_0 ),
        .O(in6));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_c_state[5]_i_3 
       (.I0(input_wr_count_reg[0]),
        .I1(skip_count[0]),
        .I2(input_wr_count_reg[1]),
        .I3(skip_count[1]),
        .O(\FSM_onehot_c_state[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8E8A)) 
    \FSM_onehot_c_state[6]_i_1 
       (.I0(pattern_wr),
        .I1(p_vsync_in),
        .I2(vsync_d),
        .I3(\FSM_onehot_c_state_reg_n_0_[5] ),
        .O(\FSM_onehot_c_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
        .PRE(href_d2_i_1_n_0),
        .Q(\FSM_onehot_c_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_state_reg[1] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(\FSM_onehot_c_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_c_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_state_reg[2] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(\FSM_onehot_c_state[2]_i_1_n_0 ),
        .Q(zero_wr));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_state_reg[3] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(\FSM_onehot_c_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_c_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_state_reg[4] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(\FSM_onehot_c_state[4]_i_1_n_0 ),
        .Q(input_wr));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_state_reg[5] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(\FSM_onehot_c_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_c_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_state_reg[6] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(\FSM_onehot_c_state[6]_i_1_n_0 ),
        .Q(pattern_wr));
  (* FSM_ENCODED_STATES = "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_state_reg[7] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(\FSM_onehot_c_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_c_state_reg_n_0_[7] ));
  (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
  broncho_video_vfpne_0_1_blk_mem_gen_0 LRAM_INST1
       (.addra(addra),
        .addrb(addrb),
        .clka(p_clk_in),
        .clkb(p_clk_in),
        .dina(dina),
        .doutb(ram1_rdata),
        .ena(ram1_wr_ck_en),
        .enb(ram1_rd_ck_en),
        .wea(ram1_wr_en));
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_1
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_toggle),
        .O(ram1_wr_ck_en));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_10
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[9]),
        .O(addra[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_11
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[8]),
        .O(addra[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_12
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[7]),
        .O(addra[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_13
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[6]),
        .O(addra[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_14
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[5]),
        .O(addra[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_15
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[4]),
        .O(addra[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_16
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[3]),
        .O(addra[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_17
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[2]),
        .O(addra[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_18
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[1]),
        .O(addra[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_19
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[0]),
        .O(addra[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_2
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(p_de_in),
        .O(ram1_wr_en));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_20
       (.I0(p_data_in[9]),
        .I1(\minusOp_inferred__1/i__carry__3_n_4 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[19]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_21
       (.I0(p_data_in[8]),
        .I1(\minusOp_inferred__1/i__carry__3_n_5 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[18]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_22
       (.I0(p_data_in[7]),
        .I1(\minusOp_inferred__1/i__carry__3_n_6 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[17]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_23
       (.I0(p_data_in[6]),
        .I1(\minusOp_inferred__1/i__carry__3_n_7 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[16]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_24
       (.I0(p_data_in[5]),
        .I1(\minusOp_inferred__1/i__carry__2_n_4 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[15]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_25
       (.I0(p_data_in[4]),
        .I1(\minusOp_inferred__1/i__carry__2_n_5 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[14]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_26
       (.I0(p_data_in[3]),
        .I1(\minusOp_inferred__1/i__carry__2_n_6 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[13]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_27
       (.I0(p_data_in[2]),
        .I1(\minusOp_inferred__1/i__carry__2_n_7 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[12]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_28
       (.I0(p_data_in[1]),
        .I1(\minusOp_inferred__1/i__carry__1_n_4 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[11]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_29
       (.I0(p_data_in[0]),
        .I1(\minusOp_inferred__1/i__carry__1_n_5 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_3
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[16]),
        .O(addra[16]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_30
       (.I0(L[10]),
        .I1(\minusOp_inferred__1/i__carry__1_n_6 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[9]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_31
       (.I0(L[11]),
        .I1(\minusOp_inferred__1/i__carry__1_n_7 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[8]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_32
       (.I0(L[12]),
        .I1(\minusOp_inferred__1/i__carry__0_n_4 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[7]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_33
       (.I0(L[13]),
        .I1(\minusOp_inferred__1/i__carry__0_n_5 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[6]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_34
       (.I0(L[14]),
        .I1(\minusOp_inferred__1/i__carry__0_n_6 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[5]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_35
       (.I0(L[15]),
        .I1(\minusOp_inferred__1/i__carry__0_n_7 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[4]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_36
       (.I0(L[16]),
        .I1(\minusOp_inferred__1/i__carry_n_4 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[3]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_37
       (.I0(L[17]),
        .I1(\minusOp_inferred__1/i__carry_n_5 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[2]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_38
       (.I0(L[18]),
        .I1(\minusOp_inferred__1/i__carry_n_6 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[1]));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    LRAM_INST1_i_39
       (.I0(L[19]),
        .I1(\minusOp_inferred__1/i__carry_n_7 ),
        .I2(pattern_wr_reg_n_0),
        .I3(input_wr_reg_n_0),
        .I4(zero_wr_reg_n_0),
        .O(dina[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_4
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[15]),
        .O(addra[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_40
       (.I0(done_int_reg_0),
        .I1(p_de_in),
        .O(ram1_rd_ck_en));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_41
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[16]),
        .O(addrb[16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_42
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[15]),
        .O(addrb[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_43
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[14]),
        .O(addrb[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_44
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[13]),
        .O(addrb[13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_45
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[12]),
        .O(addrb[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_46
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[11]),
        .O(addrb[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_47
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[10]),
        .O(addrb[10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_48
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[9]),
        .O(addrb[9]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_49
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[8]),
        .O(addrb[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_5
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[14]),
        .O(addra[14]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_50
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[7]),
        .O(addrb[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_51
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[6]),
        .O(addrb[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_52
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[5]),
        .O(addrb[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_53
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[4]),
        .O(addrb[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_54
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[3]),
        .O(addrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_55
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[2]),
        .O(addrb[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_56
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[1]),
        .O(addrb[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LRAM_INST1_i_57
       (.I0(done_int_reg_0),
        .I1(pix_cnt_2_reg[0]),
        .O(addrb[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_6
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[13]),
        .O(addra[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_7
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[12]),
        .O(addra[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_8
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[11]),
        .O(addra[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    LRAM_INST1_i_9
       (.I0(pattern_wr_reg_n_0),
        .I1(zero_wr_reg_n_0),
        .I2(input_wr_reg_n_0),
        .I3(pix_cnt_reg[10]),
        .O(addra[10]));
  FDCE compute_d_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(compute),
        .Q(compute_d));
  FDCE \data_d2_reg[0] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(L[19]),
        .Q(data_d2[0]));
  FDCE \data_d2_reg[1] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(L[18]),
        .Q(data_d2[1]));
  FDCE \data_d2_reg[2] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(L[17]),
        .Q(data_d2[2]));
  FDCE \data_d2_reg[3] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(L[16]),
        .Q(data_d2[3]));
  FDCE \data_d2_reg[4] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(L[15]),
        .Q(data_d2[4]));
  FDCE \data_d2_reg[5] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(L[14]),
        .Q(data_d2[5]));
  FDCE \data_d2_reg[6] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(L[13]),
        .Q(data_d2[6]));
  FDCE \data_d2_reg[7] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(L[12]),
        .Q(data_d2[7]));
  FDCE \data_d2_reg[8] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(L[11]),
        .Q(data_d2[8]));
  FDCE \data_d2_reg[9] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(L[10]),
        .Q(data_d2[9]));
  FDCE \data_d_reg[0] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(p_data_in[0]),
        .Q(L[19]));
  FDCE \data_d_reg[1] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(p_data_in[1]),
        .Q(L[18]));
  FDCE \data_d_reg[2] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(p_data_in[2]),
        .Q(L[17]));
  FDCE \data_d_reg[3] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(p_data_in[3]),
        .Q(L[16]));
  FDCE \data_d_reg[4] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(p_data_in[4]),
        .Q(L[15]));
  FDCE \data_d_reg[5] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(p_data_in[5]),
        .Q(L[14]));
  FDCE \data_d_reg[6] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(p_data_in[6]),
        .Q(L[13]));
  FDCE \data_d_reg[7] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(p_data_in[7]),
        .Q(L[12]));
  FDCE \data_d_reg[8] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(p_data_in[8]),
        .Q(L[11]));
  FDCE \data_d_reg[9] 
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(p_data_in[9]),
        .Q(L[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    done_int_i_1
       (.I0(compute_d),
        .I1(compute),
        .I2(\FSM_onehot_c_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_c_state_reg_n_0_[7] ),
        .I4(done_int_reg_0),
        .O(done_int_i_1_n_0));
  FDCE done_int_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(done_int_i_1_n_0),
        .Q(done_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[0]_i_1 
       (.I0(p_data_in[0]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[1]_i_1 
       (.I0(p_data_in[1]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[2]_i_1 
       (.I0(p_data_in[2]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[3]_i_1 
       (.I0(p_data_in[3]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[4]_i_1 
       (.I0(p_data_in[4]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[5]_i_1 
       (.I0(p_data_in[5]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[6]_i_1 
       (.I0(p_data_in[6]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[7]_i_1 
       (.I0(p_data_in[7]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[8]_i_1 
       (.I0(p_data_in[8]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \frame_min[9]_i_1 
       (.I0(frame_min_compute_en_reg_n_0),
        .I1(gtOp),
        .I2(p_de_in),
        .I3(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_min[9]_i_2 
       (.I0(p_data_in[9]),
        .I1(frame_min_compute_clr_reg_n_0),
        .O(\frame_min[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF404FFFFF4040)) 
    frame_min_compute_clr_i_1
       (.I0(compute_d),
        .I1(compute),
        .I2(\FSM_onehot_c_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_c_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_c_state_reg_n_0_[1] ),
        .I5(frame_min_compute_clr_reg_n_0),
        .O(frame_min_compute_clr_i_1_n_0));
  FDCE frame_min_compute_clr_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(frame_min_compute_clr_i_1_n_0),
        .Q(frame_min_compute_clr_reg_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    frame_min_compute_en_i_1
       (.I0(\FSM_onehot_c_state[4]_i_1_n_0 ),
        .I1(\FSM_onehot_c_state_reg_n_0_[1] ),
        .I2(zero_wr),
        .I3(input_wr),
        .I4(\FSM_onehot_c_state_reg_n_0_[3] ),
        .I5(frame_min_compute_en_reg_n_0),
        .O(frame_min_compute_en_i_1_n_0));
  FDCE frame_min_compute_en_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(frame_min_compute_en_i_1_n_0),
        .Q(frame_min_compute_en_reg_n_0));
  FDPE \frame_min_reg[0] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[0]_i_1_n_0 ),
        .PRE(href_d2_i_1_n_0),
        .Q(frame_min[0]));
  FDPE \frame_min_reg[1] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[1]_i_1_n_0 ),
        .PRE(href_d2_i_1_n_0),
        .Q(frame_min[1]));
  FDPE \frame_min_reg[2] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[2]_i_1_n_0 ),
        .PRE(href_d2_i_1_n_0),
        .Q(frame_min[2]));
  FDPE \frame_min_reg[3] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[3]_i_1_n_0 ),
        .PRE(href_d2_i_1_n_0),
        .Q(frame_min[3]));
  FDPE \frame_min_reg[4] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[4]_i_1_n_0 ),
        .PRE(href_d2_i_1_n_0),
        .Q(frame_min[4]));
  FDPE \frame_min_reg[5] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[5]_i_1_n_0 ),
        .PRE(href_d2_i_1_n_0),
        .Q(frame_min[5]));
  FDPE \frame_min_reg[6] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[6]_i_1_n_0 ),
        .PRE(href_d2_i_1_n_0),
        .Q(frame_min[6]));
  FDPE \frame_min_reg[7] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[7]_i_1_n_0 ),
        .PRE(href_d2_i_1_n_0),
        .Q(frame_min[7]));
  FDPE \frame_min_reg[8] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[8]_i_1_n_0 ),
        .PRE(href_d2_i_1_n_0),
        .Q(frame_min[8]));
  FDPE \frame_min_reg[9] 
       (.C(p_clk_in),
        .CE(\frame_min[9]_i_1_n_0 ),
        .D(\frame_min[9]_i_2_n_0 ),
        .PRE(href_d2_i_1_n_0),
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
       (.I0(p_data_in[9]),
        .I1(frame_min[9]),
        .I2(p_data_in[8]),
        .I3(frame_min[8]),
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
       (.I0(p_data_in[7]),
        .I1(frame_min[7]),
        .I2(p_data_in[6]),
        .I3(frame_min[6]),
        .O(gtOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_6
       (.I0(p_data_in[5]),
        .I1(frame_min[5]),
        .I2(p_data_in[4]),
        .I3(frame_min[4]),
        .O(gtOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_7
       (.I0(p_data_in[3]),
        .I1(frame_min[3]),
        .I2(p_data_in[2]),
        .I3(frame_min[2]),
        .O(gtOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8
       (.I0(p_data_in[1]),
        .I1(frame_min[1]),
        .I2(p_data_in[0]),
        .I3(frame_min[0]),
        .O(gtOp_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    href_d2_i_1
       (.I0(arst_n),
        .O(href_d2_i_1_n_0));
  FDCE href_d2_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(href_d),
        .Q(href_d2_reg_0));
  FDCE href_d_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
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
    i__carry__0_i_1__0
       (.I0(data_d2[7]),
        .I1(ram1_rdata[7]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(L[13]),
        .I1(frame_min[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__0
       (.I0(data_d2[6]),
        .I1(ram1_rdata[6]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(L[14]),
        .I1(frame_min[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__0
       (.I0(data_d2[5]),
        .I1(ram1_rdata[5]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(L[15]),
        .I1(frame_min[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__0
       (.I0(data_d2[4]),
        .I1(ram1_rdata[4]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1
       (.I0(p_data_in[1]),
        .I1(frame_min[1]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__0
       (.I0(data_d2[9]),
        .I1(ram1_rdata[9]),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(p_data_in[0]),
        .I1(frame_min[0]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__0
       (.I0(data_d2[8]),
        .I1(ram1_rdata[8]),
        .O(i__carry__1_i_2__0_n_0));
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
    i__carry_i_1__0
       (.I0(data_d2[3]),
        .I1(ram1_rdata[3]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(L[17]),
        .I1(frame_min[2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__0
       (.I0(data_d2[2]),
        .I1(ram1_rdata[2]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(L[18]),
        .I1(frame_min[1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__0
       (.I0(data_d2[1]),
        .I1(ram1_rdata[1]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(L[19]),
        .I1(frame_min[0]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__0
       (.I0(data_d2[0]),
        .I1(ram1_rdata[0]),
        .O(i__carry_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \input_wr_count[0]_i_1 
       (.I0(input_wr_count_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
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
       (.I0(input_wr_count_reg[2]),
        .I1(input_wr_count_reg[1]),
        .I2(input_wr_count_reg[0]),
        .I3(input_wr_count_reg[3]),
        .O(plusOp[3]));
  FDCE \input_wr_count_reg[0] 
       (.C(p_clk_in),
        .CE(input_wr_count),
        .CLR(href_d2_i_1_n_0),
        .D(plusOp[0]),
        .Q(input_wr_count_reg[0]));
  FDCE \input_wr_count_reg[1] 
       (.C(p_clk_in),
        .CE(input_wr_count),
        .CLR(href_d2_i_1_n_0),
        .D(plusOp[1]),
        .Q(input_wr_count_reg[1]));
  FDCE \input_wr_count_reg[2] 
       (.C(p_clk_in),
        .CE(input_wr_count),
        .CLR(href_d2_i_1_n_0),
        .D(plusOp[2]),
        .Q(input_wr_count_reg[2]));
  FDCE \input_wr_count_reg[3] 
       (.C(p_clk_in),
        .CE(input_wr_count),
        .CLR(href_d2_i_1_n_0),
        .D(plusOp[3]),
        .Q(input_wr_count_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
        .CLR(href_d2_i_1_n_0),
        .D(input_wr_i_1_n_0),
        .Q(input_wr_reg_n_0));
  CARRY4 \minusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__0/i__carry_n_0 ,\minusOp_inferred__0/i__carry_n_1 ,\minusOp_inferred__0/i__carry_n_2 ,\minusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(data_d2[3:0]),
        .O(minusOp[3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__0 
       (.CI(\minusOp_inferred__0/i__carry_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__0_n_0 ,\minusOp_inferred__0/i__carry__0_n_1 ,\minusOp_inferred__0/i__carry__0_n_2 ,\minusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(data_d2[7:4]),
        .O(minusOp[7:4]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__1 
       (.CI(\minusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_minusOp_inferred__0/i__carry__1_CO_UNCONNECTED [3:2],\minusOp_inferred__0/i__carry__1_n_2 ,\minusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data_d2[9:8]}),
        .O({\NLW_minusOp_inferred__0/i__carry__1_O_UNCONNECTED [3],\minusOp_inferred__0/i__carry__1_n_5 ,minusOp[9:8]}),
        .S({1'b0,1'b1,i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0}));
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
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \p_data_out[0]_INST_0 
       (.I0(\p_data_out[0]_INST_0_i_1_n_0 ),
        .I1(\p_data_out[9]_INST_0_i_2_n_0 ),
        .I2(data_out_temp1[0]),
        .I3(\p_data_out[9]_INST_0_i_4_n_0 ),
        .I4(minusOp[0]),
        .O(p_data_out[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \p_data_out[0]_INST_0_i_1 
       (.I0(\p_data_out[9]_INST_0_i_5_n_0 ),
        .I1(data_d2[0]),
        .I2(\p_data_out[9]_INST_0_i_6_n_0 ),
        .I3(ram1_rdata[10]),
        .I4(ram1_rdata[0]),
        .I5(\p_data_out[9]_INST_0_i_7_n_0 ),
        .O(\p_data_out[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \p_data_out[1]_INST_0 
       (.I0(\p_data_out[1]_INST_0_i_1_n_0 ),
        .I1(\p_data_out[9]_INST_0_i_2_n_0 ),
        .I2(data_out_temp1[1]),
        .I3(\p_data_out[9]_INST_0_i_4_n_0 ),
        .I4(minusOp[1]),
        .O(p_data_out[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \p_data_out[1]_INST_0_i_1 
       (.I0(\p_data_out[9]_INST_0_i_5_n_0 ),
        .I1(data_d2[1]),
        .I2(\p_data_out[9]_INST_0_i_6_n_0 ),
        .I3(ram1_rdata[11]),
        .I4(ram1_rdata[1]),
        .I5(\p_data_out[9]_INST_0_i_7_n_0 ),
        .O(\p_data_out[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \p_data_out[2]_INST_0 
       (.I0(\p_data_out[2]_INST_0_i_1_n_0 ),
        .I1(\p_data_out[9]_INST_0_i_2_n_0 ),
        .I2(data_out_temp1[2]),
        .I3(\p_data_out[9]_INST_0_i_4_n_0 ),
        .I4(minusOp[2]),
        .O(p_data_out[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \p_data_out[2]_INST_0_i_1 
       (.I0(\p_data_out[9]_INST_0_i_5_n_0 ),
        .I1(data_d2[2]),
        .I2(\p_data_out[9]_INST_0_i_6_n_0 ),
        .I3(ram1_rdata[12]),
        .I4(ram1_rdata[2]),
        .I5(\p_data_out[9]_INST_0_i_7_n_0 ),
        .O(\p_data_out[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \p_data_out[3]_INST_0 
       (.I0(\p_data_out[3]_INST_0_i_1_n_0 ),
        .I1(\p_data_out[9]_INST_0_i_2_n_0 ),
        .I2(data_out_temp1[3]),
        .I3(\p_data_out[9]_INST_0_i_4_n_0 ),
        .I4(minusOp[3]),
        .O(p_data_out[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \p_data_out[3]_INST_0_i_1 
       (.I0(\p_data_out[9]_INST_0_i_5_n_0 ),
        .I1(data_d2[3]),
        .I2(\p_data_out[9]_INST_0_i_6_n_0 ),
        .I3(ram1_rdata[13]),
        .I4(ram1_rdata[3]),
        .I5(\p_data_out[9]_INST_0_i_7_n_0 ),
        .O(\p_data_out[3]_INST_0_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_data_out[3]_INST_0_i_2 
       (.CI(1'b0),
        .CO({\p_data_out[3]_INST_0_i_2_n_0 ,\p_data_out[3]_INST_0_i_2_n_1 ,\p_data_out[3]_INST_0_i_2_n_2 ,\p_data_out[3]_INST_0_i_2_n_3 }),
        .CYINIT(data_out_temp119_out),
        .DI(data_d2[3:0]),
        .O(data_out_temp1[3:0]),
        .S({\p_data_out[3]_INST_0_i_4_n_0 ,\p_data_out[3]_INST_0_i_5_n_0 ,\p_data_out[3]_INST_0_i_6_n_0 ,\p_data_out[3]_INST_0_i_7_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \p_data_out[3]_INST_0_i_3 
       (.I0(pix_toggle_2),
        .I1(href_d2_reg_0),
        .I2(done_int_reg_0),
        .I3(ltOp__8),
        .O(data_out_temp119_out));
  LUT6 #(
    .INIT(64'hFFFF00007FFF8000)) 
    \p_data_out[3]_INST_0_i_4 
       (.I0(pix_toggle_2),
        .I1(href_d2_reg_0),
        .I2(done_int_reg_0),
        .I3(ltOp__8),
        .I4(data_d2[3]),
        .I5(ram1_rdata[13]),
        .O(\p_data_out[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00007FFF8000)) 
    \p_data_out[3]_INST_0_i_5 
       (.I0(pix_toggle_2),
        .I1(href_d2_reg_0),
        .I2(done_int_reg_0),
        .I3(ltOp__8),
        .I4(data_d2[2]),
        .I5(ram1_rdata[12]),
        .O(\p_data_out[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00007FFF8000)) 
    \p_data_out[3]_INST_0_i_6 
       (.I0(pix_toggle_2),
        .I1(href_d2_reg_0),
        .I2(done_int_reg_0),
        .I3(ltOp__8),
        .I4(data_d2[1]),
        .I5(ram1_rdata[11]),
        .O(\p_data_out[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00007FFF8000)) 
    \p_data_out[3]_INST_0_i_7 
       (.I0(pix_toggle_2),
        .I1(href_d2_reg_0),
        .I2(done_int_reg_0),
        .I3(ltOp__8),
        .I4(data_d2[0]),
        .I5(ram1_rdata[10]),
        .O(\p_data_out[3]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \p_data_out[4]_INST_0 
       (.I0(\p_data_out[4]_INST_0_i_1_n_0 ),
        .I1(\p_data_out[9]_INST_0_i_2_n_0 ),
        .I2(data_out_temp1[4]),
        .I3(\p_data_out[9]_INST_0_i_4_n_0 ),
        .I4(minusOp[4]),
        .O(p_data_out[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \p_data_out[4]_INST_0_i_1 
       (.I0(\p_data_out[9]_INST_0_i_5_n_0 ),
        .I1(data_d2[4]),
        .I2(\p_data_out[9]_INST_0_i_6_n_0 ),
        .I3(ram1_rdata[14]),
        .I4(ram1_rdata[4]),
        .I5(\p_data_out[9]_INST_0_i_7_n_0 ),
        .O(\p_data_out[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \p_data_out[5]_INST_0 
       (.I0(\p_data_out[5]_INST_0_i_1_n_0 ),
        .I1(\p_data_out[9]_INST_0_i_2_n_0 ),
        .I2(data_out_temp1[5]),
        .I3(\p_data_out[9]_INST_0_i_4_n_0 ),
        .I4(minusOp[5]),
        .O(p_data_out[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \p_data_out[5]_INST_0_i_1 
       (.I0(\p_data_out[9]_INST_0_i_5_n_0 ),
        .I1(data_d2[5]),
        .I2(\p_data_out[9]_INST_0_i_6_n_0 ),
        .I3(ram1_rdata[15]),
        .I4(ram1_rdata[5]),
        .I5(\p_data_out[9]_INST_0_i_7_n_0 ),
        .O(\p_data_out[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \p_data_out[6]_INST_0 
       (.I0(\p_data_out[6]_INST_0_i_1_n_0 ),
        .I1(\p_data_out[9]_INST_0_i_2_n_0 ),
        .I2(data_out_temp1[6]),
        .I3(\p_data_out[9]_INST_0_i_4_n_0 ),
        .I4(minusOp[6]),
        .O(p_data_out[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \p_data_out[6]_INST_0_i_1 
       (.I0(\p_data_out[9]_INST_0_i_5_n_0 ),
        .I1(data_d2[6]),
        .I2(\p_data_out[9]_INST_0_i_6_n_0 ),
        .I3(ram1_rdata[16]),
        .I4(ram1_rdata[6]),
        .I5(\p_data_out[9]_INST_0_i_7_n_0 ),
        .O(\p_data_out[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \p_data_out[7]_INST_0 
       (.I0(\p_data_out[7]_INST_0_i_1_n_0 ),
        .I1(\p_data_out[9]_INST_0_i_2_n_0 ),
        .I2(data_out_temp1[7]),
        .I3(\p_data_out[9]_INST_0_i_4_n_0 ),
        .I4(minusOp[7]),
        .O(p_data_out[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \p_data_out[7]_INST_0_i_1 
       (.I0(\p_data_out[9]_INST_0_i_5_n_0 ),
        .I1(data_d2[7]),
        .I2(\p_data_out[9]_INST_0_i_6_n_0 ),
        .I3(ram1_rdata[17]),
        .I4(ram1_rdata[7]),
        .I5(\p_data_out[9]_INST_0_i_7_n_0 ),
        .O(\p_data_out[7]_INST_0_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_data_out[7]_INST_0_i_2 
       (.CI(\p_data_out[3]_INST_0_i_2_n_0 ),
        .CO({\p_data_out[7]_INST_0_i_2_n_0 ,\p_data_out[7]_INST_0_i_2_n_1 ,\p_data_out[7]_INST_0_i_2_n_2 ,\p_data_out[7]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(data_d2[7:4]),
        .O(data_out_temp1[7:4]),
        .S({\p_data_out[7]_INST_0_i_3_n_0 ,\p_data_out[7]_INST_0_i_4_n_0 ,\p_data_out[7]_INST_0_i_5_n_0 ,\p_data_out[7]_INST_0_i_6_n_0 }));
  LUT6 #(
    .INIT(64'hFFFF00007FFF8000)) 
    \p_data_out[7]_INST_0_i_3 
       (.I0(pix_toggle_2),
        .I1(href_d2_reg_0),
        .I2(done_int_reg_0),
        .I3(ltOp__8),
        .I4(data_d2[7]),
        .I5(ram1_rdata[17]),
        .O(\p_data_out[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00007FFF8000)) 
    \p_data_out[7]_INST_0_i_4 
       (.I0(pix_toggle_2),
        .I1(href_d2_reg_0),
        .I2(done_int_reg_0),
        .I3(ltOp__8),
        .I4(data_d2[6]),
        .I5(ram1_rdata[16]),
        .O(\p_data_out[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00007FFF8000)) 
    \p_data_out[7]_INST_0_i_5 
       (.I0(pix_toggle_2),
        .I1(href_d2_reg_0),
        .I2(done_int_reg_0),
        .I3(ltOp__8),
        .I4(data_d2[5]),
        .I5(ram1_rdata[15]),
        .O(\p_data_out[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00007FFF8000)) 
    \p_data_out[7]_INST_0_i_6 
       (.I0(pix_toggle_2),
        .I1(href_d2_reg_0),
        .I2(done_int_reg_0),
        .I3(ltOp__8),
        .I4(data_d2[4]),
        .I5(ram1_rdata[14]),
        .O(\p_data_out[7]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \p_data_out[8]_INST_0 
       (.I0(\p_data_out[8]_INST_0_i_1_n_0 ),
        .I1(\p_data_out[9]_INST_0_i_2_n_0 ),
        .I2(data_out_temp1[8]),
        .I3(\p_data_out[9]_INST_0_i_4_n_0 ),
        .I4(minusOp[8]),
        .O(p_data_out[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \p_data_out[8]_INST_0_i_1 
       (.I0(\p_data_out[9]_INST_0_i_5_n_0 ),
        .I1(data_d2[8]),
        .I2(\p_data_out[9]_INST_0_i_6_n_0 ),
        .I3(ram1_rdata[18]),
        .I4(ram1_rdata[8]),
        .I5(\p_data_out[9]_INST_0_i_7_n_0 ),
        .O(\p_data_out[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \p_data_out[9]_INST_0 
       (.I0(\p_data_out[9]_INST_0_i_1_n_0 ),
        .I1(\p_data_out[9]_INST_0_i_2_n_0 ),
        .I2(data_out_temp1[9]),
        .I3(\p_data_out[9]_INST_0_i_4_n_0 ),
        .I4(minusOp[9]),
        .O(p_data_out[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \p_data_out[9]_INST_0_i_1 
       (.I0(\p_data_out[9]_INST_0_i_5_n_0 ),
        .I1(data_d2[9]),
        .I2(\p_data_out[9]_INST_0_i_6_n_0 ),
        .I3(ram1_rdata[19]),
        .I4(ram1_rdata[9]),
        .I5(\p_data_out[9]_INST_0_i_7_n_0 ),
        .O(\p_data_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00007FFF8000)) 
    \p_data_out[9]_INST_0_i_10 
       (.I0(pix_toggle_2),
        .I1(href_d2_reg_0),
        .I2(done_int_reg_0),
        .I3(ltOp__8),
        .I4(data_d2[9]),
        .I5(ram1_rdata[19]),
        .O(\p_data_out[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00007FFF8000)) 
    \p_data_out[9]_INST_0_i_11 
       (.I0(pix_toggle_2),
        .I1(href_d2_reg_0),
        .I2(done_int_reg_0),
        .I3(ltOp__8),
        .I4(data_d2[8]),
        .I5(ram1_rdata[18]),
        .O(\p_data_out[9]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \p_data_out[9]_INST_0_i_12 
       (.I0(done_int_reg_0),
        .I1(href_d2_reg_0),
        .I2(pix_toggle_2),
        .O(p_7_in));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \p_data_out[9]_INST_0_i_13 
       (.I0(data_d2[2]),
        .I1(data_d2[3]),
        .I2(data_d2[4]),
        .I3(data_d2[5]),
        .I4(data_d2[1]),
        .I5(data_d2[0]),
        .O(\p_data_out[9]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \p_data_out[9]_INST_0_i_14 
       (.I0(\p_data_out[9]_INST_0_i_13_n_0 ),
        .I1(data_d2[6]),
        .I2(data_d2[7]),
        .I3(data_d2[8]),
        .I4(data_d2[9]),
        .O(ltOp__8));
  LUT5 #(
    .INIT(32'h00000090)) 
    \p_data_out[9]_INST_0_i_2 
       (.I0(output_select[0]),
        .I1(output_select[1]),
        .I2(done_int_reg_0),
        .I3(data_out_temp1[10]),
        .I4(data_out_temp11__0),
        .O(\p_data_out[9]_INST_0_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_data_out[9]_INST_0_i_3 
       (.CI(\p_data_out[7]_INST_0_i_2_n_0 ),
        .CO({\NLW_p_data_out[9]_INST_0_i_3_CO_UNCONNECTED [3:2],\p_data_out[9]_INST_0_i_3_n_2 ,\p_data_out[9]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data_d2[9:8]}),
        .O({\NLW_p_data_out[9]_INST_0_i_3_O_UNCONNECTED [3],data_out_temp1[10:8]}),
        .S({1'b0,\p_data_out[9]_INST_0_i_9_n_0 ,\p_data_out[9]_INST_0_i_10_n_0 ,\p_data_out[9]_INST_0_i_11_n_0 }));
  LUT5 #(
    .INIT(32'h00900000)) 
    \p_data_out[9]_INST_0_i_4 
       (.I0(output_select[0]),
        .I1(output_select[1]),
        .I2(done_int_reg_0),
        .I3(\minusOp_inferred__0/i__carry__1_n_5 ),
        .I4(data_out_temp11__0),
        .O(\p_data_out[9]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h34FF)) 
    \p_data_out[9]_INST_0_i_5 
       (.I0(href_d2_reg_0),
        .I1(output_select[0]),
        .I2(output_select[1]),
        .I3(done_int_reg_0),
        .O(\p_data_out[9]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \p_data_out[9]_INST_0_i_6 
       (.I0(output_select[0]),
        .I1(output_select[1]),
        .I2(pix_toggle_2),
        .I3(href_d2_reg_0),
        .I4(done_int_reg_0),
        .O(\p_data_out[9]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \p_data_out[9]_INST_0_i_7 
       (.I0(output_select[1]),
        .I1(output_select[0]),
        .I2(pix_toggle_2),
        .I3(href_d2_reg_0),
        .I4(done_int_reg_0),
        .O(\p_data_out[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    \p_data_out[9]_INST_0_i_8 
       (.I0(p_7_in),
        .I1(data_d2[9]),
        .I2(data_d2[8]),
        .I3(data_d2[7]),
        .I4(data_d2[6]),
        .I5(\p_data_out[9]_INST_0_i_13_n_0 ),
        .O(data_out_temp11__0));
  LUT4 #(
    .INIT(16'h8000)) 
    \p_data_out[9]_INST_0_i_9 
       (.I0(pix_toggle_2),
        .I1(href_d2_reg_0),
        .I2(done_int_reg_0),
        .I3(ltOp__8),
        .O(\p_data_out[9]_INST_0_i_9_n_0 ));
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
        .CLR(href_d2_i_1_n_0),
        .D(pattern_wr_i_1_n_0),
        .Q(pattern_wr_reg_n_0));
  LUT3 #(
    .INIT(8'hF8)) 
    \pix_cnt[0]_i_1 
       (.I0(pix_toggle),
        .I1(pix_cnt_en_reg_n_0),
        .I2(pix_cnt_clr_reg_n_0),
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
    .INIT(16'h8F88)) 
    \pix_cnt_2[0]_i_1 
       (.I0(pix_toggle),
        .I1(p_de_in),
        .I2(vsync_d),
        .I3(p_vsync_in),
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
        .CLR(href_d2_i_1_n_0),
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
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_2_reg[8]_i_1_n_5 ),
        .Q(pix_cnt_2_reg[10]));
  FDCE \pix_cnt_2_reg[11] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_2_reg[8]_i_1_n_4 ),
        .Q(pix_cnt_2_reg[11]));
  FDCE \pix_cnt_2_reg[12] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
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
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_2_reg[12]_i_1_n_6 ),
        .Q(pix_cnt_2_reg[13]));
  FDCE \pix_cnt_2_reg[14] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_2_reg[12]_i_1_n_5 ),
        .Q(pix_cnt_2_reg[14]));
  FDCE \pix_cnt_2_reg[15] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_2_reg[12]_i_1_n_4 ),
        .Q(pix_cnt_2_reg[15]));
  FDCE \pix_cnt_2_reg[16] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
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
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_2_reg[0]_i_2_n_6 ),
        .Q(pix_cnt_2_reg[1]));
  FDCE \pix_cnt_2_reg[2] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_2_reg[0]_i_2_n_5 ),
        .Q(pix_cnt_2_reg[2]));
  FDCE \pix_cnt_2_reg[3] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_2_reg[0]_i_2_n_4 ),
        .Q(pix_cnt_2_reg[3]));
  FDCE \pix_cnt_2_reg[4] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
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
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_2_reg[4]_i_1_n_6 ),
        .Q(pix_cnt_2_reg[5]));
  FDCE \pix_cnt_2_reg[6] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_2_reg[4]_i_1_n_5 ),
        .Q(pix_cnt_2_reg[6]));
  FDCE \pix_cnt_2_reg[7] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_2_reg[4]_i_1_n_4 ),
        .Q(pix_cnt_2_reg[7]));
  FDCE \pix_cnt_2_reg[8] 
       (.C(p_clk_in),
        .CE(\pix_cnt_2[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
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
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_2_reg[8]_i_1_n_6 ),
        .Q(pix_cnt_2_reg[9]));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEE0000)) 
    pix_cnt_clr_i_1
       (.I0(\FSM_onehot_c_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_c_state[1]_i_2_n_0 ),
        .I2(vsync_fedge__0),
        .I3(pix_cnt_clr_i_3_n_0),
        .I4(pix_cnt_clr),
        .I5(pix_cnt_clr_reg_n_0),
        .O(pix_cnt_clr_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    pix_cnt_clr_i_2
       (.I0(vsync_d),
        .I1(p_vsync_in),
        .O(vsync_fedge__0));
  LUT3 #(
    .INIT(8'hFE)) 
    pix_cnt_clr_i_3
       (.I0(input_wr),
        .I1(pattern_wr),
        .I2(zero_wr),
        .O(pix_cnt_clr_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pix_cnt_clr_i_4
       (.I0(pix_cnt_clr_i_3_n_0),
        .I1(\FSM_onehot_c_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_c_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_c_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_c_state_reg_n_0_[5] ),
        .I5(\FSM_onehot_c_state_reg_n_0_[1] ),
        .O(pix_cnt_clr));
  FDCE pix_cnt_clr_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(pix_cnt_clr_i_1_n_0),
        .Q(pix_cnt_clr_reg_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    pix_cnt_en_i_1
       (.I0(pix_cnt_en_i_2_n_0),
        .I1(\FSM_onehot_c_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_c_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_c_state_reg_n_0_[1] ),
        .I4(pix_cnt_clr_i_3_n_0),
        .I5(pix_cnt_en_reg_n_0),
        .O(pix_cnt_en_i_1_n_0));
  LUT6 #(
    .INIT(64'hCFCFCF8ECFCFCF8A)) 
    pix_cnt_en_i_2
       (.I0(zero_wr),
        .I1(p_vsync_in),
        .I2(vsync_d),
        .I3(pattern_wr),
        .I4(input_wr),
        .I5(pix_cnt_en_i_3_n_0),
        .O(pix_cnt_en_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pix_cnt_en_i_3
       (.I0(\FSM_onehot_c_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_c_state_reg_n_0_[5] ),
        .O(pix_cnt_en_i_3_n_0));
  FDCE pix_cnt_en_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(pix_cnt_en_i_1_n_0),
        .Q(pix_cnt_en_reg_n_0));
  FDCE \pix_cnt_reg[0] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
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
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_reg[8]_i_1_n_5 ),
        .Q(pix_cnt_reg[10]));
  FDCE \pix_cnt_reg[11] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_reg[8]_i_1_n_4 ),
        .Q(pix_cnt_reg[11]));
  FDCE \pix_cnt_reg[12] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
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
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_reg[12]_i_1_n_6 ),
        .Q(pix_cnt_reg[13]));
  FDCE \pix_cnt_reg[14] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_reg[12]_i_1_n_5 ),
        .Q(pix_cnt_reg[14]));
  FDCE \pix_cnt_reg[15] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_reg[12]_i_1_n_4 ),
        .Q(pix_cnt_reg[15]));
  FDCE \pix_cnt_reg[16] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
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
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_reg[0]_i_2_n_6 ),
        .Q(pix_cnt_reg[1]));
  FDCE \pix_cnt_reg[2] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_reg[0]_i_2_n_5 ),
        .Q(pix_cnt_reg[2]));
  FDCE \pix_cnt_reg[3] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_reg[0]_i_2_n_4 ),
        .Q(pix_cnt_reg[3]));
  FDCE \pix_cnt_reg[4] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
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
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_reg[4]_i_1_n_6 ),
        .Q(pix_cnt_reg[5]));
  FDCE \pix_cnt_reg[6] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_reg[4]_i_1_n_5 ),
        .Q(pix_cnt_reg[6]));
  FDCE \pix_cnt_reg[7] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_reg[4]_i_1_n_4 ),
        .Q(pix_cnt_reg[7]));
  FDCE \pix_cnt_reg[8] 
       (.C(p_clk_in),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(href_d2_i_1_n_0),
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
        .CLR(href_d2_i_1_n_0),
        .D(\pix_cnt_reg[8]_i_1_n_6 ),
        .Q(pix_cnt_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    pix_toggle_2_i_1
       (.I0(done_int_reg_0),
        .I1(href_d2_reg_0),
        .I2(pix_toggle_2),
        .O(pix_toggle_2_i_1_n_0));
  FDCE pix_toggle_2_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(pix_toggle_2_i_1_n_0),
        .Q(pix_toggle_2));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    pix_toggle_i_1
       (.I0(p_vsync_in),
        .I1(p_de_in),
        .I2(pix_cnt_clr_reg_n_0),
        .I3(pix_toggle),
        .O(pix_toggle_i_1_n_0));
  FDCE pix_toggle_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(pix_toggle_i_1_n_0),
        .Q(pix_toggle));
  FDCE vsync_d2_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(vsync_d),
        .Q(p_vsync_out));
  FDCE vsync_d_reg
       (.C(p_clk_in),
        .CE(1'b1),
        .CLR(href_d2_i_1_n_0),
        .D(p_vsync_in),
        .Q(vsync_d));
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
        .CLR(href_d2_i_1_n_0),
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
