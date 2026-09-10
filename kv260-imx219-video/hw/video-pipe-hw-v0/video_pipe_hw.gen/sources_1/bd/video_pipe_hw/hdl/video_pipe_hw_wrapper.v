//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Sat Aug 29 15:35:36 2026
//Host        : hp-HP-Pavilion-Laptop-14-ec0xxx running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target video_pipe_hw_wrapper.bd
//Design      : video_pipe_hw_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module video_pipe_hw_wrapper
   (IIC_1_0_scl_io,
    IIC_1_0_sda_io,
    mipi_phy_if_0_clk_n,
    mipi_phy_if_0_clk_p,
    mipi_phy_if_0_data_n,
    mipi_phy_if_0_data_p,
    rpi_enable);
  inout IIC_1_0_scl_io;
  inout IIC_1_0_sda_io;
  input mipi_phy_if_0_clk_n;
  input mipi_phy_if_0_clk_p;
  input [1:0]mipi_phy_if_0_data_n;
  input [1:0]mipi_phy_if_0_data_p;
  output [0:0]rpi_enable;

  wire IIC_1_0_scl_i;
  wire IIC_1_0_scl_io;
  wire IIC_1_0_scl_o;
  wire IIC_1_0_scl_t;
  wire IIC_1_0_sda_i;
  wire IIC_1_0_sda_io;
  wire IIC_1_0_sda_o;
  wire IIC_1_0_sda_t;
  wire mipi_phy_if_0_clk_n;
  wire mipi_phy_if_0_clk_p;
  wire [1:0]mipi_phy_if_0_data_n;
  wire [1:0]mipi_phy_if_0_data_p;
  wire [0:0]rpi_enable;

  IOBUF IIC_1_0_scl_iobuf
       (.I(IIC_1_0_scl_o),
        .IO(IIC_1_0_scl_io),
        .O(IIC_1_0_scl_i),
        .T(IIC_1_0_scl_t));
  IOBUF IIC_1_0_sda_iobuf
       (.I(IIC_1_0_sda_o),
        .IO(IIC_1_0_sda_io),
        .O(IIC_1_0_sda_i),
        .T(IIC_1_0_sda_t));
  video_pipe_hw video_pipe_hw_i
       (.IIC_1_0_scl_i(IIC_1_0_scl_i),
        .IIC_1_0_scl_o(IIC_1_0_scl_o),
        .IIC_1_0_scl_t(IIC_1_0_scl_t),
        .IIC_1_0_sda_i(IIC_1_0_sda_i),
        .IIC_1_0_sda_o(IIC_1_0_sda_o),
        .IIC_1_0_sda_t(IIC_1_0_sda_t),
        .mipi_phy_if_0_clk_n(mipi_phy_if_0_clk_n),
        .mipi_phy_if_0_clk_p(mipi_phy_if_0_clk_p),
        .mipi_phy_if_0_data_n(mipi_phy_if_0_data_n),
        .mipi_phy_if_0_data_p(mipi_phy_if_0_data_p),
        .rpi_enable(rpi_enable));
endmodule
