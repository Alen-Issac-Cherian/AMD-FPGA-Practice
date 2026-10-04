set moduleName AXIvideo2xfMat_32_20_2160_3840_1_2_Pipeline_loop_col_zxi2mat
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 18
set C_modelName {AXIvideo2xfMat<32, 20, 2160, 3840, 1, 2>_Pipeline_loop_col_zxi2mat}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ p_4_0_0_08624_lcssa48 int 1 regular  }
	{ p_0_0_0_07816_lcssa32 int 32 regular  }
	{ start_2 int 1 regular  }
	{ img_cols_val int 12 regular {ap_stable 0} }
	{ in_mat_data int 30 regular {fifo 1 volatile }  }
	{ s_axis_video_V_data_V int 32 regular {axi_s 0 volatile  { s_axis_video Data } }  }
	{ s_axis_video_V_keep_V int 4 regular {axi_s 0 volatile  { s_axis_video Keep } }  }
	{ s_axis_video_V_strb_V int 4 regular {axi_s 0 volatile  { s_axis_video Strb } }  }
	{ s_axis_video_V_user_V int 1 regular {axi_s 0 volatile  { s_axis_video User } }  }
	{ s_axis_video_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_video Last } }  }
	{ s_axis_video_V_id_V int 1 regular {axi_s 0 volatile  { s_axis_video ID } }  }
	{ s_axis_video_V_dest_V int 1 regular {axi_s 0 volatile  { s_axis_video Dest } }  }
	{ p_4_0_0_08623_out int 1 regular {pointer 1}  }
	{ p_0_0_0_07815_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_4_0_0_08624_lcssa48", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0_07816_lcssa32", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "start_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img_cols_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "in_mat_data", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_4_0_0_08623_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0_07815_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_axis_video_TVALID sc_in sc_logic 1 invld 5 } 
	{ in_mat_data_din sc_out sc_lv 30 signal 4 } 
	{ in_mat_data_full_n sc_in sc_logic 1 signal 4 } 
	{ in_mat_data_write sc_out sc_logic 1 signal 4 } 
	{ in_mat_data_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ in_mat_data_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ p_4_0_0_08624_lcssa48 sc_in sc_lv 1 signal 0 } 
	{ p_0_0_0_07816_lcssa32 sc_in sc_lv 32 signal 1 } 
	{ start_2 sc_in sc_lv 1 signal 2 } 
	{ img_cols_val sc_in sc_lv 12 signal 3 } 
	{ s_axis_video_TDATA sc_in sc_lv 32 signal 5 } 
	{ s_axis_video_TREADY sc_out sc_logic 1 inacc 11 } 
	{ s_axis_video_TKEEP sc_in sc_lv 4 signal 6 } 
	{ s_axis_video_TSTRB sc_in sc_lv 4 signal 7 } 
	{ s_axis_video_TUSER sc_in sc_lv 1 signal 8 } 
	{ s_axis_video_TLAST sc_in sc_lv 1 signal 9 } 
	{ s_axis_video_TID sc_in sc_lv 1 signal 10 } 
	{ s_axis_video_TDEST sc_in sc_lv 1 signal 11 } 
	{ p_4_0_0_08623_out sc_out sc_lv 1 signal 12 } 
	{ p_4_0_0_08623_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ p_0_0_0_07815_out sc_out sc_lv 32 signal 13 } 
	{ p_0_0_0_07815_out_ap_vld sc_out sc_logic 1 outvld 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_axis_video_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "in_mat_data_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "in_mat_data", "role": "din" }} , 
 	{ "name": "in_mat_data_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_data", "role": "full_n" }} , 
 	{ "name": "in_mat_data_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_data", "role": "write" }} , 
 	{ "name": "in_mat_data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_mat_data", "role": "num_data_valid" }} , 
 	{ "name": "in_mat_data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_mat_data", "role": "fifo_cap" }} , 
 	{ "name": "p_4_0_0_08624_lcssa48", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_4_0_0_08624_lcssa48", "role": "default" }} , 
 	{ "name": "p_0_0_0_07816_lcssa32", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_0_0_0_07816_lcssa32", "role": "default" }} , 
 	{ "name": "start_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "start_2", "role": "default" }} , 
 	{ "name": "img_cols_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_cols_val", "role": "default" }} , 
 	{ "name": "s_axis_video_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "p_4_0_0_08623_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_4_0_0_08623_out", "role": "default" }} , 
 	{ "name": "p_4_0_0_08623_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_4_0_0_08623_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0_07815_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_0_0_0_07815_out", "role": "default" }} , 
 	{ "name": "p_0_0_0_07815_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_07815_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	AXIvideo2xfMat_32_20_2160_3840_1_2_Pipeline_loop_col_zxi2mat {
		p_4_0_0_08624_lcssa48 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_07816_lcssa32 {Type I LastRead 0 FirstWrite -1}
		start_2 {Type I LastRead 0 FirstWrite -1}
		img_cols_val {Type I LastRead 0 FirstWrite -1}
		in_mat_data {Type O LastRead -1 FirstWrite 2}
		s_axis_video_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 1 FirstWrite -1}
		p_4_0_0_08623_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0_07815_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "3843"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "3841"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_4_0_0_08624_lcssa48 { ap_none {  { p_4_0_0_08624_lcssa48 in_data 0 1 } } }
	p_0_0_0_07816_lcssa32 { ap_none {  { p_0_0_0_07816_lcssa32 in_data 0 32 } } }
	start_2 { ap_none {  { start_2 in_data 0 1 } } }
	img_cols_val { ap_stable {  { img_cols_val in_data 0 12 } } }
	in_mat_data { ap_fifo {  { in_mat_data_din fifo_data_out 1 30 }  { in_mat_data_full_n fifo_status_empty 0 1 }  { in_mat_data_write fifo_data_in 1 1 }  { in_mat_data_num_data_valid fifo_update 0 3 }  { in_mat_data_fifo_cap fifo_data 0 3 } } }
	s_axis_video_V_data_V { axis {  { s_axis_video_TVALID in_vld 0 1 }  { s_axis_video_TDATA in_data 0 32 } } }
	s_axis_video_V_keep_V { axis {  { s_axis_video_TKEEP in_data 0 4 } } }
	s_axis_video_V_strb_V { axis {  { s_axis_video_TSTRB in_data 0 4 } } }
	s_axis_video_V_user_V { axis {  { s_axis_video_TUSER in_data 0 1 } } }
	s_axis_video_V_last_V { axis {  { s_axis_video_TLAST in_data 0 1 } } }
	s_axis_video_V_id_V { axis {  { s_axis_video_TID in_data 0 1 } } }
	s_axis_video_V_dest_V { axis {  { s_axis_video_TREADY in_acc 1 1 }  { s_axis_video_TDEST in_data 0 1 } } }
	p_4_0_0_08623_out { ap_vld {  { p_4_0_0_08623_out out_data 1 1 }  { p_4_0_0_08623_out_ap_vld out_vld 1 1 } } }
	p_0_0_0_07815_out { ap_vld {  { p_0_0_0_07815_out out_data 1 32 }  { p_0_0_0_07815_out_ap_vld out_vld 1 1 } } }
}
