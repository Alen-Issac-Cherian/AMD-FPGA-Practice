set moduleName AWBChannelGainKernel_Pipeline_Col_Loop
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
set C_modelName {AWBChannelGainKernel_Pipeline_Col_Loop}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ src1_cols_val int 12 regular {ap_stable 0} }
	{ in_mat_data int 30 regular {fifo 0 volatile }  }
	{ impop_data int 30 regular {fifo 1 volatile }  }
	{ zext_ln176 int 19 regular  }
	{ add_i_i76837_out int 40 regular {pointer 2}  }
	{ add_i_i85735_out int 40 regular {pointer 2}  }
	{ add_i_i94833_out int 40 regular {pointer 2}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "src1_cols_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "in_mat_data", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "impop_data", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "zext_ln176", "interface" : "wire", "bitwidth" : 19, "direction" : "READONLY"} , 
 	{ "Name" : "add_i_i76837_out", "interface" : "wire", "bitwidth" : 40, "direction" : "READWRITE"} , 
 	{ "Name" : "add_i_i85735_out", "interface" : "wire", "bitwidth" : 40, "direction" : "READWRITE"} , 
 	{ "Name" : "add_i_i94833_out", "interface" : "wire", "bitwidth" : 40, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_mat_data_dout sc_in sc_lv 30 signal 1 } 
	{ in_mat_data_empty_n sc_in sc_logic 1 signal 1 } 
	{ in_mat_data_read sc_out sc_logic 1 signal 1 } 
	{ in_mat_data_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ in_mat_data_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ impop_data_din sc_out sc_lv 30 signal 2 } 
	{ impop_data_full_n sc_in sc_logic 1 signal 2 } 
	{ impop_data_write sc_out sc_logic 1 signal 2 } 
	{ impop_data_num_data_valid sc_in sc_lv 32 signal 2 } 
	{ impop_data_fifo_cap sc_in sc_lv 32 signal 2 } 
	{ src1_cols_val sc_in sc_lv 12 signal 0 } 
	{ zext_ln176 sc_in sc_lv 19 signal 3 } 
	{ add_i_i76837_out_i sc_in sc_lv 40 signal 4 } 
	{ add_i_i76837_out_o sc_out sc_lv 40 signal 4 } 
	{ add_i_i76837_out_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ add_i_i85735_out_i sc_in sc_lv 40 signal 5 } 
	{ add_i_i85735_out_o sc_out sc_lv 40 signal 5 } 
	{ add_i_i85735_out_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ add_i_i94833_out_i sc_in sc_lv 40 signal 6 } 
	{ add_i_i94833_out_o sc_out sc_lv 40 signal 6 } 
	{ add_i_i94833_out_o_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "src1_cols_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src1_cols_val", "role": "default" }} , 
 	{ "name": "zext_ln176", "direction": "in", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "zext_ln176", "role": "default" }} , 
 	{ "name": "add_i_i76837_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "add_i_i76837_out", "role": "i" }} , 
 	{ "name": "add_i_i76837_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "add_i_i76837_out", "role": "o" }} , 
 	{ "name": "add_i_i76837_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_i_i76837_out", "role": "o_ap_vld" }} , 
 	{ "name": "add_i_i85735_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "add_i_i85735_out", "role": "i" }} , 
 	{ "name": "add_i_i85735_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "add_i_i85735_out", "role": "o" }} , 
 	{ "name": "add_i_i85735_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_i_i85735_out", "role": "o_ap_vld" }} , 
 	{ "name": "add_i_i94833_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "add_i_i94833_out", "role": "i" }} , 
 	{ "name": "add_i_i94833_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "add_i_i94833_out", "role": "o" }} , 
 	{ "name": "add_i_i94833_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_i_i94833_out", "role": "o_ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	AWBChannelGainKernel_Pipeline_Col_Loop {
		src1_cols_val {Type I LastRead 0 FirstWrite -1}
		in_mat_data {Type I LastRead 1 FirstWrite -1}
		impop_data {Type O LastRead -1 FirstWrite 1}
		zext_ln176 {Type I LastRead 0 FirstWrite -1}
		add_i_i76837_out {Type IO LastRead 2 FirstWrite 2}
		add_i_i85735_out {Type IO LastRead 2 FirstWrite 2}
		add_i_i94833_out {Type IO LastRead 2 FirstWrite 2}}}

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
	in_mat_data { ap_fifo {  { in_mat_data_dout fifo_data_out 0 30 }  { in_mat_data_empty_n fifo_status_empty 0 1 }  { in_mat_data_read fifo_data_in 1 1 }  { in_mat_data_num_data_valid fifo_update 0 3 }  { in_mat_data_fifo_cap fifo_data 0 3 } } }
	impop_data { ap_fifo {  { impop_data_din fifo_data_out 1 30 }  { impop_data_full_n fifo_status_empty 0 1 }  { impop_data_write fifo_data_in 1 1 }  { impop_data_num_data_valid fifo_update 0 32 }  { impop_data_fifo_cap fifo_data 0 32 } } }
	zext_ln176 { ap_none {  { zext_ln176 in_data 0 19 } } }
	add_i_i76837_out { ap_ovld {  { add_i_i76837_out_i in_data 0 40 }  { add_i_i76837_out_o out_data 1 40 }  { add_i_i76837_out_o_ap_vld out_vld 1 1 } } }
	add_i_i85735_out { ap_ovld {  { add_i_i85735_out_i in_data 0 40 }  { add_i_i85735_out_o out_data 1 40 }  { add_i_i85735_out_o_ap_vld out_vld 1 1 } } }
	add_i_i94833_out { ap_ovld {  { add_i_i94833_out_i in_data 0 40 }  { add_i_i94833_out_o out_data 1 40 }  { add_i_i94833_out_o_ap_vld out_vld 1 1 } } }
}
