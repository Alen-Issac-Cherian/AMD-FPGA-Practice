set moduleName AWBChannelGainKernel_Pipeline_VITIS_LOOP_216_3
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
set C_modelName {AWBChannelGainKernel_Pipeline_VITIS_LOOP_216_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ tmpsum_vals_2 int 40 regular  }
	{ tmpsum_vals_1 int 40 regular  }
	{ tmpsum_vals int 40 regular  }
	{ mux_case_26_out int 40 regular {pointer 1}  }
	{ mux_case_14_out int 40 regular {pointer 1}  }
	{ mux_case_02_out int 40 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "tmpsum_vals_2", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "tmpsum_vals_1", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "tmpsum_vals", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_26_out", "interface" : "wire", "bitwidth" : 40, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_14_out", "interface" : "wire", "bitwidth" : 40, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_02_out", "interface" : "wire", "bitwidth" : 40, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tmpsum_vals_2 sc_in sc_lv 40 signal 0 } 
	{ tmpsum_vals_1 sc_in sc_lv 40 signal 1 } 
	{ tmpsum_vals sc_in sc_lv 40 signal 2 } 
	{ mux_case_26_out sc_out sc_lv 40 signal 3 } 
	{ mux_case_26_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ mux_case_14_out sc_out sc_lv 40 signal 4 } 
	{ mux_case_14_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ mux_case_02_out sc_out sc_lv 40 signal 5 } 
	{ mux_case_02_out_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tmpsum_vals_2", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "tmpsum_vals_2", "role": "default" }} , 
 	{ "name": "tmpsum_vals_1", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "tmpsum_vals_1", "role": "default" }} , 
 	{ "name": "tmpsum_vals", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "tmpsum_vals", "role": "default" }} , 
 	{ "name": "mux_case_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "mux_case_26_out", "role": "default" }} , 
 	{ "name": "mux_case_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_26_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "mux_case_14_out", "role": "default" }} , 
 	{ "name": "mux_case_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_14_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_02_out", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "mux_case_02_out", "role": "default" }} , 
 	{ "name": "mux_case_02_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_02_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	AWBChannelGainKernel_Pipeline_VITIS_LOOP_216_3 {
		tmpsum_vals_2 {Type I LastRead 0 FirstWrite -1}
		tmpsum_vals_1 {Type I LastRead 0 FirstWrite -1}
		tmpsum_vals {Type I LastRead 0 FirstWrite -1}
		mux_case_26_out {Type O LastRead -1 FirstWrite 1}
		mux_case_14_out {Type O LastRead -1 FirstWrite 1}
		mux_case_02_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tmpsum_vals_2 { ap_none {  { tmpsum_vals_2 in_data 0 40 } } }
	tmpsum_vals_1 { ap_none {  { tmpsum_vals_1 in_data 0 40 } } }
	tmpsum_vals { ap_none {  { tmpsum_vals in_data 0 40 } } }
	mux_case_26_out { ap_vld {  { mux_case_26_out out_data 1 40 }  { mux_case_26_out_ap_vld out_vld 1 1 } } }
	mux_case_14_out { ap_vld {  { mux_case_14_out out_data 1 40 }  { mux_case_14_out_ap_vld out_vld 1 1 } } }
	mux_case_02_out { ap_vld {  { mux_case_02_out out_data 1 40 }  { mux_case_02_out_ap_vld out_vld 1 1 } } }
}
