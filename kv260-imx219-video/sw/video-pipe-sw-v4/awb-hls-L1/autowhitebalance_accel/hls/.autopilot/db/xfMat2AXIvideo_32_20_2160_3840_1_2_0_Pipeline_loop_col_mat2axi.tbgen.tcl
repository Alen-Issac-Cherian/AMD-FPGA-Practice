set moduleName xfMat2AXIvideo_32_20_2160_3840_1_2_0_Pipeline_loop_col_mat2axi
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
set C_modelName {xfMat2AXIvideo<32, 20, 2160, 3840, 1, 2, 0>_Pipeline_loop_col_mat2axi}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ sof int 1 regular  }
	{ img_cols_val int 12 regular {ap_stable 0} }
	{ add_ln216 int 12 regular {ap_stable 0} }
	{ out_mat_data int 30 regular {fifo 0 volatile }  }
	{ m_axis_video_V_data_V int 32 regular {axi_s 1 volatile  { m_axis_video Data } }  }
	{ m_axis_video_V_keep_V int 4 regular {axi_s 1 volatile  { m_axis_video Keep } }  }
	{ m_axis_video_V_strb_V int 4 regular {axi_s 1 volatile  { m_axis_video Strb } }  }
	{ m_axis_video_V_user_V int 1 regular {axi_s 1 volatile  { m_axis_video User } }  }
	{ m_axis_video_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_video Last } }  }
	{ m_axis_video_V_id_V int 1 regular {axi_s 1 volatile  { m_axis_video ID } }  }
	{ m_axis_video_V_dest_V int 1 regular {axi_s 1 volatile  { m_axis_video Dest } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "sof", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img_cols_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln216", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "out_mat_data", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_mat_data_dout sc_in sc_lv 30 signal 3 } 
	{ out_mat_data_empty_n sc_in sc_logic 1 signal 3 } 
	{ out_mat_data_read sc_out sc_logic 1 signal 3 } 
	{ out_mat_data_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ out_mat_data_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ m_axis_video_TREADY sc_in sc_logic 1 outacc 4 } 
	{ sof sc_in sc_lv 1 signal 0 } 
	{ img_cols_val sc_in sc_lv 12 signal 1 } 
	{ add_ln216 sc_in sc_lv 12 signal 2 } 
	{ m_axis_video_TDATA sc_out sc_lv 32 signal 4 } 
	{ m_axis_video_TVALID sc_out sc_logic 1 outvld 10 } 
	{ m_axis_video_TKEEP sc_out sc_lv 4 signal 5 } 
	{ m_axis_video_TSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axis_video_TUSER sc_out sc_lv 1 signal 7 } 
	{ m_axis_video_TLAST sc_out sc_lv 1 signal 8 } 
	{ m_axis_video_TID sc_out sc_lv 1 signal 9 } 
	{ m_axis_video_TDEST sc_out sc_lv 1 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_mat_data_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "out_mat_data", "role": "dout" }} , 
 	{ "name": "out_mat_data_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_mat_data", "role": "empty_n" }} , 
 	{ "name": "out_mat_data_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_mat_data", "role": "read" }} , 
 	{ "name": "out_mat_data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_mat_data", "role": "num_data_valid" }} , 
 	{ "name": "out_mat_data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_mat_data", "role": "fifo_cap" }} , 
 	{ "name": "m_axis_video_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "sof", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sof", "role": "default" }} , 
 	{ "name": "img_cols_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_cols_val", "role": "default" }} , 
 	{ "name": "add_ln216", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "add_ln216", "role": "default" }} , 
 	{ "name": "m_axis_video_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	xfMat2AXIvideo_32_20_2160_3840_1_2_0_Pipeline_loop_col_mat2axi {
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
	{"Name" : "Latency", "Min" : "4", "Max" : "3843"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "3841"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sof { ap_none {  { sof in_data 0 1 } } }
	img_cols_val { ap_stable {  { img_cols_val in_data 0 12 } } }
	add_ln216 { ap_stable {  { add_ln216 in_data 0 12 } } }
	out_mat_data { ap_fifo {  { out_mat_data_dout fifo_data_out 0 30 }  { out_mat_data_empty_n fifo_status_empty 0 1 }  { out_mat_data_read fifo_data_in 1 1 }  { out_mat_data_num_data_valid fifo_update 0 3 }  { out_mat_data_fifo_cap fifo_data 0 3 } } }
	m_axis_video_V_data_V { axis {  { m_axis_video_TREADY out_acc 0 1 }  { m_axis_video_TDATA out_data 1 32 } } }
	m_axis_video_V_keep_V { axis {  { m_axis_video_TKEEP out_data 1 4 } } }
	m_axis_video_V_strb_V { axis {  { m_axis_video_TSTRB out_data 1 4 } } }
	m_axis_video_V_user_V { axis {  { m_axis_video_TUSER out_data 1 1 } } }
	m_axis_video_V_last_V { axis {  { m_axis_video_TLAST out_data 1 1 } } }
	m_axis_video_V_id_V { axis {  { m_axis_video_TID out_data 1 1 } } }
	m_axis_video_V_dest_V { axis {  { m_axis_video_TVALID out_vld 1 1 }  { m_axis_video_TDEST out_data 1 1 } } }
}
