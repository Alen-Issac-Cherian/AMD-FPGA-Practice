set moduleName hscale_polyphase
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {hscale_polyphase}
set C_modelType { int 30 }
set C_modelArgList {
	{ FiltCoeff_0 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_1 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_2 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_3 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_4 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_5 int 16 regular {array 64 { 1 } 1 1 }  }
	{ PixArray_0_0_val int 10 regular  }
	{ PixArray_0_1_val int 10 regular  }
	{ PixArray_0_2_val int 10 regular  }
	{ PixArray_1_0_val int 10 regular  }
	{ PixArray_1_1_val int 10 regular  }
	{ PixArray_1_2_val int 10 regular  }
	{ PixArray_2_0_val int 10 regular  }
	{ PixArray_2_1_val int 10 regular  }
	{ PixArray_2_2_val int 10 regular  }
	{ PixArray_3_0_val int 10 regular  }
	{ PixArray_3_1_val int 10 regular  }
	{ PixArray_3_2_val int 10 regular  }
	{ PixArray_4_0_val int 10 regular  }
	{ PixArray_4_1_val int 10 regular  }
	{ PixArray_4_2_val int 10 regular  }
	{ PixArray_5_0_val int 10 regular  }
	{ PixArray_5_1_val int 10 regular  }
	{ PixArray_5_2_val int 10 regular  }
	{ PixArray_6_0_val int 10 regular  }
	{ PixArray_6_1_val int 10 regular  }
	{ PixArray_6_2_val int 10 regular  }
	{ PixArray_7_0_val int 10 regular  }
	{ PixArray_7_1_val int 10 regular  }
	{ PixArray_7_2_val int 10 regular  }
	{ PhasesH_0_0_val int 6 regular  }
	{ ArrayIdx_val int 2 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "FiltCoeff_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_0_0_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_0_1_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_0_2_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_1_0_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_1_1_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_1_2_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_2_0_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_2_1_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_2_2_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_3_0_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_3_1_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_3_2_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_4_0_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_4_1_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_4_2_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_5_0_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_5_1_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_5_2_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_6_0_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_6_1_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_6_2_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_7_0_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_7_1_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PixArray_7_2_val", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "PhasesH_0_0_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "ArrayIdx_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 30} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ FiltCoeff_0_address0 sc_out sc_lv 6 signal 0 } 
	{ FiltCoeff_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ FiltCoeff_0_q0 sc_in sc_lv 16 signal 0 } 
	{ FiltCoeff_1_address0 sc_out sc_lv 6 signal 1 } 
	{ FiltCoeff_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ FiltCoeff_1_q0 sc_in sc_lv 16 signal 1 } 
	{ FiltCoeff_2_address0 sc_out sc_lv 6 signal 2 } 
	{ FiltCoeff_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ FiltCoeff_2_q0 sc_in sc_lv 16 signal 2 } 
	{ FiltCoeff_3_address0 sc_out sc_lv 6 signal 3 } 
	{ FiltCoeff_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ FiltCoeff_3_q0 sc_in sc_lv 16 signal 3 } 
	{ FiltCoeff_4_address0 sc_out sc_lv 6 signal 4 } 
	{ FiltCoeff_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ FiltCoeff_4_q0 sc_in sc_lv 16 signal 4 } 
	{ FiltCoeff_5_address0 sc_out sc_lv 6 signal 5 } 
	{ FiltCoeff_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ FiltCoeff_5_q0 sc_in sc_lv 16 signal 5 } 
	{ PixArray_0_0_val sc_in sc_lv 10 signal 6 } 
	{ PixArray_0_1_val sc_in sc_lv 10 signal 7 } 
	{ PixArray_0_2_val sc_in sc_lv 10 signal 8 } 
	{ PixArray_1_0_val sc_in sc_lv 10 signal 9 } 
	{ PixArray_1_1_val sc_in sc_lv 10 signal 10 } 
	{ PixArray_1_2_val sc_in sc_lv 10 signal 11 } 
	{ PixArray_2_0_val sc_in sc_lv 10 signal 12 } 
	{ PixArray_2_1_val sc_in sc_lv 10 signal 13 } 
	{ PixArray_2_2_val sc_in sc_lv 10 signal 14 } 
	{ PixArray_3_0_val sc_in sc_lv 10 signal 15 } 
	{ PixArray_3_1_val sc_in sc_lv 10 signal 16 } 
	{ PixArray_3_2_val sc_in sc_lv 10 signal 17 } 
	{ PixArray_4_0_val sc_in sc_lv 10 signal 18 } 
	{ PixArray_4_1_val sc_in sc_lv 10 signal 19 } 
	{ PixArray_4_2_val sc_in sc_lv 10 signal 20 } 
	{ PixArray_5_0_val sc_in sc_lv 10 signal 21 } 
	{ PixArray_5_1_val sc_in sc_lv 10 signal 22 } 
	{ PixArray_5_2_val sc_in sc_lv 10 signal 23 } 
	{ PixArray_6_0_val sc_in sc_lv 10 signal 24 } 
	{ PixArray_6_1_val sc_in sc_lv 10 signal 25 } 
	{ PixArray_6_2_val sc_in sc_lv 10 signal 26 } 
	{ PixArray_7_0_val sc_in sc_lv 10 signal 27 } 
	{ PixArray_7_1_val sc_in sc_lv 10 signal 28 } 
	{ PixArray_7_2_val sc_in sc_lv 10 signal 29 } 
	{ PhasesH_0_0_val sc_in sc_lv 6 signal 30 } 
	{ ArrayIdx_val sc_in sc_lv 2 signal 31 } 
	{ ap_return_0 sc_out sc_lv 10 signal -1 } 
	{ ap_return_1 sc_out sc_lv 10 signal -1 } 
	{ ap_return_2 sc_out sc_lv 10 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "FiltCoeff_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_0", "role": "address0" }} , 
 	{ "name": "FiltCoeff_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_0", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_0", "role": "q0" }} , 
 	{ "name": "FiltCoeff_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_1", "role": "address0" }} , 
 	{ "name": "FiltCoeff_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_1", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_1", "role": "q0" }} , 
 	{ "name": "FiltCoeff_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_2", "role": "address0" }} , 
 	{ "name": "FiltCoeff_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_2", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_2", "role": "q0" }} , 
 	{ "name": "FiltCoeff_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_3", "role": "address0" }} , 
 	{ "name": "FiltCoeff_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_3", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_3", "role": "q0" }} , 
 	{ "name": "FiltCoeff_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_4", "role": "address0" }} , 
 	{ "name": "FiltCoeff_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_4", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_4", "role": "q0" }} , 
 	{ "name": "FiltCoeff_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_5", "role": "address0" }} , 
 	{ "name": "FiltCoeff_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_5", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_5", "role": "q0" }} , 
 	{ "name": "PixArray_0_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_0_0_val", "role": "default" }} , 
 	{ "name": "PixArray_0_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_0_1_val", "role": "default" }} , 
 	{ "name": "PixArray_0_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_0_2_val", "role": "default" }} , 
 	{ "name": "PixArray_1_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_1_0_val", "role": "default" }} , 
 	{ "name": "PixArray_1_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_1_1_val", "role": "default" }} , 
 	{ "name": "PixArray_1_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_1_2_val", "role": "default" }} , 
 	{ "name": "PixArray_2_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_2_0_val", "role": "default" }} , 
 	{ "name": "PixArray_2_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_2_1_val", "role": "default" }} , 
 	{ "name": "PixArray_2_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_2_2_val", "role": "default" }} , 
 	{ "name": "PixArray_3_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_3_0_val", "role": "default" }} , 
 	{ "name": "PixArray_3_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_3_1_val", "role": "default" }} , 
 	{ "name": "PixArray_3_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_3_2_val", "role": "default" }} , 
 	{ "name": "PixArray_4_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_4_0_val", "role": "default" }} , 
 	{ "name": "PixArray_4_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_4_1_val", "role": "default" }} , 
 	{ "name": "PixArray_4_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_4_2_val", "role": "default" }} , 
 	{ "name": "PixArray_5_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_5_0_val", "role": "default" }} , 
 	{ "name": "PixArray_5_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_5_1_val", "role": "default" }} , 
 	{ "name": "PixArray_5_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_5_2_val", "role": "default" }} , 
 	{ "name": "PixArray_6_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_6_0_val", "role": "default" }} , 
 	{ "name": "PixArray_6_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_6_1_val", "role": "default" }} , 
 	{ "name": "PixArray_6_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_6_2_val", "role": "default" }} , 
 	{ "name": "PixArray_7_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_7_0_val", "role": "default" }} , 
 	{ "name": "PixArray_7_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_7_1_val", "role": "default" }} , 
 	{ "name": "PixArray_7_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PixArray_7_2_val", "role": "default" }} , 
 	{ "name": "PhasesH_0_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "PhasesH_0_0_val", "role": "default" }} , 
 	{ "name": "ArrayIdx_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ArrayIdx_val", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "hscale_polyphase",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "FiltCoeff_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PixArray_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_0_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_0_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_1_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_1_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_1_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_2_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_2_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_2_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_3_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_3_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_3_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_4_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_4_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_4_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_5_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_5_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_5_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_6_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_6_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_6_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_7_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_7_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PixArray_7_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "PhasesH_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "ArrayIdx_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U99", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U100", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U101", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U102", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U103", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U104", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U105", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U106", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U107", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U108", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U109", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U110", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U111", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U112", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U113", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U114", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U115", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_10_1_1_U116", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_12ns_26_4_1_U117", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_12ns_26_4_1_U118", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_12ns_26_4_1_U119", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_26s_27_4_1_U120", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_26s_27_4_1_U121", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_26s_27_4_1_U122", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_27s_28_4_1_U123", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_27s_28_4_1_U124", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_27s_28_4_1_U125", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_28s_28_4_1_U126", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_28s_28_4_1_U127", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_28s_28_4_1_U128", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_28s_29_4_1_U129", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_28s_29_4_1_U130", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_28s_29_4_1_U131", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_29s_29_4_1_U132", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_29s_29_4_1_U133", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_16s_29s_29_4_1_U134", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hscale_polyphase {
		FiltCoeff_0 {Type I LastRead 0 FirstWrite -1}
		FiltCoeff_1 {Type I LastRead 1 FirstWrite -1}
		FiltCoeff_2 {Type I LastRead 2 FirstWrite -1}
		FiltCoeff_3 {Type I LastRead 3 FirstWrite -1}
		FiltCoeff_4 {Type I LastRead 4 FirstWrite -1}
		FiltCoeff_5 {Type I LastRead 5 FirstWrite -1}
		PixArray_0_0_val {Type I LastRead 0 FirstWrite -1}
		PixArray_0_1_val {Type I LastRead 0 FirstWrite -1}
		PixArray_0_2_val {Type I LastRead 0 FirstWrite -1}
		PixArray_1_0_val {Type I LastRead 0 FirstWrite -1}
		PixArray_1_1_val {Type I LastRead 0 FirstWrite -1}
		PixArray_1_2_val {Type I LastRead 0 FirstWrite -1}
		PixArray_2_0_val {Type I LastRead 0 FirstWrite -1}
		PixArray_2_1_val {Type I LastRead 0 FirstWrite -1}
		PixArray_2_2_val {Type I LastRead 0 FirstWrite -1}
		PixArray_3_0_val {Type I LastRead 0 FirstWrite -1}
		PixArray_3_1_val {Type I LastRead 0 FirstWrite -1}
		PixArray_3_2_val {Type I LastRead 0 FirstWrite -1}
		PixArray_4_0_val {Type I LastRead 0 FirstWrite -1}
		PixArray_4_1_val {Type I LastRead 0 FirstWrite -1}
		PixArray_4_2_val {Type I LastRead 0 FirstWrite -1}
		PixArray_5_0_val {Type I LastRead 0 FirstWrite -1}
		PixArray_5_1_val {Type I LastRead 0 FirstWrite -1}
		PixArray_5_2_val {Type I LastRead 0 FirstWrite -1}
		PixArray_6_0_val {Type I LastRead 0 FirstWrite -1}
		PixArray_6_1_val {Type I LastRead 0 FirstWrite -1}
		PixArray_6_2_val {Type I LastRead 0 FirstWrite -1}
		PixArray_7_0_val {Type I LastRead 0 FirstWrite -1}
		PixArray_7_1_val {Type I LastRead 0 FirstWrite -1}
		PixArray_7_2_val {Type I LastRead 0 FirstWrite -1}
		PhasesH_0_0_val {Type I LastRead 0 FirstWrite -1}
		ArrayIdx_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	FiltCoeff_0 { ap_memory {  { FiltCoeff_0_address0 mem_address 1 6 }  { FiltCoeff_0_ce0 mem_ce 1 1 }  { FiltCoeff_0_q0 in_data 0 16 } } }
	FiltCoeff_1 { ap_memory {  { FiltCoeff_1_address0 mem_address 1 6 }  { FiltCoeff_1_ce0 mem_ce 1 1 }  { FiltCoeff_1_q0 in_data 0 16 } } }
	FiltCoeff_2 { ap_memory {  { FiltCoeff_2_address0 mem_address 1 6 }  { FiltCoeff_2_ce0 mem_ce 1 1 }  { FiltCoeff_2_q0 in_data 0 16 } } }
	FiltCoeff_3 { ap_memory {  { FiltCoeff_3_address0 mem_address 1 6 }  { FiltCoeff_3_ce0 mem_ce 1 1 }  { FiltCoeff_3_q0 in_data 0 16 } } }
	FiltCoeff_4 { ap_memory {  { FiltCoeff_4_address0 mem_address 1 6 }  { FiltCoeff_4_ce0 mem_ce 1 1 }  { FiltCoeff_4_q0 in_data 0 16 } } }
	FiltCoeff_5 { ap_memory {  { FiltCoeff_5_address0 mem_address 1 6 }  { FiltCoeff_5_ce0 mem_ce 1 1 }  { FiltCoeff_5_q0 in_data 0 16 } } }
	PixArray_0_0_val { ap_none {  { PixArray_0_0_val in_data 0 10 } } }
	PixArray_0_1_val { ap_none {  { PixArray_0_1_val in_data 0 10 } } }
	PixArray_0_2_val { ap_none {  { PixArray_0_2_val in_data 0 10 } } }
	PixArray_1_0_val { ap_none {  { PixArray_1_0_val in_data 0 10 } } }
	PixArray_1_1_val { ap_none {  { PixArray_1_1_val in_data 0 10 } } }
	PixArray_1_2_val { ap_none {  { PixArray_1_2_val in_data 0 10 } } }
	PixArray_2_0_val { ap_none {  { PixArray_2_0_val in_data 0 10 } } }
	PixArray_2_1_val { ap_none {  { PixArray_2_1_val in_data 0 10 } } }
	PixArray_2_2_val { ap_none {  { PixArray_2_2_val in_data 0 10 } } }
	PixArray_3_0_val { ap_none {  { PixArray_3_0_val in_data 0 10 } } }
	PixArray_3_1_val { ap_none {  { PixArray_3_1_val in_data 0 10 } } }
	PixArray_3_2_val { ap_none {  { PixArray_3_2_val in_data 0 10 } } }
	PixArray_4_0_val { ap_none {  { PixArray_4_0_val in_data 0 10 } } }
	PixArray_4_1_val { ap_none {  { PixArray_4_1_val in_data 0 10 } } }
	PixArray_4_2_val { ap_none {  { PixArray_4_2_val in_data 0 10 } } }
	PixArray_5_0_val { ap_none {  { PixArray_5_0_val in_data 0 10 } } }
	PixArray_5_1_val { ap_none {  { PixArray_5_1_val in_data 0 10 } } }
	PixArray_5_2_val { ap_none {  { PixArray_5_2_val in_data 0 10 } } }
	PixArray_6_0_val { ap_none {  { PixArray_6_0_val in_data 0 10 } } }
	PixArray_6_1_val { ap_none {  { PixArray_6_1_val in_data 0 10 } } }
	PixArray_6_2_val { ap_none {  { PixArray_6_2_val in_data 0 10 } } }
	PixArray_7_0_val { ap_none {  { PixArray_7_0_val in_data 0 10 } } }
	PixArray_7_1_val { ap_none {  { PixArray_7_1_val in_data 0 10 } } }
	PixArray_7_2_val { ap_none {  { PixArray_7_2_val in_data 0 10 } } }
	PhasesH_0_0_val { ap_none {  { PhasesH_0_0_val in_data 0 6 } } }
	ArrayIdx_val { ap_none {  { ArrayIdx_val in_data 0 2 } } }
}
