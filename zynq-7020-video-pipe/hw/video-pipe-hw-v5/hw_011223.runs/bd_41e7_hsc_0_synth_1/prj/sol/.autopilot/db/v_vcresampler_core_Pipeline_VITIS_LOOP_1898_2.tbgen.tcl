set moduleName v_vcresampler_core_Pipeline_VITIS_LOOP_1898_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {v_vcresampler_core_Pipeline_VITIS_LOOP_1898_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ loopWidth int 16 regular {ap_stable 0} }
	{ stream_out_420 int 30 regular {fifo 1 volatile }  }
	{ p_read int 1 regular  }
	{ cmp100 int 1 regular  }
	{ linebuf_c_1 int 10 regular {array 1920 { 0 1 } 1 1 }  }
	{ empty_31 int 1 regular  }
	{ empty int 1 regular  }
	{ linebuf_y int 10 regular {array 1920 { 2 3 } 1 1 }  }
	{ linebuf_c int 10 regular {array 1920 { 0 1 } 1 1 }  }
	{ cmp33 int 1 regular  }
	{ stream_out_422 int 30 regular {fifo 0 volatile }  }
	{ p_0_0344504_out int 10 regular {pointer 2}  }
	{ pix_0_2_0_0_0_load502_out int 10 regular {pointer 2}  }
	{ pix_0_1_0_0_0_load500_out int 10 regular {pointer 2}  }
	{ pix_0_0_0_0_0_load498_out int 10 regular {pointer 2}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "stream_out_420", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp100", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_c_1", "interface" : "memory", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "empty_31", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_y", "interface" : "memory", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "linebuf_c", "interface" : "memory", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "cmp33", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_out_422", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0344504_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "pix_0_2_0_0_0_load502_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "pix_0_1_0_0_0_load500_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "pix_0_0_0_0_0_load498_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_out_422_dout sc_in sc_lv 30 signal 10 } 
	{ stream_out_422_num_data_valid sc_in sc_lv 5 signal 10 } 
	{ stream_out_422_fifo_cap sc_in sc_lv 5 signal 10 } 
	{ stream_out_422_empty_n sc_in sc_logic 1 signal 10 } 
	{ stream_out_422_read sc_out sc_logic 1 signal 10 } 
	{ stream_out_420_din sc_out sc_lv 30 signal 1 } 
	{ stream_out_420_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ stream_out_420_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ stream_out_420_full_n sc_in sc_logic 1 signal 1 } 
	{ stream_out_420_write sc_out sc_logic 1 signal 1 } 
	{ loopWidth sc_in sc_lv 16 signal 0 } 
	{ p_read sc_in sc_lv 1 signal 2 } 
	{ cmp100 sc_in sc_lv 1 signal 3 } 
	{ linebuf_c_1_address0 sc_out sc_lv 11 signal 4 } 
	{ linebuf_c_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ linebuf_c_1_we0 sc_out sc_logic 1 signal 4 } 
	{ linebuf_c_1_d0 sc_out sc_lv 10 signal 4 } 
	{ linebuf_c_1_address1 sc_out sc_lv 11 signal 4 } 
	{ linebuf_c_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ linebuf_c_1_q1 sc_in sc_lv 10 signal 4 } 
	{ empty_31 sc_in sc_lv 1 signal 5 } 
	{ empty sc_in sc_lv 1 signal 6 } 
	{ linebuf_y_address0 sc_out sc_lv 11 signal 7 } 
	{ linebuf_y_ce0 sc_out sc_logic 1 signal 7 } 
	{ linebuf_y_we0 sc_out sc_logic 1 signal 7 } 
	{ linebuf_y_d0 sc_out sc_lv 10 signal 7 } 
	{ linebuf_y_q0 sc_in sc_lv 10 signal 7 } 
	{ linebuf_c_address0 sc_out sc_lv 11 signal 8 } 
	{ linebuf_c_ce0 sc_out sc_logic 1 signal 8 } 
	{ linebuf_c_we0 sc_out sc_logic 1 signal 8 } 
	{ linebuf_c_d0 sc_out sc_lv 10 signal 8 } 
	{ linebuf_c_address1 sc_out sc_lv 11 signal 8 } 
	{ linebuf_c_ce1 sc_out sc_logic 1 signal 8 } 
	{ linebuf_c_q1 sc_in sc_lv 10 signal 8 } 
	{ cmp33 sc_in sc_lv 1 signal 9 } 
	{ p_0_0344504_out_i sc_in sc_lv 10 signal 11 } 
	{ p_0_0344504_out_o sc_out sc_lv 10 signal 11 } 
	{ p_0_0344504_out_o_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ pix_0_2_0_0_0_load502_out_i sc_in sc_lv 10 signal 12 } 
	{ pix_0_2_0_0_0_load502_out_o sc_out sc_lv 10 signal 12 } 
	{ pix_0_2_0_0_0_load502_out_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ pix_0_1_0_0_0_load500_out_i sc_in sc_lv 10 signal 13 } 
	{ pix_0_1_0_0_0_load500_out_o sc_out sc_lv 10 signal 13 } 
	{ pix_0_1_0_0_0_load500_out_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ pix_0_0_0_0_0_load498_out_i sc_in sc_lv 10 signal 14 } 
	{ pix_0_0_0_0_0_load498_out_o sc_out sc_lv 10 signal 14 } 
	{ pix_0_0_0_0_0_load498_out_o_ap_vld sc_out sc_logic 1 outvld 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_out_422_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "stream_out_422", "role": "dout" }} , 
 	{ "name": "stream_out_422_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_422", "role": "num_data_valid" }} , 
 	{ "name": "stream_out_422_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_422", "role": "fifo_cap" }} , 
 	{ "name": "stream_out_422_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_422", "role": "empty_n" }} , 
 	{ "name": "stream_out_422_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_422", "role": "read" }} , 
 	{ "name": "stream_out_420_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "stream_out_420", "role": "din" }} , 
 	{ "name": "stream_out_420_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_420", "role": "num_data_valid" }} , 
 	{ "name": "stream_out_420_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_420", "role": "fifo_cap" }} , 
 	{ "name": "stream_out_420_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_420", "role": "full_n" }} , 
 	{ "name": "stream_out_420_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_420", "role": "write" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "cmp100", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp100", "role": "default" }} , 
 	{ "name": "linebuf_c_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c_1", "role": "address0" }} , 
 	{ "name": "linebuf_c_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_1", "role": "ce0" }} , 
 	{ "name": "linebuf_c_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_1", "role": "we0" }} , 
 	{ "name": "linebuf_c_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_c_1", "role": "d0" }} , 
 	{ "name": "linebuf_c_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c_1", "role": "address1" }} , 
 	{ "name": "linebuf_c_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_1", "role": "ce1" }} , 
 	{ "name": "linebuf_c_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_c_1", "role": "q1" }} , 
 	{ "name": "empty_31", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_31", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "linebuf_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_y", "role": "address0" }} , 
 	{ "name": "linebuf_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_y", "role": "ce0" }} , 
 	{ "name": "linebuf_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_y", "role": "we0" }} , 
 	{ "name": "linebuf_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_y", "role": "d0" }} , 
 	{ "name": "linebuf_y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_y", "role": "q0" }} , 
 	{ "name": "linebuf_c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c", "role": "address0" }} , 
 	{ "name": "linebuf_c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c", "role": "ce0" }} , 
 	{ "name": "linebuf_c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c", "role": "we0" }} , 
 	{ "name": "linebuf_c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_c", "role": "d0" }} , 
 	{ "name": "linebuf_c_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c", "role": "address1" }} , 
 	{ "name": "linebuf_c_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c", "role": "ce1" }} , 
 	{ "name": "linebuf_c_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_c", "role": "q1" }} , 
 	{ "name": "cmp33", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp33", "role": "default" }} , 
 	{ "name": "p_0_0344504_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0344504_out", "role": "i" }} , 
 	{ "name": "p_0_0344504_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0344504_out", "role": "o" }} , 
 	{ "name": "p_0_0344504_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0344504_out", "role": "o_ap_vld" }} , 
 	{ "name": "pix_0_2_0_0_0_load502_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_0_2_0_0_0_load502_out", "role": "i" }} , 
 	{ "name": "pix_0_2_0_0_0_load502_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_0_2_0_0_0_load502_out", "role": "o" }} , 
 	{ "name": "pix_0_2_0_0_0_load502_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_0_2_0_0_0_load502_out", "role": "o_ap_vld" }} , 
 	{ "name": "pix_0_1_0_0_0_load500_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_0_1_0_0_0_load500_out", "role": "i" }} , 
 	{ "name": "pix_0_1_0_0_0_load500_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_0_1_0_0_0_load500_out", "role": "o" }} , 
 	{ "name": "pix_0_1_0_0_0_load500_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_0_1_0_0_0_load500_out", "role": "o_ap_vld" }} , 
 	{ "name": "pix_0_0_0_0_0_load498_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_0_0_0_0_0_load498_out", "role": "i" }} , 
 	{ "name": "pix_0_0_0_0_0_load498_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_0_0_0_0_0_load498_out", "role": "o" }} , 
 	{ "name": "pix_0_0_0_0_0_load498_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_0_0_0_0_0_load498_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_vcresampler_core_Pipeline_VITIS_LOOP_1898_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "32772",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "loopWidth", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "stream_out_420", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_420_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp100", "Type" : "None", "Direction" : "I"},
			{"Name" : "linebuf_c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "empty_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "linebuf_y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cmp33", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_out_422", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_out_422_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_0_0344504_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pix_0_2_0_0_0_load502_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pix_0_1_0_0_0_load500_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pix_0_0_0_0_0_load498_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1898_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	v_vcresampler_core_Pipeline_VITIS_LOOP_1898_2 {
		loopWidth {Type I LastRead 0 FirstWrite -1}
		stream_out_420 {Type O LastRead -1 FirstWrite 2}
		p_read {Type I LastRead 0 FirstWrite -1}
		cmp100 {Type I LastRead 0 FirstWrite -1}
		linebuf_c_1 {Type IO LastRead 1 FirstWrite 2}
		empty_31 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		linebuf_y {Type IO LastRead 2 FirstWrite 2}
		linebuf_c {Type IO LastRead 0 FirstWrite 2}
		cmp33 {Type I LastRead 0 FirstWrite -1}
		stream_out_422 {Type I LastRead 1 FirstWrite -1}
		p_0_0344504_out {Type IO LastRead 2 FirstWrite 1}
		pix_0_2_0_0_0_load502_out {Type IO LastRead 2 FirstWrite 1}
		pix_0_1_0_0_0_load500_out {Type IO LastRead 2 FirstWrite 1}
		pix_0_0_0_0_0_load498_out {Type IO LastRead 2 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "32772"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "32772"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	loopWidth { ap_stable {  { loopWidth in_data 0 16 } } }
	stream_out_420 { ap_fifo {  { stream_out_420_din fifo_data_in 1 30 }  { stream_out_420_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_out_420_fifo_cap fifo_update 0 5 }  { stream_out_420_full_n fifo_status 0 1 }  { stream_out_420_write fifo_port_we 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 1 } } }
	cmp100 { ap_none {  { cmp100 in_data 0 1 } } }
	linebuf_c_1 { ap_memory {  { linebuf_c_1_address0 mem_address 1 11 }  { linebuf_c_1_ce0 mem_ce 1 1 }  { linebuf_c_1_we0 mem_we 1 1 }  { linebuf_c_1_d0 mem_din 1 10 }  { linebuf_c_1_address1 MemPortADDR2 1 11 }  { linebuf_c_1_ce1 MemPortCE2 1 1 }  { linebuf_c_1_q1 MemPortDOUT2 0 10 } } }
	empty_31 { ap_none {  { empty_31 in_data 0 1 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	linebuf_y { ap_memory {  { linebuf_y_address0 mem_address 1 11 }  { linebuf_y_ce0 mem_ce 1 1 }  { linebuf_y_we0 mem_we 1 1 }  { linebuf_y_d0 mem_din 1 10 }  { linebuf_y_q0 mem_dout 0 10 } } }
	linebuf_c { ap_memory {  { linebuf_c_address0 mem_address 1 11 }  { linebuf_c_ce0 mem_ce 1 1 }  { linebuf_c_we0 mem_we 1 1 }  { linebuf_c_d0 mem_din 1 10 }  { linebuf_c_address1 MemPortADDR2 1 11 }  { linebuf_c_ce1 MemPortCE2 1 1 }  { linebuf_c_q1 in_data 0 10 } } }
	cmp33 { ap_none {  { cmp33 in_data 0 1 } } }
	stream_out_422 { ap_fifo {  { stream_out_422_dout fifo_data_in 0 30 }  { stream_out_422_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_out_422_fifo_cap fifo_update 0 5 }  { stream_out_422_empty_n fifo_status 0 1 }  { stream_out_422_read fifo_port_we 1 1 } } }
	p_0_0344504_out { ap_ovld {  { p_0_0344504_out_i in_data 0 10 }  { p_0_0344504_out_o out_data 1 10 }  { p_0_0344504_out_o_ap_vld out_vld 1 1 } } }
	pix_0_2_0_0_0_load502_out { ap_ovld {  { pix_0_2_0_0_0_load502_out_i in_data 0 10 }  { pix_0_2_0_0_0_load502_out_o out_data 1 10 }  { pix_0_2_0_0_0_load502_out_o_ap_vld out_vld 1 1 } } }
	pix_0_1_0_0_0_load500_out { ap_ovld {  { pix_0_1_0_0_0_load500_out_i in_data 0 10 }  { pix_0_1_0_0_0_load500_out_o out_data 1 10 }  { pix_0_1_0_0_0_load500_out_o_ap_vld out_vld 1 1 } } }
	pix_0_0_0_0_0_load498_out { ap_ovld {  { pix_0_0_0_0_0_load498_out_i in_data 0 10 }  { pix_0_0_0_0_0_load498_out_o out_data 1 10 }  { pix_0_0_0_0_0_load498_out_o_ap_vld out_vld 1 1 } } }
}
