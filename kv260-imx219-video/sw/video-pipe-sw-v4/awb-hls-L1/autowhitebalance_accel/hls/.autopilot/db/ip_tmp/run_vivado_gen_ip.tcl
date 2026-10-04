create_project prj -part xck26-sfvc784-2LV-c -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v4/awb-hls-L1/autowhitebalance_accel/hls/syn/verilog/autowhitebalance_accel_fmul_32ns_32ns_32_3_max_dsp_1_ip.tcl"
source "/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v4/awb-hls-L1/autowhitebalance_accel/hls/syn/verilog/autowhitebalance_accel_sitofp_32ns_32_4_no_dsp_1_ip.tcl"
source "/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v4/awb-hls-L1/autowhitebalance_accel/hls/syn/verilog/autowhitebalance_accel_fpext_32ns_64_2_no_dsp_1_ip.tcl"
