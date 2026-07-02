set_property SRC_FILE_INFO {cfile:/home/alen/git/AMD-FPGA-Practice/zybo-z7-audio/hw/audio-pipe-hw-v0/audio_pipe_hw.gen/sources_1/bd/audio_pipe_hw/ip/audio_pipe_hw_clk_wiz_0_0/audio_pipe_hw_clk_wiz_0_0.xdc rfile:../../../audio_pipe_hw.gen/sources_1/bd/audio_pipe_hw/ip/audio_pipe_hw_clk_wiz_0_0/audio_pipe_hw_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.080
