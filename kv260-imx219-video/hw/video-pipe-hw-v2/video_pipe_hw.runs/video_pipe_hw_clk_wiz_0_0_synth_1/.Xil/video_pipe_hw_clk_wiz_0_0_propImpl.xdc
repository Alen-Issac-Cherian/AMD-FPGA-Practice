set_property SRC_FILE_INFO {cfile:/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/hw/video-pipe-hw-v0/video_pipe_hw.gen/sources_1/bd/video_pipe_hw/ip/video_pipe_hw_clk_wiz_0_0/video_pipe_hw_clk_wiz_0_0.xdc rfile:../../../video_pipe_hw.gen/sources_1/bd/video_pipe_hw/ip/video_pipe_hw_clk_wiz_0_0/video_pipe_hw_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.040
