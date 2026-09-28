set moduleName AWBKernel
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type dataflow
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
set C_modelName {AWBKernel}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ s_axis_video_V_data_V int 30 regular {axi_s 0 volatile  { s_axis_video Data } }  }
	{ s_axis_video_V_keep_V int 4 regular {axi_s 0 volatile  { s_axis_video Keep } }  }
	{ s_axis_video_V_strb_V int 4 regular {axi_s 0 volatile  { s_axis_video Strb } }  }
	{ s_axis_video_V_user_V int 1 regular {axi_s 0 volatile  { s_axis_video User } }  }
	{ s_axis_video_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_video Last } }  }
	{ s_axis_video_V_id_V int 1 regular {axi_s 0 volatile  { s_axis_video ID } }  }
	{ s_axis_video_V_dest_V int 1 regular {axi_s 0 volatile  { s_axis_video Dest } }  }
	{ m_axis_video_V_data_V int 30 regular {axi_s 1 volatile  { m_axis_video Data } }  }
	{ m_axis_video_V_keep_V int 4 regular {axi_s 1 volatile  { m_axis_video Keep } }  }
	{ m_axis_video_V_strb_V int 4 regular {axi_s 1 volatile  { m_axis_video Strb } }  }
	{ m_axis_video_V_user_V int 1 regular {axi_s 1 volatile  { m_axis_video User } }  }
	{ m_axis_video_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_video Last } }  }
	{ m_axis_video_V_id_V int 1 regular {axi_s 1 volatile  { m_axis_video ID } }  }
	{ m_axis_video_V_dest_V int 1 regular {axi_s 1 volatile  { m_axis_video Dest } }  }
	{ height int 12 regular {ap_stable 0} }
	{ width int 12 regular {ap_stable 0} }
	{ gain0_0 int 32 regular {pointer 1}  }
	{ gain0_1 int 32 regular {pointer 1}  }
	{ gain0_2 int 32 regular {pointer 1}  }
	{ gain1_0_val1 int 32 regular {ap_stable 0} }
	{ gain1_1_val2 int 32 regular {ap_stable 0} }
	{ gain1_2_val3 int 32 regular {ap_stable 0} }
	{ thresh float 32 regular {ap_stable 0} }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "gain0_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gain0_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gain0_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gain1_0_val1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gain1_1_val2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gain1_2_val3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "thresh", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ s_axis_video_TDATA sc_in sc_lv 30 signal 0 } 
	{ s_axis_video_TKEEP sc_in sc_lv 4 signal 1 } 
	{ s_axis_video_TSTRB sc_in sc_lv 4 signal 2 } 
	{ s_axis_video_TUSER sc_in sc_lv 1 signal 3 } 
	{ s_axis_video_TLAST sc_in sc_lv 1 signal 4 } 
	{ s_axis_video_TID sc_in sc_lv 1 signal 5 } 
	{ s_axis_video_TDEST sc_in sc_lv 1 signal 6 } 
	{ m_axis_video_TDATA sc_out sc_lv 30 signal 7 } 
	{ m_axis_video_TKEEP sc_out sc_lv 4 signal 8 } 
	{ m_axis_video_TSTRB sc_out sc_lv 4 signal 9 } 
	{ m_axis_video_TUSER sc_out sc_lv 1 signal 10 } 
	{ m_axis_video_TLAST sc_out sc_lv 1 signal 11 } 
	{ m_axis_video_TID sc_out sc_lv 1 signal 12 } 
	{ m_axis_video_TDEST sc_out sc_lv 1 signal 13 } 
	{ height sc_in sc_lv 12 signal 14 } 
	{ width sc_in sc_lv 12 signal 15 } 
	{ gain0_0 sc_out sc_lv 32 signal 16 } 
	{ gain0_1 sc_out sc_lv 32 signal 17 } 
	{ gain0_2 sc_out sc_lv 32 signal 18 } 
	{ gain1_0_val1 sc_in sc_lv 32 signal 19 } 
	{ gain1_1_val2 sc_in sc_lv 32 signal 20 } 
	{ gain1_2_val3 sc_in sc_lv 32 signal 21 } 
	{ thresh sc_in sc_lv 32 signal 22 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ thresh_ap_vld sc_in sc_logic 1 invld 22 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ s_axis_video_TVALID sc_in sc_logic 1 invld 6 } 
	{ s_axis_video_TREADY sc_out sc_logic 1 inacc 6 } 
	{ height_ap_vld sc_in sc_logic 1 invld 14 } 
	{ width_ap_vld sc_in sc_logic 1 invld 15 } 
	{ gain0_0_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ gain0_1_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ gain0_2_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ gain1_0_val1_ap_vld sc_in sc_logic 1 invld 19 } 
	{ gain1_1_val2_ap_vld sc_in sc_logic 1 invld 20 } 
	{ gain1_2_val3_ap_vld sc_in sc_logic 1 invld 21 } 
	{ m_axis_video_TVALID sc_out sc_logic 1 outvld 13 } 
	{ m_axis_video_TREADY sc_in sc_logic 1 outacc 13 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "s_axis_video_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "s_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "height", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "height", "role": "default" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "gain0_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gain0_0", "role": "default" }} , 
 	{ "name": "gain0_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gain0_1", "role": "default" }} , 
 	{ "name": "gain0_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gain0_2", "role": "default" }} , 
 	{ "name": "gain1_0_val1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gain1_0_val1", "role": "default" }} , 
 	{ "name": "gain1_1_val2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gain1_1_val2", "role": "default" }} , 
 	{ "name": "gain1_2_val3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gain1_2_val3", "role": "default" }} , 
 	{ "name": "thresh", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "thresh", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "thresh_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "thresh", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "s_axis_video_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "height_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "height", "role": "ap_vld" }} , 
 	{ "name": "width_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "width", "role": "ap_vld" }} , 
 	{ "name": "gain0_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "gain0_0", "role": "ap_vld" }} , 
 	{ "name": "gain0_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "gain0_1", "role": "ap_vld" }} , 
 	{ "name": "gain0_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "gain0_2", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "gain1_0_val1_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "gain1_0_val1", "role": "ap_vld" }} , 
 	{ "name": "gain1_1_val2_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "gain1_1_val2", "role": "ap_vld" }} , 
 	{ "name": "gain1_2_val3_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "gain1_2_val3", "role": "ap_vld" }} , 
 	{ "name": "m_axis_video_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	AWBKernel {
		s_axis_video_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 1 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		gain0_0 {Type O LastRead -1 FirstWrite 1}
		gain0_1 {Type O LastRead -1 FirstWrite 1}
		gain0_2 {Type O LastRead -1 FirstWrite 1}
		gain1_0_val1 {Type I LastRead 6 FirstWrite -1}
		gain1_1_val2 {Type I LastRead 6 FirstWrite -1}
		gain1_2_val3 {Type I LastRead 6 FirstWrite -1}
		thresh {Type I LastRead 0 FirstWrite -1}}
	AWBKernel_Block_entry_proc {
		thresh {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32_2 {
		return_r {Type O LastRead -1 FirstWrite 1}
		x {Type I LastRead 0 FirstWrite -1}}
	AXIvideo2xfMat_30_20_2160_3840_1_2_s {
		s_axis_video_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 1 FirstWrite -1}
		img_rows_val {Type I LastRead 2 FirstWrite -1}
		img_cols_val {Type I LastRead 2 FirstWrite -1}
		in_mat_data {Type O LastRead -1 FirstWrite 2}}
	AXIvideo2xfMat_30_20_2160_3840_1_2_Pipeline_loop_start_hunt {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_last_out {Type O LastRead -1 FirstWrite 0}
		axi_data_promoted29_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2xfMat_30_20_2160_3840_1_2_Pipeline_loop_col_zxi2mat {
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
		p_0_0_0_07815_out {Type O LastRead -1 FirstWrite 1}}
	AXIvideo2xfMat_30_20_2160_3840_1_2_Pipeline_loop_last_hunt {
		p_4_0_0_08623_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_07815_reload {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_07816_lcssa30_out {Type O LastRead -1 FirstWrite 0}}
	AWBChannelGain_20_20_2160_3840_1_0_2_2_s {
		src_rows_val1 {Type I LastRead 0 FirstWrite -1}
		src_cols_val2 {Type I LastRead 0 FirstWrite -1}
		in_mat_data {Type I LastRead 1 FirstWrite -1}
		impop_data {Type O LastRead -1 FirstWrite 1}
		thresh {Type I LastRead 0 FirstWrite -1}
		i_gain_0 {Type O LastRead -1 FirstWrite 1}
		i_gain_1 {Type O LastRead -1 FirstWrite 1}
		i_gain_2 {Type O LastRead -1 FirstWrite 1}}
	AWBChannelGainKernel_20_20_2160_3840_1_2_2_3_23_23_13_13_3840_s {
		src1_rows_val {Type I LastRead 6 FirstWrite -1}
		src1_cols_val {Type I LastRead 6 FirstWrite -1}
		in_mat_data {Type I LastRead 1 FirstWrite -1}
		impop_data {Type O LastRead -1 FirstWrite 1}
		thresh {Type I LastRead 0 FirstWrite -1}}
	AWBChannelGainKernel_Pipeline_Col_Loop {
		src1_cols_val {Type I LastRead 0 FirstWrite -1}
		in_mat_data {Type I LastRead 1 FirstWrite -1}
		impop_data {Type O LastRead -1 FirstWrite 1}
		zext_ln176 {Type I LastRead 0 FirstWrite -1}
		add_i_i76837_out {Type IO LastRead 2 FirstWrite 2}
		add_i_i85735_out {Type IO LastRead 2 FirstWrite 2}
		add_i_i94833_out {Type IO LastRead 2 FirstWrite 2}}
	AWBChannelGainKernel_Pipeline_VITIS_LOOP_216_3 {
		tmpsum_vals_2 {Type I LastRead 0 FirstWrite -1}
		tmpsum_vals_1 {Type I LastRead 0 FirstWrite -1}
		tmpsum_vals {Type I LastRead 0 FirstWrite -1}
		mux_case_26_out {Type O LastRead -1 FirstWrite 1}
		mux_case_14_out {Type O LastRead -1 FirstWrite 1}
		mux_case_02_out {Type O LastRead -1 FirstWrite 1}}
	AWBGainUpdate_20_20_2160_3840_1_0_2_2_s {
		src1_rows_val {Type I LastRead 0 FirstWrite -1}
		src1_cols_val {Type I LastRead 0 FirstWrite -1}
		impop_data {Type I LastRead 1 FirstWrite -1}
		out_mat_data {Type O LastRead -1 FirstWrite 2}
		i_gain_0_val {Type I LastRead 0 FirstWrite -1}
		i_gain_1_val {Type I LastRead 0 FirstWrite -1}
		i_gain_2_val {Type I LastRead 0 FirstWrite -1}}
	AWBGainUpdate_20_20_2160_3840_1_0_2_2_Pipeline_ColLoop1 {
		src1_cols_val {Type I LastRead 0 FirstWrite -1}
		impop_data {Type I LastRead 1 FirstWrite -1}
		sext_ln104 {Type I LastRead 0 FirstWrite -1}
		sext_ln104_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln104_2 {Type I LastRead 0 FirstWrite -1}
		out_mat_data {Type O LastRead -1 FirstWrite 2}}
	xfMat2AXIvideo_30_20_2160_3840_1_2_0_s {
		img_rows_val {Type I LastRead 0 FirstWrite -1}
		img_cols_val {Type I LastRead 0 FirstWrite -1}
		out_mat_data {Type I LastRead 1 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 1}}
	xfMat2AXIvideo_30_20_2160_3840_1_2_0_Pipeline_loop_col_mat2axi {
		sof {Type I LastRead 0 FirstWrite -1}
		img_cols_val {Type I LastRead 0 FirstWrite -1}
		add_ln216 {Type I LastRead 0 FirstWrite -1}
		out_mat_data {Type I LastRead 1 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8305221", "Max" : "16606567"}
	, {"Name" : "Interval", "Min" : "8305220", "Max" : "8316007"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_video_V_data_V { axis {  { s_axis_video_TDATA in_data 0 30 } } }
	s_axis_video_V_keep_V { axis {  { s_axis_video_TKEEP in_data 0 4 } } }
	s_axis_video_V_strb_V { axis {  { s_axis_video_TSTRB in_data 0 4 } } }
	s_axis_video_V_user_V { axis {  { s_axis_video_TUSER in_data 0 1 } } }
	s_axis_video_V_last_V { axis {  { s_axis_video_TLAST in_data 0 1 } } }
	s_axis_video_V_id_V { axis {  { s_axis_video_TID in_data 0 1 } } }
	s_axis_video_V_dest_V { axis {  { s_axis_video_TDEST in_data 0 1 }  { s_axis_video_TVALID in_vld 0 1 }  { s_axis_video_TREADY in_acc 1 1 } } }
	m_axis_video_V_data_V { axis {  { m_axis_video_TDATA out_data 1 30 } } }
	m_axis_video_V_keep_V { axis {  { m_axis_video_TKEEP out_data 1 4 } } }
	m_axis_video_V_strb_V { axis {  { m_axis_video_TSTRB out_data 1 4 } } }
	m_axis_video_V_user_V { axis {  { m_axis_video_TUSER out_data 1 1 } } }
	m_axis_video_V_last_V { axis {  { m_axis_video_TLAST out_data 1 1 } } }
	m_axis_video_V_id_V { axis {  { m_axis_video_TID out_data 1 1 } } }
	m_axis_video_V_dest_V { axis {  { m_axis_video_TDEST out_data 1 1 }  { m_axis_video_TVALID out_vld 1 1 }  { m_axis_video_TREADY out_acc 0 1 } } }
	height { ap_none {  { height in_data 0 12 }  { height_ap_vld in_vld 0 1 } } }
	width { ap_none {  { width in_data 0 12 }  { width_ap_vld in_vld 0 1 } } }
	gain0_0 { ap_vld {  { gain0_0 out_data 1 32 }  { gain0_0_ap_vld out_vld 1 1 } } }
	gain0_1 { ap_vld {  { gain0_1 out_data 1 32 }  { gain0_1_ap_vld out_vld 1 1 } } }
	gain0_2 { ap_vld {  { gain0_2 out_data 1 32 }  { gain0_2_ap_vld out_vld 1 1 } } }
	gain1_0_val1 { ap_none {  { gain1_0_val1 in_data 0 32 }  { gain1_0_val1_ap_vld in_vld 0 1 } } }
	gain1_1_val2 { ap_none {  { gain1_1_val2 in_data 0 32 }  { gain1_1_val2_ap_vld in_vld 0 1 } } }
	gain1_2_val3 { ap_none {  { gain1_2_val3 in_data 0 32 }  { gain1_2_val3_ap_vld in_vld 0 1 } } }
	thresh { ap_none {  { thresh in_data 0 32 }  { thresh_ap_vld in_vld 0 1 } } }
}
