onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xlconstant_v1_1_10 -L high_speed_selectio_wiz_v3_6_11 -L mipi_dphy_v4_3_17 -L mipi_csi2_rx_ctrl_v1_0_14 -L axis_infrastructure_v1_1_1 -L axis_register_slice_v1_1_35 -L axis_dwidth_converter_v1_1_34 -L axis_switch_v1_1_35 -L vfb_v1_0_29 -L proc_sys_reset_v5_0_17 -L v_demosaic_v1_1_17 -L fifo_generator_v13_2_14 -L axi_datamover_v5_1_37 -L axi_vdma_v6_3_24 -L axi_lite_ipif_v3_0_4 -L v_tc_v6_1_14 -L v_vid_in_axi4s_v4_0_11 -L v_axi4s_vid_out_v4_0_20 -L v_tc_v6_2_11 -L smartconnect_v1_0 -L axi_register_slice_v2_1_36 -L gigantic_mux -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.video_pipe_hw xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {video_pipe_hw.udo}

run 1000ns

quit -force
