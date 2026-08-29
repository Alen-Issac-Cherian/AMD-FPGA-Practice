LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity select_input is
port(
    video_in    : in  std_logic_vector(9 downto 0);
    si          : in  std_logic_vector(1 downto 0);
    video_out   : out std_logic_vector(7 downto 0) 
);
end entity select_input;

architecture rtl of select_input is

signal sat_1023,sat_0511,sat_0255 : std_logic_vector(9 downto 0);
begin

  sat_1023 <= video_in when video_in <= "1111111111" else "1111111111";
  sat_0511 <= video_in when video_in <= "0111111111" else "0111111111";
  sat_0255 <= video_in when video_in <= "0011111111" else "0011111111";


  with si select
    video_out <= sat_0255(7 downto 0) when "01",
                 sat_0511(8 downto 1) when "10",
                 sat_1023(9 downto 2) when "11",
                 "00000000"           when "00";
end architecture rtl;