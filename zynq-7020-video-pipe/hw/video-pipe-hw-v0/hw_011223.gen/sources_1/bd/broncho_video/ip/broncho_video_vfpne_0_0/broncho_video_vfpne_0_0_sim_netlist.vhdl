-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Fri Dec 15 18:38:25 2023
-- Host        : DESKTOP-1T2E61L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               g:/Project-Workspace/zynq-7020-video-pipe-3/hw/video-pipe-hw-v0/hw_011223.gen/sources_1/bd/broncho_video/ip/broncho_video_vfpne_0_0/broncho_video_vfpne_0_0_sim_netlist.vhdl
-- Design      : broncho_video_vfpne_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity broncho_video_vfpne_0_0_vfpne is
  port (
    p_de_out : out STD_LOGIC;
    done_int_reg_0 : out STD_LOGIC;
    p_data_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    p_vsync_out : out STD_LOGIC;
    p_vsync_in : in STD_LOGIC;
    p_data_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    p_clk_in : in STD_LOGIC;
    compute : in STD_LOGIC;
    p_de_in : in STD_LOGIC;
    skip_count : in STD_LOGIC_VECTOR ( 3 downto 0 );
    arst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of broncho_video_vfpne_0_0_vfpne : entity is "vfpne";
end broncho_video_vfpne_0_0_vfpne;

architecture STRUCTURE of broncho_video_vfpne_0_0_vfpne is
  component broncho_video_vfpne_0_0_blk_mem_gen_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 16 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component broncho_video_vfpne_0_0_blk_mem_gen_0;
  signal \FSM_onehot_c_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_c_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_c_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_c_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_c_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_c_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_c_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_c_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_c_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_c_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_c_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_c_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_c_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_c_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_c_state_reg_n_0_[7]\ : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 10 to 19 );
  signal LRAM_INST1_i_10_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_11_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_12_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_13_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_14_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_15_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_16_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_17_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_18_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_19_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_3_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_41_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_42_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_43_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_44_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_45_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_46_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_47_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_48_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_49_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_4_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_50_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_51_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_52_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_53_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_54_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_55_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_56_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_57_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_5_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_6_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_7_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_8_n_0 : STD_LOGIC;
  signal LRAM_INST1_i_9_n_0 : STD_LOGIC;
  signal compute_d : STD_LOGIC;
  signal \data_d2[9]_i_1_n_0\ : STD_LOGIC;
  signal dina : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal done_int_i_1_n_0 : STD_LOGIC;
  signal \^done_int_reg_0\ : STD_LOGIC;
  signal frame_min : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \frame_min[0]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min[1]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min[2]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min[3]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min[4]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min[5]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min[6]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min[7]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min[8]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min[9]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min[9]_i_2_n_0\ : STD_LOGIC;
  signal frame_min_compute_clr_i_1_n_0 : STD_LOGIC;
  signal frame_min_compute_clr_reg_n_0 : STD_LOGIC;
  signal frame_min_compute_en_i_1_n_0 : STD_LOGIC;
  signal frame_min_compute_en_reg_n_0 : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal \gtOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal gtOp_carry_i_1_n_0 : STD_LOGIC;
  signal gtOp_carry_i_2_n_0 : STD_LOGIC;
  signal gtOp_carry_i_3_n_0 : STD_LOGIC;
  signal gtOp_carry_i_4_n_0 : STD_LOGIC;
  signal gtOp_carry_i_5_n_0 : STD_LOGIC;
  signal gtOp_carry_i_6_n_0 : STD_LOGIC;
  signal gtOp_carry_i_7_n_0 : STD_LOGIC;
  signal gtOp_carry_i_8_n_0 : STD_LOGIC;
  signal gtOp_carry_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal href_d : STD_LOGIC;
  signal href_d2 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal in6 : STD_LOGIC;
  signal input_wr : STD_LOGIC;
  signal input_wr_count : STD_LOGIC;
  signal input_wr_count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal input_wr_i_1_n_0 : STD_LOGIC;
  signal input_wr_reg_n_0 : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal pattern_wr : STD_LOGIC;
  signal pattern_wr_i_1_n_0 : STD_LOGIC;
  signal pattern_wr_reg_n_0 : STD_LOGIC;
  signal \pix_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \pix_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[0]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[0]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[0]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[0]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[0]_i_6_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[0]_i_7_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[12]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[12]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[12]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[12]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[16]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[4]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[4]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[4]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[4]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[8]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[8]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[8]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt_2[8]_i_5_n_0\ : STD_LOGIC;
  signal pix_cnt_2_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \pix_cnt_2_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt_2_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \pix_cnt_2_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \pix_cnt_2_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \pix_cnt_2_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \pix_cnt_2_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \pix_cnt_2_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \pix_cnt_2_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \pix_cnt_2_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt_2_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pix_cnt_2_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pix_cnt_2_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pix_cnt_2_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pix_cnt_2_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pix_cnt_2_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pix_cnt_2_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pix_cnt_2_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \pix_cnt_2_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt_2_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pix_cnt_2_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pix_cnt_2_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pix_cnt_2_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pix_cnt_2_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pix_cnt_2_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pix_cnt_2_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pix_cnt_2_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt_2_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pix_cnt_2_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pix_cnt_2_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pix_cnt_2_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pix_cnt_2_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pix_cnt_2_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pix_cnt_2_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal pix_cnt_clr_i_1_n_0 : STD_LOGIC;
  signal pix_cnt_clr_i_2_n_0 : STD_LOGIC;
  signal pix_cnt_clr_i_3_n_0 : STD_LOGIC;
  signal pix_cnt_clr_i_4_n_0 : STD_LOGIC;
  signal pix_cnt_clr_reg_n_0 : STD_LOGIC;
  signal pix_cnt_en : STD_LOGIC;
  signal pix_cnt_en_i_1_n_0 : STD_LOGIC;
  signal pix_cnt_en_i_2_n_0 : STD_LOGIC;
  signal pix_cnt_en_i_4_n_0 : STD_LOGIC;
  signal pix_cnt_en_reg_n_0 : STD_LOGIC;
  signal pix_cnt_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \pix_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pix_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal pix_toggle : STD_LOGIC;
  signal pix_toggle_i_1_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram1_rd_ck_en : STD_LOGIC;
  signal ram1_rdata : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal ram1_wr_ck_en : STD_LOGIC;
  signal ram1_wr_en : STD_LOGIC;
  signal vsync_d : STD_LOGIC;
  signal zero_wr : STD_LOGIC;
  signal zero_wr_i_1_n_0 : STD_LOGIC;
  signal zero_wr_reg_n_0 : STD_LOGIC;
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gtOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_inferred__1/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pix_cnt_2_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pix_cnt_2_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pix_cnt_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pix_cnt_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_c_state[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_c_state[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_c_state[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_c_state[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_c_state[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_c_state[7]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_c_state_reg[0]\ : label is "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_c_state_reg[1]\ : label is "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_c_state_reg[2]\ : label is "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_c_state_reg[3]\ : label is "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_c_state_reg[4]\ : label is "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_c_state_reg[5]\ : label is "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_c_state_reg[6]\ : label is "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_c_state_reg[7]\ : label is "wr_zero:00000100,wait_for_sof1:00001000,wait_for_sof0:00000010,wait_for_ramready:0001,idle:00000001,rd_mod_wr:01000000,wait_for_sof2:00100000,compute_done:10000000,wr_pattern:00010000";
  attribute x_core_info : string;
  attribute x_core_info of LRAM_INST1 : label is "blk_mem_gen_v8_4_7,Vivado 2023.2";
  attribute SOFT_HLUTNM of LRAM_INST1_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of LRAM_INST1_i_10 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of LRAM_INST1_i_11 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of LRAM_INST1_i_12 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of LRAM_INST1_i_13 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of LRAM_INST1_i_14 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of LRAM_INST1_i_15 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of LRAM_INST1_i_16 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of LRAM_INST1_i_17 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of LRAM_INST1_i_18 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of LRAM_INST1_i_19 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of LRAM_INST1_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of LRAM_INST1_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of LRAM_INST1_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of LRAM_INST1_i_40 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of LRAM_INST1_i_41 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of LRAM_INST1_i_42 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of LRAM_INST1_i_43 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of LRAM_INST1_i_44 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of LRAM_INST1_i_45 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of LRAM_INST1_i_46 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of LRAM_INST1_i_47 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of LRAM_INST1_i_48 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of LRAM_INST1_i_49 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of LRAM_INST1_i_5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of LRAM_INST1_i_50 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of LRAM_INST1_i_51 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of LRAM_INST1_i_52 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of LRAM_INST1_i_53 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of LRAM_INST1_i_54 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of LRAM_INST1_i_55 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of LRAM_INST1_i_56 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of LRAM_INST1_i_57 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of LRAM_INST1_i_6 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of LRAM_INST1_i_7 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of LRAM_INST1_i_8 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of LRAM_INST1_i_9 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of done_int_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \frame_min[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \frame_min[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \frame_min[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \frame_min[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \frame_min[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \frame_min[5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \frame_min[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \frame_min[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \frame_min[8]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \frame_min[9]_i_2\ : label is "soft_lutpair30";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of gtOp_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \gtOp_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of \input_wr_count[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \input_wr_count[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \input_wr_count[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \input_wr_count[3]_i_2\ : label is "soft_lutpair15";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \minusOp_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__1/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__1/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__1/i__carry__3\ : label is 35;
  attribute SOFT_HLUTNM of p_de_out_INST_0 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of pattern_wr_i_1 : label is "soft_lutpair11";
  attribute ADDER_THRESHOLD of \pix_cnt_2_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \pix_cnt_2_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pix_cnt_2_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pix_cnt_2_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pix_cnt_2_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of pix_cnt_clr_i_2 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \pix_cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \pix_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pix_cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pix_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pix_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of zero_wr_i_1 : label is "soft_lutpair13";
begin
  done_int_reg_0 <= \^done_int_reg_0\;
\FSM_onehot_c_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => \FSM_onehot_c_state_reg_n_0_[7]\,
      I1 => compute,
      I2 => compute_d,
      I3 => \FSM_onehot_c_state_reg_n_0_[0]\,
      O => \FSM_onehot_c_state[0]_i_1_n_0\
    );
\FSM_onehot_c_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEECCCCEEFEEEEE"
    )
        port map (
      I0 => \FSM_onehot_c_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_c_state[1]_i_2_n_0\,
      I2 => input_wr,
      I3 => in6,
      I4 => vsync_d,
      I5 => p_vsync_in,
      O => \FSM_onehot_c_state[1]_i_1_n_0\
    );
\FSM_onehot_c_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_onehot_c_state_reg_n_0_[0]\,
      I1 => compute_d,
      I2 => compute,
      O => \FSM_onehot_c_state[1]_i_2_n_0\
    );
\FSM_onehot_c_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => \FSM_onehot_c_state_reg_n_0_[1]\,
      I1 => vsync_d,
      I2 => p_vsync_in,
      I3 => zero_wr,
      O => \FSM_onehot_c_state[2]_i_1_n_0\
    );
\FSM_onehot_c_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => zero_wr,
      I1 => p_vsync_in,
      I2 => vsync_d,
      I3 => \FSM_onehot_c_state_reg_n_0_[3]\,
      O => \FSM_onehot_c_state[3]_i_1_n_0\
    );
\FSM_onehot_c_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => \FSM_onehot_c_state_reg_n_0_[3]\,
      I1 => vsync_d,
      I2 => p_vsync_in,
      I3 => input_wr,
      O => \FSM_onehot_c_state[4]_i_1_n_0\
    );
\FSM_onehot_c_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0800"
    )
        port map (
      I0 => in6,
      I1 => input_wr,
      I2 => p_vsync_in,
      I3 => vsync_d,
      I4 => \FSM_onehot_c_state_reg_n_0_[5]\,
      O => \FSM_onehot_c_state[5]_i_1_n_0\
    );
\FSM_onehot_c_state[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => input_wr_count_reg(3),
      I1 => skip_count(3),
      I2 => \FSM_onehot_c_state[5]_i_3_n_0\,
      O => in6
    );
\FSM_onehot_c_state[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => input_wr_count_reg(0),
      I1 => skip_count(0),
      I2 => skip_count(2),
      I3 => input_wr_count_reg(2),
      I4 => skip_count(1),
      I5 => input_wr_count_reg(1),
      O => \FSM_onehot_c_state[5]_i_3_n_0\
    );
\FSM_onehot_c_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => \FSM_onehot_c_state_reg_n_0_[5]\,
      I1 => vsync_d,
      I2 => p_vsync_in,
      I3 => pattern_wr,
      O => \FSM_onehot_c_state[6]_i_1_n_0\
    );
\FSM_onehot_c_state[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => pattern_wr,
      I1 => p_vsync_in,
      I2 => vsync_d,
      O => \FSM_onehot_c_state[7]_i_1_n_0\
    );
\FSM_onehot_c_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => p_clk_in,
      CE => '1',
      D => \FSM_onehot_c_state[0]_i_1_n_0\,
      PRE => \data_d2[9]_i_1_n_0\,
      Q => \FSM_onehot_c_state_reg_n_0_[0]\
    );
\FSM_onehot_c_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => \FSM_onehot_c_state[1]_i_1_n_0\,
      Q => \FSM_onehot_c_state_reg_n_0_[1]\
    );
\FSM_onehot_c_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => \FSM_onehot_c_state[2]_i_1_n_0\,
      Q => zero_wr
    );
\FSM_onehot_c_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => \FSM_onehot_c_state[3]_i_1_n_0\,
      Q => \FSM_onehot_c_state_reg_n_0_[3]\
    );
\FSM_onehot_c_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => \FSM_onehot_c_state[4]_i_1_n_0\,
      Q => input_wr
    );
\FSM_onehot_c_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => \FSM_onehot_c_state[5]_i_1_n_0\,
      Q => \FSM_onehot_c_state_reg_n_0_[5]\
    );
\FSM_onehot_c_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => \FSM_onehot_c_state[6]_i_1_n_0\,
      Q => pattern_wr
    );
\FSM_onehot_c_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => \FSM_onehot_c_state[7]_i_1_n_0\,
      Q => \FSM_onehot_c_state_reg_n_0_[7]\
    );
LRAM_INST1: component broncho_video_vfpne_0_0_blk_mem_gen_0
     port map (
      addra(16) => LRAM_INST1_i_3_n_0,
      addra(15) => LRAM_INST1_i_4_n_0,
      addra(14) => LRAM_INST1_i_5_n_0,
      addra(13) => LRAM_INST1_i_6_n_0,
      addra(12) => LRAM_INST1_i_7_n_0,
      addra(11) => LRAM_INST1_i_8_n_0,
      addra(10) => LRAM_INST1_i_9_n_0,
      addra(9) => LRAM_INST1_i_10_n_0,
      addra(8) => LRAM_INST1_i_11_n_0,
      addra(7) => LRAM_INST1_i_12_n_0,
      addra(6) => LRAM_INST1_i_13_n_0,
      addra(5) => LRAM_INST1_i_14_n_0,
      addra(4) => LRAM_INST1_i_15_n_0,
      addra(3) => LRAM_INST1_i_16_n_0,
      addra(2) => LRAM_INST1_i_17_n_0,
      addra(1) => LRAM_INST1_i_18_n_0,
      addra(0) => LRAM_INST1_i_19_n_0,
      addrb(16) => LRAM_INST1_i_41_n_0,
      addrb(15) => LRAM_INST1_i_42_n_0,
      addrb(14) => LRAM_INST1_i_43_n_0,
      addrb(13) => LRAM_INST1_i_44_n_0,
      addrb(12) => LRAM_INST1_i_45_n_0,
      addrb(11) => LRAM_INST1_i_46_n_0,
      addrb(10) => LRAM_INST1_i_47_n_0,
      addrb(9) => LRAM_INST1_i_48_n_0,
      addrb(8) => LRAM_INST1_i_49_n_0,
      addrb(7) => LRAM_INST1_i_50_n_0,
      addrb(6) => LRAM_INST1_i_51_n_0,
      addrb(5) => LRAM_INST1_i_52_n_0,
      addrb(4) => LRAM_INST1_i_53_n_0,
      addrb(3) => LRAM_INST1_i_54_n_0,
      addrb(2) => LRAM_INST1_i_55_n_0,
      addrb(1) => LRAM_INST1_i_56_n_0,
      addrb(0) => LRAM_INST1_i_57_n_0,
      clka => p_clk_in,
      clkb => p_clk_in,
      dina(19 downto 0) => dina(19 downto 0),
      doutb(19 downto 0) => ram1_rdata(19 downto 0),
      ena => ram1_wr_ck_en,
      enb => ram1_rd_ck_en,
      wea(0) => ram1_wr_en
    );
LRAM_INST1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_toggle,
      O => ram1_wr_ck_en
    );
LRAM_INST1_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(9),
      O => LRAM_INST1_i_10_n_0
    );
LRAM_INST1_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(8),
      O => LRAM_INST1_i_11_n_0
    );
LRAM_INST1_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(7),
      O => LRAM_INST1_i_12_n_0
    );
LRAM_INST1_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(6),
      O => LRAM_INST1_i_13_n_0
    );
LRAM_INST1_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(5),
      O => LRAM_INST1_i_14_n_0
    );
LRAM_INST1_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(4),
      O => LRAM_INST1_i_15_n_0
    );
LRAM_INST1_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(3),
      O => LRAM_INST1_i_16_n_0
    );
LRAM_INST1_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(2),
      O => LRAM_INST1_i_17_n_0
    );
LRAM_INST1_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(1),
      O => LRAM_INST1_i_18_n_0
    );
LRAM_INST1_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(0),
      O => LRAM_INST1_i_19_n_0
    );
LRAM_INST1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => p_de_in,
      O => ram1_wr_en
    );
LRAM_INST1_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__3_n_4\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => p_data_in(9),
      I4 => zero_wr_reg_n_0,
      O => dina(19)
    );
LRAM_INST1_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__3_n_5\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => p_data_in(8),
      I4 => zero_wr_reg_n_0,
      O => dina(18)
    );
LRAM_INST1_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__3_n_6\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => p_data_in(7),
      I4 => zero_wr_reg_n_0,
      O => dina(17)
    );
LRAM_INST1_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__3_n_7\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => p_data_in(6),
      I4 => zero_wr_reg_n_0,
      O => dina(16)
    );
LRAM_INST1_i_24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__2_n_4\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => p_data_in(5),
      I4 => zero_wr_reg_n_0,
      O => dina(15)
    );
LRAM_INST1_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__2_n_5\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => p_data_in(4),
      I4 => zero_wr_reg_n_0,
      O => dina(14)
    );
LRAM_INST1_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__2_n_6\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => p_data_in(3),
      I4 => zero_wr_reg_n_0,
      O => dina(13)
    );
LRAM_INST1_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__2_n_7\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => p_data_in(2),
      I4 => zero_wr_reg_n_0,
      O => dina(12)
    );
LRAM_INST1_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__1_n_4\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => p_data_in(1),
      I4 => zero_wr_reg_n_0,
      O => dina(11)
    );
LRAM_INST1_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__1_n_5\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => p_data_in(0),
      I4 => zero_wr_reg_n_0,
      O => dina(10)
    );
LRAM_INST1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(16),
      O => LRAM_INST1_i_3_n_0
    );
LRAM_INST1_i_30: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__1_n_6\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => L(10),
      I4 => zero_wr_reg_n_0,
      O => dina(9)
    );
LRAM_INST1_i_31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__1_n_7\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => L(11),
      I4 => zero_wr_reg_n_0,
      O => dina(8)
    );
LRAM_INST1_i_32: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__0_n_4\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => L(12),
      I4 => zero_wr_reg_n_0,
      O => dina(7)
    );
LRAM_INST1_i_33: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__0_n_5\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => L(13),
      I4 => zero_wr_reg_n_0,
      O => dina(6)
    );
LRAM_INST1_i_34: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__0_n_6\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => L(14),
      I4 => zero_wr_reg_n_0,
      O => dina(5)
    );
LRAM_INST1_i_35: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry__0_n_7\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => L(15),
      I4 => zero_wr_reg_n_0,
      O => dina(4)
    );
LRAM_INST1_i_36: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry_n_4\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => L(16),
      I4 => zero_wr_reg_n_0,
      O => dina(3)
    );
LRAM_INST1_i_37: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry_n_5\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => L(17),
      I4 => zero_wr_reg_n_0,
      O => dina(2)
    );
LRAM_INST1_i_38: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry_n_6\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => L(18),
      I4 => zero_wr_reg_n_0,
      O => dina(1)
    );
LRAM_INST1_i_39: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \minusOp_inferred__1/i__carry_n_7\,
      I1 => pattern_wr_reg_n_0,
      I2 => input_wr_reg_n_0,
      I3 => L(19),
      I4 => zero_wr_reg_n_0,
      O => dina(0)
    );
LRAM_INST1_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(15),
      O => LRAM_INST1_i_4_n_0
    );
LRAM_INST1_i_40: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => p_de_in,
      O => ram1_rd_ck_en
    );
LRAM_INST1_i_41: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(16),
      O => LRAM_INST1_i_41_n_0
    );
LRAM_INST1_i_42: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(15),
      O => LRAM_INST1_i_42_n_0
    );
LRAM_INST1_i_43: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(14),
      O => LRAM_INST1_i_43_n_0
    );
LRAM_INST1_i_44: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(13),
      O => LRAM_INST1_i_44_n_0
    );
LRAM_INST1_i_45: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(12),
      O => LRAM_INST1_i_45_n_0
    );
LRAM_INST1_i_46: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(11),
      O => LRAM_INST1_i_46_n_0
    );
LRAM_INST1_i_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(10),
      O => LRAM_INST1_i_47_n_0
    );
LRAM_INST1_i_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(9),
      O => LRAM_INST1_i_48_n_0
    );
LRAM_INST1_i_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(8),
      O => LRAM_INST1_i_49_n_0
    );
LRAM_INST1_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(14),
      O => LRAM_INST1_i_5_n_0
    );
LRAM_INST1_i_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(7),
      O => LRAM_INST1_i_50_n_0
    );
LRAM_INST1_i_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(6),
      O => LRAM_INST1_i_51_n_0
    );
LRAM_INST1_i_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(5),
      O => LRAM_INST1_i_52_n_0
    );
LRAM_INST1_i_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(4),
      O => LRAM_INST1_i_53_n_0
    );
LRAM_INST1_i_54: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(3),
      O => LRAM_INST1_i_54_n_0
    );
LRAM_INST1_i_55: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(2),
      O => LRAM_INST1_i_55_n_0
    );
LRAM_INST1_i_56: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(1),
      O => LRAM_INST1_i_56_n_0
    );
LRAM_INST1_i_57: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^done_int_reg_0\,
      I1 => pix_cnt_2_reg(0),
      O => LRAM_INST1_i_57_n_0
    );
LRAM_INST1_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(13),
      O => LRAM_INST1_i_6_n_0
    );
LRAM_INST1_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(12),
      O => LRAM_INST1_i_7_n_0
    );
LRAM_INST1_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(11),
      O => LRAM_INST1_i_8_n_0
    );
LRAM_INST1_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => pattern_wr_reg_n_0,
      I1 => input_wr_reg_n_0,
      I2 => zero_wr_reg_n_0,
      I3 => pix_cnt_reg(10),
      O => LRAM_INST1_i_9_n_0
    );
compute_d_reg: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => compute,
      Q => compute_d
    );
\data_d2[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => arst_n,
      O => \data_d2[9]_i_1_n_0\
    );
\data_d2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => L(19),
      Q => p_data_out(0)
    );
\data_d2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => L(18),
      Q => p_data_out(1)
    );
\data_d2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => L(17),
      Q => p_data_out(2)
    );
\data_d2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => L(16),
      Q => p_data_out(3)
    );
\data_d2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => L(15),
      Q => p_data_out(4)
    );
\data_d2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => L(14),
      Q => p_data_out(5)
    );
\data_d2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => L(13),
      Q => p_data_out(6)
    );
\data_d2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => L(12),
      Q => p_data_out(7)
    );
\data_d2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => L(11),
      Q => p_data_out(8)
    );
\data_d2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => L(10),
      Q => p_data_out(9)
    );
\data_d_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => p_data_in(0),
      Q => L(19)
    );
\data_d_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => p_data_in(1),
      Q => L(18)
    );
\data_d_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => p_data_in(2),
      Q => L(17)
    );
\data_d_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => p_data_in(3),
      Q => L(16)
    );
\data_d_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => p_data_in(4),
      Q => L(15)
    );
\data_d_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => p_data_in(5),
      Q => L(14)
    );
\data_d_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => p_data_in(6),
      Q => L(13)
    );
\data_d_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => p_data_in(7),
      Q => L(12)
    );
\data_d_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => p_data_in(8),
      Q => L(11)
    );
\data_d_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => p_data_in(9),
      Q => L(10)
    );
done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFAAAA"
    )
        port map (
      I0 => \FSM_onehot_c_state_reg_n_0_[7]\,
      I1 => compute,
      I2 => compute_d,
      I3 => \FSM_onehot_c_state_reg_n_0_[0]\,
      I4 => \^done_int_reg_0\,
      O => done_int_i_1_n_0
    );
done_int_reg: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => done_int_i_1_n_0,
      Q => \^done_int_reg_0\
    );
\frame_min[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_data_in(0),
      I1 => frame_min_compute_clr_reg_n_0,
      O => \frame_min[0]_i_1_n_0\
    );
\frame_min[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_data_in(1),
      I1 => frame_min_compute_clr_reg_n_0,
      O => \frame_min[1]_i_1_n_0\
    );
\frame_min[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_data_in(2),
      I1 => frame_min_compute_clr_reg_n_0,
      O => \frame_min[2]_i_1_n_0\
    );
\frame_min[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_data_in(3),
      I1 => frame_min_compute_clr_reg_n_0,
      O => \frame_min[3]_i_1_n_0\
    );
\frame_min[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_data_in(4),
      I1 => frame_min_compute_clr_reg_n_0,
      O => \frame_min[4]_i_1_n_0\
    );
\frame_min[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_data_in(5),
      I1 => frame_min_compute_clr_reg_n_0,
      O => \frame_min[5]_i_1_n_0\
    );
\frame_min[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_data_in(6),
      I1 => frame_min_compute_clr_reg_n_0,
      O => \frame_min[6]_i_1_n_0\
    );
\frame_min[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_data_in(7),
      I1 => frame_min_compute_clr_reg_n_0,
      O => \frame_min[7]_i_1_n_0\
    );
\frame_min[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_data_in(8),
      I1 => frame_min_compute_clr_reg_n_0,
      O => \frame_min[8]_i_1_n_0\
    );
\frame_min[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => frame_min_compute_clr_reg_n_0,
      I1 => p_de_in,
      I2 => gtOp,
      I3 => frame_min_compute_en_reg_n_0,
      O => \frame_min[9]_i_1_n_0\
    );
\frame_min[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_data_in(9),
      I1 => frame_min_compute_clr_reg_n_0,
      O => \frame_min[9]_i_2_n_0\
    );
frame_min_compute_clr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F0F2FFF2F0F2F0"
    )
        port map (
      I0 => compute,
      I1 => compute_d,
      I2 => \FSM_onehot_c_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_c_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_c_state_reg_n_0_[3]\,
      I5 => frame_min_compute_clr_reg_n_0,
      O => frame_min_compute_clr_i_1_n_0
    );
frame_min_compute_clr_reg: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => frame_min_compute_clr_i_1_n_0,
      Q => frame_min_compute_clr_reg_n_0
    );
frame_min_compute_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => \FSM_onehot_c_state[4]_i_1_n_0\,
      I1 => input_wr,
      I2 => \FSM_onehot_c_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_c_state_reg_n_0_[1]\,
      I4 => zero_wr,
      I5 => frame_min_compute_en_reg_n_0,
      O => frame_min_compute_en_i_1_n_0
    );
frame_min_compute_en_reg: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => frame_min_compute_en_i_1_n_0,
      Q => frame_min_compute_en_reg_n_0
    );
\frame_min_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => p_clk_in,
      CE => \frame_min[9]_i_1_n_0\,
      D => \frame_min[0]_i_1_n_0\,
      PRE => \data_d2[9]_i_1_n_0\,
      Q => frame_min(0)
    );
\frame_min_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => p_clk_in,
      CE => \frame_min[9]_i_1_n_0\,
      D => \frame_min[1]_i_1_n_0\,
      PRE => \data_d2[9]_i_1_n_0\,
      Q => frame_min(1)
    );
\frame_min_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => p_clk_in,
      CE => \frame_min[9]_i_1_n_0\,
      D => \frame_min[2]_i_1_n_0\,
      PRE => \data_d2[9]_i_1_n_0\,
      Q => frame_min(2)
    );
\frame_min_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => p_clk_in,
      CE => \frame_min[9]_i_1_n_0\,
      D => \frame_min[3]_i_1_n_0\,
      PRE => \data_d2[9]_i_1_n_0\,
      Q => frame_min(3)
    );
\frame_min_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => p_clk_in,
      CE => \frame_min[9]_i_1_n_0\,
      D => \frame_min[4]_i_1_n_0\,
      PRE => \data_d2[9]_i_1_n_0\,
      Q => frame_min(4)
    );
\frame_min_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => p_clk_in,
      CE => \frame_min[9]_i_1_n_0\,
      D => \frame_min[5]_i_1_n_0\,
      PRE => \data_d2[9]_i_1_n_0\,
      Q => frame_min(5)
    );
\frame_min_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => p_clk_in,
      CE => \frame_min[9]_i_1_n_0\,
      D => \frame_min[6]_i_1_n_0\,
      PRE => \data_d2[9]_i_1_n_0\,
      Q => frame_min(6)
    );
\frame_min_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => p_clk_in,
      CE => \frame_min[9]_i_1_n_0\,
      D => \frame_min[7]_i_1_n_0\,
      PRE => \data_d2[9]_i_1_n_0\,
      Q => frame_min(7)
    );
\frame_min_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => p_clk_in,
      CE => \frame_min[9]_i_1_n_0\,
      D => \frame_min[8]_i_1_n_0\,
      PRE => \data_d2[9]_i_1_n_0\,
      Q => frame_min(8)
    );
\frame_min_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => p_clk_in,
      CE => \frame_min[9]_i_1_n_0\,
      D => \frame_min[9]_i_2_n_0\,
      PRE => \data_d2[9]_i_1_n_0\,
      Q => frame_min(9)
    );
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp_carry_n_0,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3) => gtOp_carry_i_1_n_0,
      DI(2) => gtOp_carry_i_2_n_0,
      DI(1) => gtOp_carry_i_3_n_0,
      DI(0) => gtOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => gtOp_carry_i_5_n_0,
      S(2) => gtOp_carry_i_6_n_0,
      S(1) => gtOp_carry_i_7_n_0,
      S(0) => gtOp_carry_i_8_n_0
    );
\gtOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gtOp_carry_n_0,
      CO(3 downto 1) => \NLW_gtOp_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => gtOp,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gtOp_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_gtOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \gtOp_carry__0_i_2_n_0\
    );
\gtOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => frame_min(8),
      I1 => p_data_in(8),
      I2 => p_data_in(9),
      I3 => frame_min(9),
      O => \gtOp_carry__0_i_1_n_0\
    );
\gtOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_min(8),
      I1 => p_data_in(8),
      I2 => frame_min(9),
      I3 => p_data_in(9),
      O => \gtOp_carry__0_i_2_n_0\
    );
gtOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => frame_min(6),
      I1 => p_data_in(6),
      I2 => p_data_in(7),
      I3 => frame_min(7),
      O => gtOp_carry_i_1_n_0
    );
gtOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => frame_min(4),
      I1 => p_data_in(4),
      I2 => p_data_in(5),
      I3 => frame_min(5),
      O => gtOp_carry_i_2_n_0
    );
gtOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => frame_min(2),
      I1 => p_data_in(2),
      I2 => p_data_in(3),
      I3 => frame_min(3),
      O => gtOp_carry_i_3_n_0
    );
gtOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => frame_min(0),
      I1 => p_data_in(0),
      I2 => p_data_in(1),
      I3 => frame_min(1),
      O => gtOp_carry_i_4_n_0
    );
gtOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_min(6),
      I1 => p_data_in(6),
      I2 => frame_min(7),
      I3 => p_data_in(7),
      O => gtOp_carry_i_5_n_0
    );
gtOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_min(4),
      I1 => p_data_in(4),
      I2 => frame_min(5),
      I3 => p_data_in(5),
      O => gtOp_carry_i_6_n_0
    );
gtOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_min(2),
      I1 => p_data_in(2),
      I2 => frame_min(3),
      I3 => p_data_in(3),
      O => gtOp_carry_i_7_n_0
    );
gtOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_min(0),
      I1 => p_data_in(0),
      I2 => frame_min(1),
      I3 => p_data_in(1),
      O => gtOp_carry_i_8_n_0
    );
href_d2_reg: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => href_d,
      Q => href_d2
    );
href_d_reg: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => p_de_in,
      Q => href_d
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(12),
      I1 => frame_min(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(13),
      I1 => frame_min(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(14),
      I1 => frame_min(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(15),
      I1 => frame_min(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_data_in(1),
      I1 => frame_min(1),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_data_in(0),
      I1 => frame_min(0),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(10),
      I1 => frame_min(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(11),
      I1 => frame_min(8),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_data_in(5),
      I1 => frame_min(5),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_data_in(4),
      I1 => frame_min(4),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_data_in(3),
      I1 => frame_min(3),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_data_in(2),
      I1 => frame_min(2),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_data_in(9),
      I1 => frame_min(9),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_data_in(8),
      I1 => frame_min(8),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_data_in(7),
      I1 => frame_min(7),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_data_in(6),
      I1 => frame_min(6),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(16),
      I1 => frame_min(3),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(17),
      I1 => frame_min(2),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(18),
      I1 => frame_min(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(19),
      I1 => frame_min(0),
      O => \i__carry_i_4_n_0\
    );
\input_wr_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => input_wr_count_reg(0),
      O => plusOp(0)
    );
\input_wr_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => input_wr_count_reg(0),
      I1 => input_wr_count_reg(1),
      O => plusOp(1)
    );
\input_wr_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => input_wr_count_reg(0),
      I1 => input_wr_count_reg(1),
      I2 => input_wr_count_reg(2),
      O => plusOp(2)
    );
\input_wr_count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => input_wr,
      I1 => p_vsync_in,
      I2 => vsync_d,
      O => input_wr_count
    );
\input_wr_count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => input_wr_count_reg(1),
      I1 => input_wr_count_reg(0),
      I2 => input_wr_count_reg(2),
      I3 => input_wr_count_reg(3),
      O => plusOp(3)
    );
\input_wr_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => input_wr_count,
      CLR => \data_d2[9]_i_1_n_0\,
      D => plusOp(0),
      Q => input_wr_count_reg(0)
    );
\input_wr_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => input_wr_count,
      CLR => \data_d2[9]_i_1_n_0\,
      D => plusOp(1),
      Q => input_wr_count_reg(1)
    );
\input_wr_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => input_wr_count,
      CLR => \data_d2[9]_i_1_n_0\,
      D => plusOp(2),
      Q => input_wr_count_reg(2)
    );
\input_wr_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => input_wr_count,
      CLR => \data_d2[9]_i_1_n_0\,
      D => plusOp(3),
      Q => input_wr_count_reg(3)
    );
input_wr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFB0"
    )
        port map (
      I0 => p_vsync_in,
      I1 => vsync_d,
      I2 => input_wr,
      I3 => input_wr_reg_n_0,
      O => input_wr_i_1_n_0
    );
input_wr_reg: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => input_wr_i_1_n_0,
      Q => input_wr_reg_n_0
    );
\minusOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__1/i__carry_n_0\,
      CO(2) => \minusOp_inferred__1/i__carry_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => L(16),
      DI(2) => L(17),
      DI(1) => L(18),
      DI(0) => L(19),
      O(3) => \minusOp_inferred__1/i__carry_n_4\,
      O(2) => \minusOp_inferred__1/i__carry_n_5\,
      O(1) => \minusOp_inferred__1/i__carry_n_6\,
      O(0) => \minusOp_inferred__1/i__carry_n_7\,
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\minusOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry_n_0\,
      CO(3) => \minusOp_inferred__1/i__carry__0_n_0\,
      CO(2) => \minusOp_inferred__1/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => L(12),
      DI(2) => L(13),
      DI(1) => L(14),
      DI(0) => L(15),
      O(3) => \minusOp_inferred__1/i__carry__0_n_4\,
      O(2) => \minusOp_inferred__1/i__carry__0_n_5\,
      O(1) => \minusOp_inferred__1/i__carry__0_n_6\,
      O(0) => \minusOp_inferred__1/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\minusOp_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry__0_n_0\,
      CO(3) => \minusOp_inferred__1/i__carry__1_n_0\,
      CO(2) => \minusOp_inferred__1/i__carry__1_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry__1_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => p_data_in(1 downto 0),
      DI(1) => L(10),
      DI(0) => L(11),
      O(3) => \minusOp_inferred__1/i__carry__1_n_4\,
      O(2) => \minusOp_inferred__1/i__carry__1_n_5\,
      O(1) => \minusOp_inferred__1/i__carry__1_n_6\,
      O(0) => \minusOp_inferred__1/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\minusOp_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry__1_n_0\,
      CO(3) => \minusOp_inferred__1/i__carry__2_n_0\,
      CO(2) => \minusOp_inferred__1/i__carry__2_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry__2_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_data_in(5 downto 2),
      O(3) => \minusOp_inferred__1/i__carry__2_n_4\,
      O(2) => \minusOp_inferred__1/i__carry__2_n_5\,
      O(1) => \minusOp_inferred__1/i__carry__2_n_6\,
      O(0) => \minusOp_inferred__1/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\minusOp_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry__2_n_0\,
      CO(3) => \NLW_minusOp_inferred__1/i__carry__3_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_inferred__1/i__carry__3_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry__3_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => p_data_in(8 downto 6),
      O(3) => \minusOp_inferred__1/i__carry__3_n_4\,
      O(2) => \minusOp_inferred__1/i__carry__3_n_5\,
      O(1) => \minusOp_inferred__1/i__carry__3_n_6\,
      O(0) => \minusOp_inferred__1/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
p_de_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => href_d2,
      I1 => \^done_int_reg_0\,
      O => p_de_out
    );
pattern_wr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFB0"
    )
        port map (
      I0 => p_vsync_in,
      I1 => vsync_d,
      I2 => pattern_wr,
      I3 => pattern_wr_reg_n_0,
      O => pattern_wr_i_1_n_0
    );
pattern_wr_reg: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => pattern_wr_i_1_n_0,
      Q => pattern_wr_reg_n_0
    );
\pix_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => pix_cnt_clr_reg_n_0,
      I1 => pix_toggle,
      I2 => pix_cnt_en_reg_n_0,
      O => \pix_cnt[0]_i_1_n_0\
    );
\pix_cnt[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(0),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[0]_i_3_n_0\
    );
\pix_cnt[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(3),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[0]_i_4_n_0\
    );
\pix_cnt[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(2),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[0]_i_5_n_0\
    );
\pix_cnt[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(1),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[0]_i_6_n_0\
    );
\pix_cnt[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pix_cnt_reg(0),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[0]_i_7_n_0\
    );
\pix_cnt[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(15),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[12]_i_2_n_0\
    );
\pix_cnt[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(14),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[12]_i_3_n_0\
    );
\pix_cnt[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(13),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[12]_i_4_n_0\
    );
\pix_cnt[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(12),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[12]_i_5_n_0\
    );
\pix_cnt[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(16),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[16]_i_2_n_0\
    );
\pix_cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(7),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[4]_i_2_n_0\
    );
\pix_cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(6),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[4]_i_3_n_0\
    );
\pix_cnt[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(5),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[4]_i_4_n_0\
    );
\pix_cnt[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(4),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[4]_i_5_n_0\
    );
\pix_cnt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(11),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[8]_i_2_n_0\
    );
\pix_cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(10),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[8]_i_3_n_0\
    );
\pix_cnt[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(9),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[8]_i_4_n_0\
    );
\pix_cnt[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt_reg(8),
      I1 => pix_cnt_clr_reg_n_0,
      O => \pix_cnt[8]_i_5_n_0\
    );
\pix_cnt_2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => vsync_d,
      I1 => p_vsync_in,
      I2 => pix_toggle,
      I3 => p_de_in,
      O => \pix_cnt_2[0]_i_1_n_0\
    );
\pix_cnt_2[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(0),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[0]_i_3_n_0\
    );
\pix_cnt_2[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(3),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[0]_i_4_n_0\
    );
\pix_cnt_2[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(2),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[0]_i_5_n_0\
    );
\pix_cnt_2[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(1),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[0]_i_6_n_0\
    );
\pix_cnt_2[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => pix_cnt_2_reg(0),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[0]_i_7_n_0\
    );
\pix_cnt_2[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(15),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[12]_i_2_n_0\
    );
\pix_cnt_2[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(14),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[12]_i_3_n_0\
    );
\pix_cnt_2[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(13),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[12]_i_4_n_0\
    );
\pix_cnt_2[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(12),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[12]_i_5_n_0\
    );
\pix_cnt_2[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(16),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[16]_i_2_n_0\
    );
\pix_cnt_2[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(7),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[4]_i_2_n_0\
    );
\pix_cnt_2[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(6),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[4]_i_3_n_0\
    );
\pix_cnt_2[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(5),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[4]_i_4_n_0\
    );
\pix_cnt_2[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(4),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[4]_i_5_n_0\
    );
\pix_cnt_2[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(11),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[8]_i_2_n_0\
    );
\pix_cnt_2[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(10),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[8]_i_3_n_0\
    );
\pix_cnt_2[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(9),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[8]_i_4_n_0\
    );
\pix_cnt_2[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_2_reg(8),
      I1 => vsync_d,
      I2 => p_vsync_in,
      O => \pix_cnt_2[8]_i_5_n_0\
    );
\pix_cnt_2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[0]_i_2_n_7\,
      Q => pix_cnt_2_reg(0)
    );
\pix_cnt_2_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pix_cnt_2_reg[0]_i_2_n_0\,
      CO(2) => \pix_cnt_2_reg[0]_i_2_n_1\,
      CO(1) => \pix_cnt_2_reg[0]_i_2_n_2\,
      CO(0) => \pix_cnt_2_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \pix_cnt_2[0]_i_3_n_0\,
      O(3) => \pix_cnt_2_reg[0]_i_2_n_4\,
      O(2) => \pix_cnt_2_reg[0]_i_2_n_5\,
      O(1) => \pix_cnt_2_reg[0]_i_2_n_6\,
      O(0) => \pix_cnt_2_reg[0]_i_2_n_7\,
      S(3) => \pix_cnt_2[0]_i_4_n_0\,
      S(2) => \pix_cnt_2[0]_i_5_n_0\,
      S(1) => \pix_cnt_2[0]_i_6_n_0\,
      S(0) => \pix_cnt_2[0]_i_7_n_0\
    );
\pix_cnt_2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[8]_i_1_n_5\,
      Q => pix_cnt_2_reg(10)
    );
\pix_cnt_2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[8]_i_1_n_4\,
      Q => pix_cnt_2_reg(11)
    );
\pix_cnt_2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[12]_i_1_n_7\,
      Q => pix_cnt_2_reg(12)
    );
\pix_cnt_2_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_cnt_2_reg[8]_i_1_n_0\,
      CO(3) => \pix_cnt_2_reg[12]_i_1_n_0\,
      CO(2) => \pix_cnt_2_reg[12]_i_1_n_1\,
      CO(1) => \pix_cnt_2_reg[12]_i_1_n_2\,
      CO(0) => \pix_cnt_2_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pix_cnt_2_reg[12]_i_1_n_4\,
      O(2) => \pix_cnt_2_reg[12]_i_1_n_5\,
      O(1) => \pix_cnt_2_reg[12]_i_1_n_6\,
      O(0) => \pix_cnt_2_reg[12]_i_1_n_7\,
      S(3) => \pix_cnt_2[12]_i_2_n_0\,
      S(2) => \pix_cnt_2[12]_i_3_n_0\,
      S(1) => \pix_cnt_2[12]_i_4_n_0\,
      S(0) => \pix_cnt_2[12]_i_5_n_0\
    );
\pix_cnt_2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[12]_i_1_n_6\,
      Q => pix_cnt_2_reg(13)
    );
\pix_cnt_2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[12]_i_1_n_5\,
      Q => pix_cnt_2_reg(14)
    );
\pix_cnt_2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[12]_i_1_n_4\,
      Q => pix_cnt_2_reg(15)
    );
\pix_cnt_2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[16]_i_1_n_7\,
      Q => pix_cnt_2_reg(16)
    );
\pix_cnt_2_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_cnt_2_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_pix_cnt_2_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_pix_cnt_2_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \pix_cnt_2_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \pix_cnt_2[16]_i_2_n_0\
    );
\pix_cnt_2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[0]_i_2_n_6\,
      Q => pix_cnt_2_reg(1)
    );
\pix_cnt_2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[0]_i_2_n_5\,
      Q => pix_cnt_2_reg(2)
    );
\pix_cnt_2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[0]_i_2_n_4\,
      Q => pix_cnt_2_reg(3)
    );
\pix_cnt_2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[4]_i_1_n_7\,
      Q => pix_cnt_2_reg(4)
    );
\pix_cnt_2_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_cnt_2_reg[0]_i_2_n_0\,
      CO(3) => \pix_cnt_2_reg[4]_i_1_n_0\,
      CO(2) => \pix_cnt_2_reg[4]_i_1_n_1\,
      CO(1) => \pix_cnt_2_reg[4]_i_1_n_2\,
      CO(0) => \pix_cnt_2_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pix_cnt_2_reg[4]_i_1_n_4\,
      O(2) => \pix_cnt_2_reg[4]_i_1_n_5\,
      O(1) => \pix_cnt_2_reg[4]_i_1_n_6\,
      O(0) => \pix_cnt_2_reg[4]_i_1_n_7\,
      S(3) => \pix_cnt_2[4]_i_2_n_0\,
      S(2) => \pix_cnt_2[4]_i_3_n_0\,
      S(1) => \pix_cnt_2[4]_i_4_n_0\,
      S(0) => \pix_cnt_2[4]_i_5_n_0\
    );
\pix_cnt_2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[4]_i_1_n_6\,
      Q => pix_cnt_2_reg(5)
    );
\pix_cnt_2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[4]_i_1_n_5\,
      Q => pix_cnt_2_reg(6)
    );
\pix_cnt_2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[4]_i_1_n_4\,
      Q => pix_cnt_2_reg(7)
    );
\pix_cnt_2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[8]_i_1_n_7\,
      Q => pix_cnt_2_reg(8)
    );
\pix_cnt_2_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_cnt_2_reg[4]_i_1_n_0\,
      CO(3) => \pix_cnt_2_reg[8]_i_1_n_0\,
      CO(2) => \pix_cnt_2_reg[8]_i_1_n_1\,
      CO(1) => \pix_cnt_2_reg[8]_i_1_n_2\,
      CO(0) => \pix_cnt_2_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pix_cnt_2_reg[8]_i_1_n_4\,
      O(2) => \pix_cnt_2_reg[8]_i_1_n_5\,
      O(1) => \pix_cnt_2_reg[8]_i_1_n_6\,
      O(0) => \pix_cnt_2_reg[8]_i_1_n_7\,
      S(3) => \pix_cnt_2[8]_i_2_n_0\,
      S(2) => \pix_cnt_2[8]_i_3_n_0\,
      S(1) => \pix_cnt_2[8]_i_4_n_0\,
      S(0) => \pix_cnt_2[8]_i_5_n_0\
    );
\pix_cnt_2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt_2[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_2_reg[8]_i_1_n_6\,
      Q => pix_cnt_2_reg(9)
    );
pix_cnt_clr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFFFEFEFE00"
    )
        port map (
      I0 => \FSM_onehot_c_state_reg_n_0_[1]\,
      I1 => pix_cnt_clr_i_2_n_0,
      I2 => \FSM_onehot_c_state[1]_i_2_n_0\,
      I3 => pix_cnt_clr_i_3_n_0,
      I4 => pix_cnt_clr_i_4_n_0,
      I5 => pix_cnt_clr_reg_n_0,
      O => pix_cnt_clr_i_1_n_0
    );
pix_cnt_clr_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => p_vsync_in,
      I1 => vsync_d,
      I2 => pattern_wr,
      I3 => zero_wr,
      I4 => input_wr,
      O => pix_cnt_clr_i_2_n_0
    );
pix_cnt_clr_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_c_state_reg_n_0_[7]\,
      I1 => pattern_wr,
      I2 => input_wr,
      I3 => \FSM_onehot_c_state_reg_n_0_[5]\,
      O => pix_cnt_clr_i_3_n_0
    );
pix_cnt_clr_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => zero_wr,
      I1 => \FSM_onehot_c_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_c_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_c_state_reg_n_0_[1]\,
      O => pix_cnt_clr_i_4_n_0
    );
pix_cnt_clr_reg: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => pix_cnt_clr_i_1_n_0,
      Q => pix_cnt_clr_reg_n_0
    );
pix_cnt_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pix_cnt_en_i_2_n_0,
      I1 => pix_cnt_en,
      I2 => pix_cnt_en_reg_n_0,
      O => pix_cnt_en_i_1_n_0
    );
pix_cnt_en_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE00EEEEEE00EE"
    )
        port map (
      I0 => zero_wr,
      I1 => pix_cnt_en_i_4_n_0,
      I2 => \FSM_onehot_c_state_reg_n_0_[5]\,
      I3 => vsync_d,
      I4 => p_vsync_in,
      I5 => \FSM_onehot_c_state_reg_n_0_[3]\,
      O => pix_cnt_en_i_2_n_0
    );
pix_cnt_en_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pattern_wr,
      I1 => \FSM_onehot_c_state_reg_n_0_[5]\,
      I2 => zero_wr,
      I3 => \FSM_onehot_c_state_reg_n_0_[1]\,
      I4 => input_wr,
      I5 => \FSM_onehot_c_state_reg_n_0_[3]\,
      O => pix_cnt_en
    );
pix_cnt_en_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4F4F4F0"
    )
        port map (
      I0 => vsync_d,
      I1 => p_vsync_in,
      I2 => input_wr,
      I3 => \FSM_onehot_c_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_c_state_reg_n_0_[5]\,
      I5 => pattern_wr,
      O => pix_cnt_en_i_4_n_0
    );
pix_cnt_en_reg: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => pix_cnt_en_i_1_n_0,
      Q => pix_cnt_en_reg_n_0
    );
\pix_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[0]_i_2_n_7\,
      Q => pix_cnt_reg(0)
    );
\pix_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pix_cnt_reg[0]_i_2_n_0\,
      CO(2) => \pix_cnt_reg[0]_i_2_n_1\,
      CO(1) => \pix_cnt_reg[0]_i_2_n_2\,
      CO(0) => \pix_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \pix_cnt[0]_i_3_n_0\,
      O(3) => \pix_cnt_reg[0]_i_2_n_4\,
      O(2) => \pix_cnt_reg[0]_i_2_n_5\,
      O(1) => \pix_cnt_reg[0]_i_2_n_6\,
      O(0) => \pix_cnt_reg[0]_i_2_n_7\,
      S(3) => \pix_cnt[0]_i_4_n_0\,
      S(2) => \pix_cnt[0]_i_5_n_0\,
      S(1) => \pix_cnt[0]_i_6_n_0\,
      S(0) => \pix_cnt[0]_i_7_n_0\
    );
\pix_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[8]_i_1_n_5\,
      Q => pix_cnt_reg(10)
    );
\pix_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[8]_i_1_n_4\,
      Q => pix_cnt_reg(11)
    );
\pix_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[12]_i_1_n_7\,
      Q => pix_cnt_reg(12)
    );
\pix_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_cnt_reg[8]_i_1_n_0\,
      CO(3) => \pix_cnt_reg[12]_i_1_n_0\,
      CO(2) => \pix_cnt_reg[12]_i_1_n_1\,
      CO(1) => \pix_cnt_reg[12]_i_1_n_2\,
      CO(0) => \pix_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pix_cnt_reg[12]_i_1_n_4\,
      O(2) => \pix_cnt_reg[12]_i_1_n_5\,
      O(1) => \pix_cnt_reg[12]_i_1_n_6\,
      O(0) => \pix_cnt_reg[12]_i_1_n_7\,
      S(3) => \pix_cnt[12]_i_2_n_0\,
      S(2) => \pix_cnt[12]_i_3_n_0\,
      S(1) => \pix_cnt[12]_i_4_n_0\,
      S(0) => \pix_cnt[12]_i_5_n_0\
    );
\pix_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[12]_i_1_n_6\,
      Q => pix_cnt_reg(13)
    );
\pix_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[12]_i_1_n_5\,
      Q => pix_cnt_reg(14)
    );
\pix_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[12]_i_1_n_4\,
      Q => pix_cnt_reg(15)
    );
\pix_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[16]_i_1_n_7\,
      Q => pix_cnt_reg(16)
    );
\pix_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_cnt_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_pix_cnt_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_pix_cnt_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \pix_cnt_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \pix_cnt[16]_i_2_n_0\
    );
\pix_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[0]_i_2_n_6\,
      Q => pix_cnt_reg(1)
    );
\pix_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[0]_i_2_n_5\,
      Q => pix_cnt_reg(2)
    );
\pix_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[0]_i_2_n_4\,
      Q => pix_cnt_reg(3)
    );
\pix_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[4]_i_1_n_7\,
      Q => pix_cnt_reg(4)
    );
\pix_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_cnt_reg[0]_i_2_n_0\,
      CO(3) => \pix_cnt_reg[4]_i_1_n_0\,
      CO(2) => \pix_cnt_reg[4]_i_1_n_1\,
      CO(1) => \pix_cnt_reg[4]_i_1_n_2\,
      CO(0) => \pix_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pix_cnt_reg[4]_i_1_n_4\,
      O(2) => \pix_cnt_reg[4]_i_1_n_5\,
      O(1) => \pix_cnt_reg[4]_i_1_n_6\,
      O(0) => \pix_cnt_reg[4]_i_1_n_7\,
      S(3) => \pix_cnt[4]_i_2_n_0\,
      S(2) => \pix_cnt[4]_i_3_n_0\,
      S(1) => \pix_cnt[4]_i_4_n_0\,
      S(0) => \pix_cnt[4]_i_5_n_0\
    );
\pix_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[4]_i_1_n_6\,
      Q => pix_cnt_reg(5)
    );
\pix_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[4]_i_1_n_5\,
      Q => pix_cnt_reg(6)
    );
\pix_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[4]_i_1_n_4\,
      Q => pix_cnt_reg(7)
    );
\pix_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[8]_i_1_n_7\,
      Q => pix_cnt_reg(8)
    );
\pix_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_cnt_reg[4]_i_1_n_0\,
      CO(3) => \pix_cnt_reg[8]_i_1_n_0\,
      CO(2) => \pix_cnt_reg[8]_i_1_n_1\,
      CO(1) => \pix_cnt_reg[8]_i_1_n_2\,
      CO(0) => \pix_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pix_cnt_reg[8]_i_1_n_4\,
      O(2) => \pix_cnt_reg[8]_i_1_n_5\,
      O(1) => \pix_cnt_reg[8]_i_1_n_6\,
      O(0) => \pix_cnt_reg[8]_i_1_n_7\,
      S(3) => \pix_cnt[8]_i_2_n_0\,
      S(2) => \pix_cnt[8]_i_3_n_0\,
      S(1) => \pix_cnt[8]_i_4_n_0\,
      S(0) => \pix_cnt[8]_i_5_n_0\
    );
\pix_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \data_d2[9]_i_1_n_0\,
      D => \pix_cnt_reg[8]_i_1_n_6\,
      Q => pix_cnt_reg(9)
    );
pix_toggle_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => pix_cnt_clr_reg_n_0,
      I1 => p_vsync_in,
      I2 => p_de_in,
      I3 => pix_toggle,
      O => pix_toggle_i_1_n_0
    );
pix_toggle_reg: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => pix_toggle_i_1_n_0,
      Q => pix_toggle
    );
vsync_d2_reg: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => vsync_d,
      Q => p_vsync_out
    );
vsync_d_reg: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => p_vsync_in,
      Q => vsync_d
    );
zero_wr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFB0"
    )
        port map (
      I0 => p_vsync_in,
      I1 => vsync_d,
      I2 => zero_wr,
      I3 => zero_wr_reg_n_0,
      O => zero_wr_i_1_n_0
    );
zero_wr_reg: unisim.vcomponents.FDCE
     port map (
      C => p_clk_in,
      CE => '1',
      CLR => \data_d2[9]_i_1_n_0\,
      D => zero_wr_i_1_n_0,
      Q => zero_wr_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity broncho_video_vfpne_0_0 is
  port (
    arst_n : in STD_LOGIC;
    p_clk_in : in STD_LOGIC;
    p_data_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    p_de_in : in STD_LOGIC;
    p_vsync_in : in STD_LOGIC;
    compute : in STD_LOGIC;
    p_clk_out : out STD_LOGIC;
    p_data_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    p_de_out : out STD_LOGIC;
    p_vsync_out : out STD_LOGIC;
    done : out STD_LOGIC;
    output_select : in STD_LOGIC_VECTOR ( 1 downto 0 );
    skip_count : in STD_LOGIC_VECTOR ( 3 downto 0 );
    lram_dps : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of broncho_video_vfpne_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of broncho_video_vfpne_0_0 : entity is "broncho_video_vfpne_0_0,vfpne,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of broncho_video_vfpne_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of broncho_video_vfpne_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of broncho_video_vfpne_0_0 : entity is "vfpne,Vivado 2023.2";
end broncho_video_vfpne_0_0;

architecture STRUCTURE of broncho_video_vfpne_0_0 is
  signal \^p_clk_in\ : STD_LOGIC;
begin
  \^p_clk_in\ <= p_clk_in;
  p_clk_out <= \^p_clk_in\;
inst: entity work.broncho_video_vfpne_0_0_vfpne
     port map (
      arst_n => arst_n,
      compute => compute,
      done_int_reg_0 => done,
      p_clk_in => \^p_clk_in\,
      p_data_in(9 downto 0) => p_data_in(9 downto 0),
      p_data_out(9 downto 0) => p_data_out(9 downto 0),
      p_de_in => p_de_in,
      p_de_out => p_de_out,
      p_vsync_in => p_vsync_in,
      p_vsync_out => p_vsync_out,
      skip_count(3 downto 0) => skip_count(3 downto 0)
    );
end STRUCTURE;
