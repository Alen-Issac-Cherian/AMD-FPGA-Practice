-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Sat Sep 26 16:25:41 2026
-- Host        : alen-HP-Pavilion-Laptop-14-ec0xxx running 64-bit Ubuntu 24.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/hw/video-pipe-hw-v3/video_pipe_hw.gen/sources_1/bd/video_pipe_hw/ip/video_pipe_hw_axis_subset_converter_0_1/video_pipe_hw_axis_subset_converter_0_1_stub.vhdl
-- Design      : video_pipe_hw_axis_subset_converter_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity video_pipe_hw_axis_subset_converter_0_1 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of video_pipe_hw_axis_subset_converter_0_1 : entity is "video_pipe_hw_axis_subset_converter_0_1,top_video_pipe_hw_axis_subset_converter_0_1,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of video_pipe_hw_axis_subset_converter_0_1 : entity is "video_pipe_hw_axis_subset_converter_0_1,top_video_pipe_hw_axis_subset_converter_0_1,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_subset_converter,x_ipVersion=1.1,x_ipCoreRevision=36,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=zynquplus,C_S_AXIS_TDATA_WIDTH=32,C_S_AXIS_TID_WIDTH=1,C_S_AXIS_TDEST_WIDTH=1,C_S_AXIS_TUSER_WIDTH=2,C_S_AXIS_SIGNAL_SET=0b00000000000000000000000011111111,C_M_AXIS_TDATA_WIDTH=32,C_M_AXIS_TID_WIDTH=1,C_M_AXIS_TDEST_WIDTH=1,C_M_AXIS_SIGNAL_SET=0b00000000000000000000000011111111,C_M_AXIS_TUSER_WIDTH=1,C_DEFAULT_TLAST=0}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of video_pipe_hw_axis_subset_converter_0_1 : entity is "yes";
end video_pipe_hw_axis_subset_converter_0_1;

architecture stub of video_pipe_hw_axis_subset_converter_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[31:0],s_axis_tstrb[3:0],s_axis_tkeep[3:0],s_axis_tlast,s_axis_tid[0:0],s_axis_tdest[0:0],s_axis_tuser[1:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[31:0],m_axis_tstrb[3:0],m_axis_tkeep[3:0],m_axis_tlast,m_axis_tid[0:0],m_axis_tdest[0:0],m_axis_tuser[0:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN video_pipe_hw_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_MODE of s_axis_tvalid : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tvalid : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN video_pipe_hw_zynq_ultra_ps_e_0_1_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S_AXIS TSTRB";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TID";
  attribute X_INTERFACE_INFO of s_axis_tdest : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDEST";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 S_AXIS TUSER";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_MODE of m_axis_tvalid : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tvalid : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN video_pipe_hw_zynq_ultra_ps_e_0_1_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M_AXIS TSTRB";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS TKEEP";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TID";
  attribute X_INTERFACE_INFO of m_axis_tdest : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDEST";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 M_AXIS TUSER";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "top_video_pipe_hw_axis_subset_converter_0_1,Vivado 2025.2";
begin
end;
