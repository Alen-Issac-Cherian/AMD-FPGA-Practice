set_property -quiet CLOCK_PERIOD_OOC_TARGET 81.380 [get_ports -no_traverse -quiet aud_mclk]
set_property -quiet CLOCK_PERIOD_OOC_TARGET 20.000 [get_ports -no_traverse -quiet s_axi_ctrl_aclk]
set_property -quiet CLOCK_PERIOD_OOC_TARGET 20.000 [get_ports -no_traverse -quiet s_axis_aud_aclk]
set_property -quiet IS_IP_OOC_CELL TRUE [get_cells -of [get_ports -no_traverse -quiet aud_mclk]]
