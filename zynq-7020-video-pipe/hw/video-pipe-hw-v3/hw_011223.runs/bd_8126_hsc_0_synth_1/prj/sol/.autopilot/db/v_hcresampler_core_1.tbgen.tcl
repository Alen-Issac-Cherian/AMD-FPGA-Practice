set moduleName v_hcresampler_core_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {v_hcresampler_core.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_in int 24 regular {fifo 0 volatile }  }
	{ Height int 16 regular {fifo 0 stable }  }
	{ WidthIn int 16 regular {fifo 0 stable }  }
	{ p_read int 1 regular  }
	{ stream_upsampled int 24 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "stream_in", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "Height", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "WidthIn", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_upsampled", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_in_dout sc_in sc_lv 24 signal 0 } 
	{ stream_in_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ stream_in_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ stream_in_empty_n sc_in sc_logic 1 signal 0 } 
	{ stream_in_read sc_out sc_logic 1 signal 0 } 
	{ Height_dout sc_in sc_lv 16 signal 1 } 
	{ Height_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ Height_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ Height_empty_n sc_in sc_logic 1 signal 1 } 
	{ Height_read sc_out sc_logic 1 signal 1 } 
	{ WidthIn_dout sc_in sc_lv 16 signal 2 } 
	{ WidthIn_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ WidthIn_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ WidthIn_empty_n sc_in sc_logic 1 signal 2 } 
	{ WidthIn_read sc_out sc_logic 1 signal 2 } 
	{ p_read sc_in sc_lv 1 signal 3 } 
	{ stream_upsampled_din sc_out sc_lv 24 signal 4 } 
	{ stream_upsampled_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ stream_upsampled_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ stream_upsampled_full_n sc_in sc_logic 1 signal 4 } 
	{ stream_upsampled_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_in", "role": "dout" }} , 
 	{ "name": "stream_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in", "role": "num_data_valid" }} , 
 	{ "name": "stream_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in", "role": "fifo_cap" }} , 
 	{ "name": "stream_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in", "role": "empty_n" }} , 
 	{ "name": "stream_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in", "role": "read" }} , 
 	{ "name": "Height_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Height", "role": "dout" }} , 
 	{ "name": "Height_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Height", "role": "num_data_valid" }} , 
 	{ "name": "Height_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Height", "role": "fifo_cap" }} , 
 	{ "name": "Height_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height", "role": "empty_n" }} , 
 	{ "name": "Height_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height", "role": "read" }} , 
 	{ "name": "WidthIn_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "WidthIn", "role": "dout" }} , 
 	{ "name": "WidthIn_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthIn", "role": "num_data_valid" }} , 
 	{ "name": "WidthIn_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthIn", "role": "fifo_cap" }} , 
 	{ "name": "WidthIn_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthIn", "role": "empty_n" }} , 
 	{ "name": "WidthIn_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthIn", "role": "read" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "stream_upsampled_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "din" }} , 
 	{ "name": "stream_upsampled_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "num_data_valid" }} , 
 	{ "name": "stream_upsampled_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "fifo_cap" }} , 
 	{ "name": "stream_upsampled_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "full_n" }} , 
 	{ "name": "stream_upsampled_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_hcresampler_core_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "1073938427",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1681_2_fu_162", "Port" : "stream_in", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthIn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthIn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "stream_upsampled", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1681_2_fu_162", "Port" : "stream_upsampled", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1679_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1681_2_fu_162", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "v_hcresampler_core_1_Pipeline_VITIS_LOOP_1681_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "32771",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pixbuf_y_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_0495682_lcssa728", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_upsampled", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_upsampled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln1677", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthIn_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pixbuf_y_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_5_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_0688712_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0684708_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0_2705_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0487_2702_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0_1697_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0487_1694_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_0691_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0687_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inpix_0_2_0_0_0_load681_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inpix_0_1_0_0_0_load679_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inpix_0_0_0_0_0_load677_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1681_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1681_2_fu_162.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	v_hcresampler_core_1 {
		stream_in {Type I LastRead 1 FirstWrite -1}
		Height {Type I LastRead 0 FirstWrite -1}
		WidthIn {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		stream_upsampled {Type O LastRead -1 FirstWrite 2}}
	v_hcresampler_core_1_Pipeline_VITIS_LOOP_1681_2 {
		pixbuf_y_4 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_3 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_2 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_1 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_0495682_lcssa728 {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		stream_upsampled {Type O LastRead -1 FirstWrite 2}
		p_read {Type I LastRead 0 FirstWrite -1}
		select_ln1677 {Type I LastRead 0 FirstWrite -1}
		WidthIn_load {Type I LastRead 0 FirstWrite -1}
		stream_in {Type I LastRead 1 FirstWrite -1}
		pixbuf_y_9_out {Type O LastRead -1 FirstWrite 2}
		pixbuf_y_8_out {Type O LastRead -1 FirstWrite 2}
		pixbuf_y_7_out {Type O LastRead -1 FirstWrite 2}
		pixbuf_y_6_out {Type O LastRead -1 FirstWrite 2}
		pixbuf_y_5_out {Type IO LastRead 3 FirstWrite 3}
		p_0_2_0_0_0688712_out {Type IO LastRead 2 FirstWrite 2}
		p_0_1_0_0_0684708_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0_2705_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0487_2702_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0_1697_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0487_1694_out {Type IO LastRead 2 FirstWrite 2}
		p_0_2_0_0_0691_out {Type IO LastRead 2 FirstWrite 1}
		p_0_1_0_0_0687_out {Type IO LastRead 2 FirstWrite 1}
		inpix_0_2_0_0_0_load681_out {Type IO LastRead 2 FirstWrite 1}
		inpix_0_1_0_0_0_load679_out {Type IO LastRead 2 FirstWrite 1}
		inpix_0_0_0_0_0_load677_out {Type IO LastRead 2 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "1073938427"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "1073938427"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_in { ap_fifo {  { stream_in_dout fifo_data_in 0 24 }  { stream_in_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_in_fifo_cap fifo_update 0 5 }  { stream_in_empty_n fifo_status 0 1 }  { stream_in_read fifo_port_we 1 1 } } }
	Height { ap_fifo {  { Height_dout fifo_data_in 0 16 }  { Height_num_data_valid fifo_status_num_data_valid 0 3 }  { Height_fifo_cap fifo_update 0 3 }  { Height_empty_n fifo_status 0 1 }  { Height_read fifo_port_we 1 1 } } }
	WidthIn { ap_fifo {  { WidthIn_dout fifo_data_in 0 16 }  { WidthIn_num_data_valid fifo_status_num_data_valid 0 3 }  { WidthIn_fifo_cap fifo_update 0 3 }  { WidthIn_empty_n fifo_status 0 1 }  { WidthIn_read fifo_port_we 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 1 } } }
	stream_upsampled { ap_fifo {  { stream_upsampled_din fifo_data_in 1 24 }  { stream_upsampled_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_upsampled_fifo_cap fifo_update 0 5 }  { stream_upsampled_full_n fifo_status 0 1 }  { stream_upsampled_write fifo_port_we 1 1 } } }
}
