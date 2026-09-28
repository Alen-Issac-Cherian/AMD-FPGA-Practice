set moduleName AWBGainUpdate_20_20_2160_3840_1_0_2_2_Pipeline_ColLoop1
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
set C_modelName {AWBGainUpdate<20, 20, 2160, 3840, 1, 0, 2, 2>_Pipeline_ColLoop1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ src1_cols_val int 12 regular {ap_stable 0} }
	{ impop_data int 30 regular {fifo 0 volatile }  }
	{ sext_ln104 int 32 regular {ap_stable 0} }
	{ sext_ln104_1 int 32 regular {ap_stable 0} }
	{ sext_ln104_2 int 32 regular {ap_stable 0} }
	{ out_mat_data int 30 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "src1_cols_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "impop_data", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln104", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln104_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln104_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_mat_data", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ impop_data_dout sc_in sc_lv 30 signal 1 } 
	{ impop_data_empty_n sc_in sc_logic 1 signal 1 } 
	{ impop_data_read sc_out sc_logic 1 signal 1 } 
	{ impop_data_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ impop_data_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ out_mat_data_din sc_out sc_lv 30 signal 5 } 
	{ out_mat_data_full_n sc_in sc_logic 1 signal 5 } 
	{ out_mat_data_write sc_out sc_logic 1 signal 5 } 
	{ out_mat_data_num_data_valid sc_in sc_lv 32 signal 5 } 
	{ out_mat_data_fifo_cap sc_in sc_lv 32 signal 5 } 
	{ src1_cols_val sc_in sc_lv 12 signal 0 } 
	{ sext_ln104 sc_in sc_lv 32 signal 2 } 
	{ sext_ln104_1 sc_in sc_lv 32 signal 3 } 
	{ sext_ln104_2 sc_in sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "impop_data_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "impop_data", "role": "dout" }} , 
 	{ "name": "impop_data_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "impop_data", "role": "empty_n" }} , 
 	{ "name": "impop_data_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "impop_data", "role": "read" }} , 
 	{ "name": "impop_data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "impop_data", "role": "num_data_valid" }} , 
 	{ "name": "impop_data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "impop_data", "role": "fifo_cap" }} , 
 	{ "name": "out_mat_data_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "out_mat_data", "role": "din" }} , 
 	{ "name": "out_mat_data_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_mat_data", "role": "full_n" }} , 
 	{ "name": "out_mat_data_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_mat_data", "role": "write" }} , 
 	{ "name": "out_mat_data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_mat_data", "role": "num_data_valid" }} , 
 	{ "name": "out_mat_data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_mat_data", "role": "fifo_cap" }} , 
 	{ "name": "src1_cols_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src1_cols_val", "role": "default" }} , 
 	{ "name": "sext_ln104", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln104", "role": "default" }} , 
 	{ "name": "sext_ln104_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln104_1", "role": "default" }} , 
 	{ "name": "sext_ln104_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln104_2", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	AWBGainUpdate_20_20_2160_3840_1_0_2_2_Pipeline_ColLoop1 {
		src1_cols_val {Type I LastRead 0 FirstWrite -1}
		impop_data {Type I LastRead 1 FirstWrite -1}
		sext_ln104 {Type I LastRead 0 FirstWrite -1}
		sext_ln104_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln104_2 {Type I LastRead 0 FirstWrite -1}
		out_mat_data {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3843", "Max" : "3843"}
	, {"Name" : "Interval", "Min" : "3841", "Max" : "3841"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	src1_cols_val { ap_stable {  { src1_cols_val in_data 0 12 } } }
	impop_data { ap_fifo {  { impop_data_dout fifo_data_out 0 30 }  { impop_data_empty_n fifo_status_empty 0 1 }  { impop_data_read fifo_data_in 1 1 }  { impop_data_num_data_valid fifo_update 0 3 }  { impop_data_fifo_cap fifo_data 0 3 } } }
	sext_ln104 { ap_stable {  { sext_ln104 in_data 0 32 } } }
	sext_ln104_1 { ap_stable {  { sext_ln104_1 in_data 0 32 } } }
	sext_ln104_2 { ap_stable {  { sext_ln104_2 in_data 0 32 } } }
	out_mat_data { ap_fifo {  { out_mat_data_din fifo_data_out 1 30 }  { out_mat_data_full_n fifo_status_empty 0 1 }  { out_mat_data_write fifo_data_in 1 1 }  { out_mat_data_num_data_valid fifo_update 0 32 }  { out_mat_data_fifo_cap fifo_data 0 32 } } }
}
