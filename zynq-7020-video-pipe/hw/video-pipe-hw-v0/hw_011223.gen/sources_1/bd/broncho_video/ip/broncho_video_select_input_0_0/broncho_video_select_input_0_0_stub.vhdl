-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Dec 13 11:15:35 2023
-- Host        : DESKTOP-1T2E61L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top broncho_video_select_input_0_0 -prefix
--               broncho_video_select_input_0_0_ broncho_video_select_input_0_0_stub.vhdl
-- Design      : broncho_video_select_input_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity broncho_video_select_input_0_0 is
  Port ( 
    video_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    si : in STD_LOGIC_VECTOR ( 1 downto 0 );
    video_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end broncho_video_select_input_0_0;

architecture stub of broncho_video_select_input_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "video_in[9:0],si[1:0],video_out[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "select_input,Vivado 2023.2";
begin
end;
