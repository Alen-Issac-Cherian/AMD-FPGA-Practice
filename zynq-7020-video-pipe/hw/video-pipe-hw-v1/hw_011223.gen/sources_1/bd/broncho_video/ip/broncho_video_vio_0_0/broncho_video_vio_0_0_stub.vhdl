-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Dec 13 11:15:42 2023
-- Host        : DESKTOP-1T2E61L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top broncho_video_vio_0_0 -prefix
--               broncho_video_vio_0_0_ broncho_video_vio_0_0_stub.vhdl
-- Design      : broncho_video_vio_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity broncho_video_vio_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    probe_in1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in3 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    probe_in4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    probe_out2 : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end broncho_video_vio_0_0;

architecture stub of broncho_video_vio_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_in0[9:0],probe_in1[0:0],probe_in2[0:0],probe_in3[9:0],probe_in4[0:0],probe_in5[0:0],probe_in6[0:0],probe_out0[0:0],probe_out1[1:0],probe_out2[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2023.2";
begin
end;
