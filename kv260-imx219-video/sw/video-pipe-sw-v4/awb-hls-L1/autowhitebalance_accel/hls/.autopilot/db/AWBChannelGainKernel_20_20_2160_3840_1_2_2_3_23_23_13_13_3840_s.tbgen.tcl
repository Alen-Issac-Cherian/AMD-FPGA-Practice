set moduleName AWBChannelGainKernel_20_20_2160_3840_1_2_2_3_23_23_13_13_3840_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {AWBChannelGainKernel<20, 20, 2160, 3840, 1, 2, 2, 3, 23, 23, 13, 13, 3840>}
set C_modelType { int 96 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ src1_rows_val int 12 regular {ap_stable 0} }
	{ src1_cols_val int 12 regular {ap_stable 0} }
	{ in_mat_data int 30 regular {fifo 0 volatile }  }
	{ impop_data int 30 regular {fifo 1 volatile }  }
	{ thresh int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "src1_rows_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src1_cols_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "in_mat_data", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "impop_data", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "thresh", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 96} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src1_rows_val sc_in sc_lv 12 signal 0 } 
	{ src1_cols_val sc_in sc_lv 12 signal 1 } 
	{ in_mat_data_dout sc_in sc_lv 30 signal 2 } 
	{ in_mat_data_empty_n sc_in sc_logic 1 signal 2 } 
	{ in_mat_data_read sc_out sc_logic 1 signal 2 } 
	{ in_mat_data_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_mat_data_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ impop_data_din sc_out sc_lv 30 signal 3 } 
	{ impop_data_full_n sc_in sc_logic 1 signal 3 } 
	{ impop_data_write sc_out sc_logic 1 signal 3 } 
	{ impop_data_num_data_valid sc_in sc_lv 32 signal 3 } 
	{ impop_data_fifo_cap sc_in sc_lv 32 signal 3 } 
	{ thresh sc_in sc_lv 32 signal 4 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "src1_rows_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src1_rows_val", "role": "default" }} , 
 	{ "name": "src1_cols_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src1_cols_val", "role": "default" }} , 
 	{ "name": "in_mat_data_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "in_mat_data", "role": "dout" }} , 
 	{ "name": "in_mat_data_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_data", "role": "empty_n" }} , 
 	{ "name": "in_mat_data_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_data", "role": "read" }} , 
 	{ "name": "in_mat_data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_mat_data", "role": "num_data_valid" }} , 
 	{ "name": "in_mat_data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_mat_data", "role": "fifo_cap" }} , 
 	{ "name": "impop_data_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "impop_data", "role": "din" }} , 
 	{ "name": "impop_data_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "impop_data", "role": "full_n" }} , 
 	{ "name": "impop_data_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "impop_data", "role": "write" }} , 
 	{ "name": "impop_data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "impop_data", "role": "num_data_valid" }} , 
 	{ "name": "impop_data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "impop_data", "role": "fifo_cap" }} , 
 	{ "name": "thresh", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "thresh", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		mux_case_02_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8305218", "Max" : "8305496"}
	, {"Name" : "Interval", "Min" : "8305218", "Max" : "8305496"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	src1_rows_val { ap_stable {  { src1_rows_val in_data 0 12 } } }
	src1_cols_val { ap_stable {  { src1_cols_val in_data 0 12 } } }
	in_mat_data { ap_fifo {  { in_mat_data_dout fifo_data_out 0 30 }  { in_mat_data_empty_n fifo_status_empty 0 1 }  { in_mat_data_read fifo_data_in 1 1 }  { in_mat_data_num_data_valid fifo_update 0 3 }  { in_mat_data_fifo_cap fifo_data 0 3 } } }
	impop_data { ap_fifo {  { impop_data_din fifo_data_out 1 30 }  { impop_data_full_n fifo_status_empty 0 1 }  { impop_data_write fifo_data_in 1 1 }  { impop_data_num_data_valid fifo_update 0 32 }  { impop_data_fifo_cap fifo_data 0 32 } } }
	thresh { ap_none {  { thresh in_data 0 32 } } }
}
