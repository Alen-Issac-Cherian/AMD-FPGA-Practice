# aclk {FREQ_HZ 5e+07 CLK_DOMAIN broncho_video_processing_system7_0_0_FCLK_CLK1 PHASE 0.0} aclk1 {FREQ_HZ 1.42857e+08 CLK_DOMAIN broncho_video_processing_system7_0_0_FCLK_CLK0 PHASE 0.0}
# Clock Domain: broncho_video_processing_system7_0_0_FCLK_CLK1
create_clock -name aclk -period 20.000 [get_ports aclk]
# Clock Domain: broncho_video_processing_system7_0_0_FCLK_CLK0
create_clock -name aclk1 -period 7.000 [get_ports aclk1]
# Generated clocks
