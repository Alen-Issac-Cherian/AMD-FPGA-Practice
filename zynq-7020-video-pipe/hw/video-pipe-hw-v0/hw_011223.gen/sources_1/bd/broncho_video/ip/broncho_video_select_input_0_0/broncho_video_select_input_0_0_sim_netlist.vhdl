-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Dec 13 11:15:35 2023
-- Host        : DESKTOP-1T2E61L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top broncho_video_select_input_0_0 -prefix
--               broncho_video_select_input_0_0_ broncho_video_select_input_0_0_sim_netlist.vhdl
-- Design      : broncho_video_select_input_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity broncho_video_select_input_0_0 is
  port (
    video_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    si : in STD_LOGIC_VECTOR ( 1 downto 0 );
    video_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of broncho_video_select_input_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of broncho_video_select_input_0_0 : entity is "broncho_video_select_input_0_0,select_input,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of broncho_video_select_input_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of broncho_video_select_input_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of broncho_video_select_input_0_0 : entity is "select_input,Vivado 2023.2";
end broncho_video_select_input_0_0;

architecture STRUCTURE of broncho_video_select_input_0_0 is
  signal \video_out[5]_INST_0_i_1_n_0\ : STD_LOGIC;
begin
\video_out[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAC86240"
    )
        port map (
      I0 => si(1),
      I1 => si(0),
      I2 => video_in(0),
      I3 => video_in(1),
      I4 => video_in(2),
      I5 => \video_out[5]_INST_0_i_1_n_0\,
      O => video_out(0)
    );
\video_out[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAC86240"
    )
        port map (
      I0 => si(1),
      I1 => si(0),
      I2 => video_in(1),
      I3 => video_in(2),
      I4 => video_in(3),
      I5 => \video_out[5]_INST_0_i_1_n_0\,
      O => video_out(1)
    );
\video_out[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAC86240"
    )
        port map (
      I0 => si(1),
      I1 => si(0),
      I2 => video_in(2),
      I3 => video_in(3),
      I4 => video_in(4),
      I5 => \video_out[5]_INST_0_i_1_n_0\,
      O => video_out(2)
    );
\video_out[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAC86240"
    )
        port map (
      I0 => si(1),
      I1 => si(0),
      I2 => video_in(3),
      I3 => video_in(4),
      I4 => video_in(5),
      I5 => \video_out[5]_INST_0_i_1_n_0\,
      O => video_out(3)
    );
\video_out[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAC86240"
    )
        port map (
      I0 => si(1),
      I1 => si(0),
      I2 => video_in(4),
      I3 => video_in(5),
      I4 => video_in(6),
      I5 => \video_out[5]_INST_0_i_1_n_0\,
      O => video_out(4)
    );
\video_out[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAC86240"
    )
        port map (
      I0 => si(1),
      I1 => si(0),
      I2 => video_in(5),
      I3 => video_in(6),
      I4 => video_in(7),
      I5 => \video_out[5]_INST_0_i_1_n_0\,
      O => video_out(5)
    );
\video_out[5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CE0"
    )
        port map (
      I0 => video_in(8),
      I1 => video_in(9),
      I2 => si(0),
      I3 => si(1),
      O => \video_out[5]_INST_0_i_1_n_0\
    );
\video_out[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFC3C3CFCCC3808"
    )
        port map (
      I0 => video_in(6),
      I1 => si(0),
      I2 => si(1),
      I3 => video_in(7),
      I4 => video_in(8),
      I5 => video_in(9),
      O => video_out(6)
    );
\video_out[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFC3C20"
    )
        port map (
      I0 => video_in(7),
      I1 => si(1),
      I2 => si(0),
      I3 => video_in(8),
      I4 => video_in(9),
      O => video_out(7)
    );
end STRUCTURE;
