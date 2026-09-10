# XDC constraints for IMX219 (Raspberry Pi Camera v2) ISP pipeline
# Target: Kria KV260 Vision AI Starter Kit, connector J9 (Raspberry Pi Camera Connector)
# Interfaces: mipi_phy_if_0 (2-lane MIPI CSI-2 D-PHY), IIC_1_0 (sensor I2C control), rpi_enable

## ---------------------------------------------------------------
## Package pin locations
## ---------------------------------------------------------------
set_property PACKAGE_PIN F11 [get_ports "rpi_enable"]                    ;# Bank 45 - HDA09  (som240_1_a15)
set_property PACKAGE_PIN F10 [get_ports "IIC_1_0_sda_io"]                ;# Bank 45 - HDA01  (som240_1_d17)
set_property PACKAGE_PIN G11 [get_ports "IIC_1_0_scl_io"]                ;# Bank 45 - HDA00_CC (som240_1_d16)

set_property PACKAGE_PIN D7  [get_ports "mipi_phy_if_0_clk_p"]           ;# Bank 66 - HPA10_CC_P (som240_1_c12)
set_property PACKAGE_PIN D6  [get_ports "mipi_phy_if_0_clk_n"]           ;# Bank 66 - HPA10_CC_N (som240_1_c13)
set_property PACKAGE_PIN E5  [get_ports "mipi_phy_if_0_data_p[0]"]       ;# Bank 66 - HPA11_P (som240_1_b10)
set_property PACKAGE_PIN D5  [get_ports "mipi_phy_if_0_data_n[0]"]       ;# Bank 66 - HPA11_N (som240_1_b11)
set_property PACKAGE_PIN G6  [get_ports "mipi_phy_if_0_data_p[1]"]       ;# Bank 66 - HPA12_P (som240_1_a9)
set_property PACKAGE_PIN F6  [get_ports "mipi_phy_if_0_data_n[1]"]       ;# Bank 66 - HPA12_N (som240_1_a10)

## ---------------------------------------------------------------
## I/O standards
## ---------------------------------------------------------------
set_property IOSTANDARD LVCMOS33     [get_ports "rpi_enable"]
set_property IOSTANDARD LVCMOS33     [get_ports "IIC_1_0_sda_io"]
set_property IOSTANDARD LVCMOS33     [get_ports "IIC_1_0_scl_io"]

set_property IOSTANDARD MIPI_DPHY_DCI [get_ports "mipi_phy_if_0_clk_p"]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports "mipi_phy_if_0_clk_n"]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports "mipi_phy_if_0_data_p[0]"]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports "mipi_phy_if_0_data_n[0]"]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports "mipi_phy_if_0_data_p[1]"]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports "mipi_phy_if_0_data_n[1]"]

## ---------------------------------------------------------------
## Slew rate / drive strength (LVCMOS control + I2C signals)
## ---------------------------------------------------------------
set_property SLEW SLOW  [get_ports "rpi_enable"]
set_property SLEW SLOW  [get_ports "IIC_1_0_sda_io"]
set_property SLEW SLOW  [get_ports "IIC_1_0_scl_io"]

set_property DRIVE 4    [get_ports "rpi_enable"]
set_property DRIVE 4    [get_ports "IIC_1_0_sda_io"]
set_property DRIVE 4    [get_ports "IIC_1_0_scl_io"]

## ---------------------------------------------------------------
## Differential termination (MIPI D-PHY clock/data pairs)
## ---------------------------------------------------------------
set_property DIFF_TERM_ADV TERM_100 [get_ports "mipi_phy_if_0_clk_p"]
set_property DIFF_TERM_ADV TERM_100 [get_ports "mipi_phy_if_0_clk_n"]
set_property DIFF_TERM_ADV TERM_100 [get_ports "mipi_phy_if_0_data_p[0]"]
set_property DIFF_TERM_ADV TERM_100 [get_ports "mipi_phy_if_0_data_n[0]"]
set_property DIFF_TERM_ADV TERM_100 [get_ports "mipi_phy_if_0_data_p[1]"]
set_property DIFF_TERM_ADV TERM_100 [get_ports "mipi_phy_if_0_data_n[1]"]