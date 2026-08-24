#HDMI
#Clock
set_property PACKAGE_PIN M19 [get_ports vid_clk]
#Data
set_property PACKAGE_PIN L19 [get_ports vid_data[0]]
set_property PACKAGE_PIN M17 [get_ports vid_data[1]]
set_property PACKAGE_PIN K20 [get_ports vid_data[2]]
set_property PACKAGE_PIN K19 [get_ports vid_data[3]]
set_property PACKAGE_PIN L22 [get_ports vid_data[4]]
set_property PACKAGE_PIN L21 [get_ports vid_data[5]]
set_property PACKAGE_PIN K21 [get_ports vid_data[6]]
set_property PACKAGE_PIN J20 [get_ports vid_data[7]]
set_property PACKAGE_PIN J22 [get_ports vid_data[8]]
set_property PACKAGE_PIN J21 [get_ports vid_data[9]]
set_property PACKAGE_PIN K18 [get_ports {vid_data[10]}]
set_property PACKAGE_PIN J18 [get_ports {vid_data[11]}]
set_property PACKAGE_PIN M16 [get_ports {vid_data[12]}]
set_property PACKAGE_PIN M15 [get_ports {vid_data[13]}]
set_property PACKAGE_PIN N18 [get_ports {vid_data[14]}]
set_property PACKAGE_PIN N17 [get_ports {vid_data[15]}]
#video active
set_property PACKAGE_PIN M21 [get_ports vid_active_video]
#Sync signals
set_property PACKAGE_PIN M20 [get_ports vid_hsync]
set_property IOSTANDARD LVCMOS33 [get_ports vid_hsync]
set_property PACKAGE_PIN N19 [get_ports vid_vsync]
set_property IOSTANDARD LVCMOS33 [get_ports vid_vsync]
#Locked signal -> DS19
set_property PACKAGE_PIN E15 [get_ports vid_locked]

set_property PACKAGE_PIN D18 [get_ports sys_diff_clock_clk_p]
set_property PACKAGE_PIN C19 [get_ports sys_diff_clock_clk_n]
set_property IOSTANDARD LVDS_25 [get_ports sys_diff_clock_clk_*]
##set_property DIFF_TERM true [get_ports si570_clk_*]

#I2C0 for display sink
set_property PACKAGE_PIN L16 [get_ports IIC_0_0_scl_io]
set_property PULLUP true [get_ports IIC_0_0_scl_io]
set_property PACKAGE_PIN L17 [get_ports IIC_0_0_sda_io]
set_property PULLUP true [get_ports IIC_0_0_sda_io]
##set_property PACKAGE_PIN Y16 [get_ports fmc_imageon_iic_rst_b]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_0_*]

# I2C Chain 2 on OV426
set_property PACKAGE_PIN AA9 [get_ports IIC_1_0_scl_io]
set_property PULLUP true [get_ports IIC_1_0_scl_io]
set_property PACKAGE_PIN AA8 [get_ports IIC_1_0_sda_io]
set_property PULLUP true [get_ports IIC_1_0_sda_io]
##set_property PACKAGE_PIN Y16 [get_ports fmc_imageon_iic_rst_b]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_1_0_*]

#OV426 input
set_property IOSTANDARD LVCMOS33 [get_ports vid_*]
set_property PACKAGE_PIN Y9 [get_ports vid_io_in_clk]
set_property PACKAGE_PIN R6 [get_ports {vid_data_in[9]}]
set_property PACKAGE_PIN AA4 [get_ports {vid_data_in[8]}]
set_property PACKAGE_PIN Y4 [get_ports {vid_data_in[7]}]
set_property PACKAGE_PIN AB6 [get_ports {vid_data_in[6]}]
set_property PACKAGE_PIN AB7 [get_ports {vid_data_in[5]}]
set_property PACKAGE_PIN AB4 [get_ports {vid_data_in[4]}]
set_property PACKAGE_PIN AB5 [get_ports {vid_data_in[3]}]
set_property PACKAGE_PIN AB1 [get_ports {vid_data_in[2]}]
set_property PACKAGE_PIN AB2 [get_ports {vid_data_in[1]}]
set_property PACKAGE_PIN AA6 [get_ports {vid_data_in[0]}]
set_property PACKAGE_PIN U9 [get_ports vid_active_video_in]
set_property PACKAGE_PIN Y8 [get_ports vid_vsync_in]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets vid_clk_OBUF]

set_property PACKAGE_PIN V7 [get_ports ISO_SHDN_N]
set_property IOSTANDARD LVCMOS33 [get_ports ISO_SHDN_N]

set_property PACKAGE_PIN AA12 [get_ports ov426_resetn]
set_property IOSTANDARD LVCMOS33 [get_ports ov426_resetn]