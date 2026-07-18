## I2S Bit Clock (shared, single pin)
set_property PACKAGE_PIN R19 [get_ports sclk_out_0]
set_property IOSTANDARD LVCMOS33 [get_ports sclk_out_0]

## I2S Channel Clock — Playback direction
set_property PACKAGE_PIN T19 [get_ports lrclk_out_pb_0]
set_property IOSTANDARD LVCMOS33 [get_ports lrclk_out_pb_0]

## I2S Channel Clock — Record direction
set_property PACKAGE_PIN Y18 [get_ports lrclk_out_rec_0]
set_property IOSTANDARD LVCMOS33 [get_ports lrclk_out_rec_0]

## I2S Playback Data (Transmitter → Codec)
set_property PACKAGE_PIN R18 [get_ports sdata_0_out_0]
set_property IOSTANDARD LVCMOS33 [get_ports sdata_0_out_0]

## I2S Record Data (Codec → Receiver)
set_property PACKAGE_PIN R16 [get_ports sdata_0_in_0]
set_property IOSTANDARD LVCMOS33 [get_ports sdata_0_in_0]

## I2C1 (EMIO) -- SSM2603 control interface
set_property PACKAGE_PIN N18 [get_ports IIC_1_0_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_1_0_scl_io]

set_property PACKAGE_PIN N17 [get_ports IIC_1_0_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_1_0_sda_io]

## Master Clock
set_property PACKAGE_PIN R17 [get_ports MCLK_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports MCLK_OUT]

## System Clock (125 MHz, from Ethernet PHY reference output)
set_property -dict { PACKAGE_PIN K17 IOSTANDARD LVCMOS33 } [get_ports { sys_clock }]
create_clock -add -name sys_clk_pin -period 8.000 -waveform {0 4} [get_ports { sys_clock }]

set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { eth_phy_rst_b }];