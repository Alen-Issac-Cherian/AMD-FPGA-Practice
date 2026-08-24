-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Dec 27 14:08:02 2023
-- Host        : hp-HP-Pavilion-Laptop-14-ec0xxx running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/alen/repo/zynq-7020-video-pipe-3/hw/video-pipe-hw-v5/hw_011223.gen/sources_1/bd/broncho_video/ip/broncho_video_vfpne_0_2/broncho_video_vfpne_0_2_stub.vhdl
-- Design      : broncho_video_vfpne_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity broncho_video_vfpne_0_2 is
  Port ( 
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

end broncho_video_vfpne_0_2;

architecture stub of broncho_video_vfpne_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "arst_n,p_clk_in,p_data_in[9:0],p_de_in,p_vsync_in,compute,p_clk_out,p_data_out[9:0],p_de_out,p_vsync_out,done,output_select[1:0],skip_count[3:0],lram_dps[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vfpne,Vivado 2023.2";
begin
end;
