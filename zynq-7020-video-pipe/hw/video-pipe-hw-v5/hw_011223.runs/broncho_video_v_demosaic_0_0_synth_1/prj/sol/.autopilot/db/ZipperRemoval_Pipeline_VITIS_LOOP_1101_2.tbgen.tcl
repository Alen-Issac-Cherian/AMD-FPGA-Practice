set moduleName ZipperRemoval_Pipeline_VITIS_LOOP_1101_2
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
set C_modelName {ZipperRemoval_Pipeline_VITIS_LOOP_1101_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_0_0_0477649_lcssa662687 int 10 regular  }
	{ p_0_0_0478647_lcssa660685 int 10 regular  }
	{ p_0_0_0479651_lcssa658683 int 10 regular  }
	{ conv2_i_i_lcssa681 int 10 regular  }
	{ loopWidth int 17 regular {ap_stable 0} }
	{ zext_ln1085 int 16 regular {ap_stable 0} }
	{ imgRgb int 30 regular {fifo 0 volatile }  }
	{ imgUnzip int 30 regular {fifo 1 volatile }  }
	{ p_0_0_0480_1661_out int 10 regular {pointer 1}  }
	{ p_0_0_0481_1659_out int 10 regular {pointer 1}  }
	{ p_0_0_0482_1657_out int 10 regular {pointer 1}  }
	{ p_0_0_0483_1656_out int 10 regular {pointer 1}  }
	{ p_0_0_0480_1655_out int 10 regular {pointer 2}  }
	{ p_0_0_0481_1654_out int 10 regular {pointer 2}  }
	{ p_0_0_0482_1653_out int 10 regular {pointer 2}  }
	{ p_0_0_0483_1652_out int 10 regular {pointer 2}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "p_0_0_0477649_lcssa662687", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0478647_lcssa660685", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0479651_lcssa658683", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_i_i_lcssa681", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1085", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "imgRgb", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "imgUnzip", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0480_1661_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0481_1659_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0482_1657_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0483_1656_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0480_1655_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0481_1654_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0482_1653_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0483_1652_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgRgb_dout sc_in sc_lv 30 signal 6 } 
	{ imgRgb_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ imgRgb_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ imgRgb_empty_n sc_in sc_logic 1 signal 6 } 
	{ imgRgb_read sc_out sc_logic 1 signal 6 } 
	{ imgUnzip_din sc_out sc_lv 30 signal 7 } 
	{ imgUnzip_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ imgUnzip_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ imgUnzip_full_n sc_in sc_logic 1 signal 7 } 
	{ imgUnzip_write sc_out sc_logic 1 signal 7 } 
	{ p_0_0_0477649_lcssa662687 sc_in sc_lv 10 signal 0 } 
	{ p_0_0_0478647_lcssa660685 sc_in sc_lv 10 signal 1 } 
	{ p_0_0_0479651_lcssa658683 sc_in sc_lv 10 signal 2 } 
	{ conv2_i_i_lcssa681 sc_in sc_lv 10 signal 3 } 
	{ loopWidth sc_in sc_lv 17 signal 4 } 
	{ zext_ln1085 sc_in sc_lv 16 signal 5 } 
	{ p_0_0_0480_1661_out sc_out sc_lv 10 signal 8 } 
	{ p_0_0_0480_1661_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ p_0_0_0481_1659_out sc_out sc_lv 10 signal 9 } 
	{ p_0_0_0481_1659_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ p_0_0_0482_1657_out sc_out sc_lv 10 signal 10 } 
	{ p_0_0_0482_1657_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ p_0_0_0483_1656_out sc_out sc_lv 10 signal 11 } 
	{ p_0_0_0483_1656_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ p_0_0_0480_1655_out_i sc_in sc_lv 10 signal 12 } 
	{ p_0_0_0480_1655_out_o sc_out sc_lv 10 signal 12 } 
	{ p_0_0_0480_1655_out_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ p_0_0_0481_1654_out_i sc_in sc_lv 10 signal 13 } 
	{ p_0_0_0481_1654_out_o sc_out sc_lv 10 signal 13 } 
	{ p_0_0_0481_1654_out_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ p_0_0_0482_1653_out_i sc_in sc_lv 10 signal 14 } 
	{ p_0_0_0482_1653_out_o sc_out sc_lv 10 signal 14 } 
	{ p_0_0_0482_1653_out_o_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ p_0_0_0483_1652_out_i sc_in sc_lv 10 signal 15 } 
	{ p_0_0_0483_1652_out_o sc_out sc_lv 10 signal 15 } 
	{ p_0_0_0483_1652_out_o_ap_vld sc_out sc_logic 1 outvld 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgRgb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgRgb", "role": "dout" }} , 
 	{ "name": "imgRgb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgRgb", "role": "num_data_valid" }} , 
 	{ "name": "imgRgb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgRgb", "role": "fifo_cap" }} , 
 	{ "name": "imgRgb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRgb", "role": "empty_n" }} , 
 	{ "name": "imgRgb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRgb", "role": "read" }} , 
 	{ "name": "imgUnzip_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgUnzip", "role": "din" }} , 
 	{ "name": "imgUnzip_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgUnzip", "role": "num_data_valid" }} , 
 	{ "name": "imgUnzip_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgUnzip", "role": "fifo_cap" }} , 
 	{ "name": "imgUnzip_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgUnzip", "role": "full_n" }} , 
 	{ "name": "imgUnzip_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgUnzip", "role": "write" }} , 
 	{ "name": "p_0_0_0477649_lcssa662687", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0477649_lcssa662687", "role": "default" }} , 
 	{ "name": "p_0_0_0478647_lcssa660685", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0478647_lcssa660685", "role": "default" }} , 
 	{ "name": "p_0_0_0479651_lcssa658683", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0479651_lcssa658683", "role": "default" }} , 
 	{ "name": "conv2_i_i_lcssa681", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2_i_i_lcssa681", "role": "default" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "zext_ln1085", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln1085", "role": "default" }} , 
 	{ "name": "p_0_0_0480_1661_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0480_1661_out", "role": "default" }} , 
 	{ "name": "p_0_0_0480_1661_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0480_1661_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0481_1659_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0481_1659_out", "role": "default" }} , 
 	{ "name": "p_0_0_0481_1659_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0481_1659_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0482_1657_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0482_1657_out", "role": "default" }} , 
 	{ "name": "p_0_0_0482_1657_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0482_1657_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0483_1656_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0483_1656_out", "role": "default" }} , 
 	{ "name": "p_0_0_0483_1656_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0483_1656_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0480_1655_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0480_1655_out", "role": "i" }} , 
 	{ "name": "p_0_0_0480_1655_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0480_1655_out", "role": "o" }} , 
 	{ "name": "p_0_0_0480_1655_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0480_1655_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0481_1654_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0481_1654_out", "role": "i" }} , 
 	{ "name": "p_0_0_0481_1654_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0481_1654_out", "role": "o" }} , 
 	{ "name": "p_0_0_0481_1654_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0481_1654_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0482_1653_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0482_1653_out", "role": "i" }} , 
 	{ "name": "p_0_0_0482_1653_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0482_1653_out", "role": "o" }} , 
 	{ "name": "p_0_0_0482_1653_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0482_1653_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0483_1652_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0483_1652_out", "role": "i" }} , 
 	{ "name": "p_0_0_0483_1652_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0483_1652_out", "role": "o" }} , 
 	{ "name": "p_0_0_0483_1652_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0483_1652_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ZipperRemoval_Pipeline_VITIS_LOOP_1101_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "65542",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_0_0_0477649_lcssa662687", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0478647_lcssa660685", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0479651_lcssa658683", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv2_i_i_lcssa681", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "zext_ln1085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "imgRgb", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgRgb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgUnzip", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgUnzip_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_0_0_0480_1661_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0481_1659_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0482_1657_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0483_1656_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0480_1655_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0481_1654_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0482_1653_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0483_1652_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1101_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ZipperRemoval_Pipeline_VITIS_LOOP_1101_2 {
		p_0_0_0477649_lcssa662687 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0478647_lcssa660685 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0479651_lcssa658683 {Type I LastRead 0 FirstWrite -1}
		conv2_i_i_lcssa681 {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		zext_ln1085 {Type I LastRead 0 FirstWrite -1}
		imgRgb {Type I LastRead 1 FirstWrite -1}
		imgUnzip {Type O LastRead -1 FirstWrite 5}
		p_0_0_0480_1661_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0481_1659_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0482_1657_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0483_1656_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0480_1655_out {Type IO LastRead 4 FirstWrite 4}
		p_0_0_0481_1654_out {Type IO LastRead 4 FirstWrite 4}
		p_0_0_0482_1653_out {Type IO LastRead 4 FirstWrite 4}
		p_0_0_0483_1652_out {Type IO LastRead 4 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "65542"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "65542"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_0_0_0477649_lcssa662687 { ap_none {  { p_0_0_0477649_lcssa662687 in_data 0 10 } } }
	p_0_0_0478647_lcssa660685 { ap_none {  { p_0_0_0478647_lcssa660685 in_data 0 10 } } }
	p_0_0_0479651_lcssa658683 { ap_none {  { p_0_0_0479651_lcssa658683 in_data 0 10 } } }
	conv2_i_i_lcssa681 { ap_none {  { conv2_i_i_lcssa681 in_data 0 10 } } }
	loopWidth { ap_stable {  { loopWidth in_data 0 17 } } }
	zext_ln1085 { ap_stable {  { zext_ln1085 in_data 0 16 } } }
	imgRgb { ap_fifo {  { imgRgb_dout fifo_data_in 0 30 }  { imgRgb_num_data_valid fifo_status_num_data_valid 0 3 }  { imgRgb_fifo_cap fifo_update 0 3 }  { imgRgb_empty_n fifo_status 0 1 }  { imgRgb_read fifo_port_we 1 1 } } }
	imgUnzip { ap_fifo {  { imgUnzip_din fifo_data_in 1 30 }  { imgUnzip_num_data_valid fifo_status_num_data_valid 0 3 }  { imgUnzip_fifo_cap fifo_update 0 3 }  { imgUnzip_full_n fifo_status 0 1 }  { imgUnzip_write fifo_port_we 1 1 } } }
	p_0_0_0480_1661_out { ap_vld {  { p_0_0_0480_1661_out out_data 1 10 }  { p_0_0_0480_1661_out_ap_vld out_vld 1 1 } } }
	p_0_0_0481_1659_out { ap_vld {  { p_0_0_0481_1659_out out_data 1 10 }  { p_0_0_0481_1659_out_ap_vld out_vld 1 1 } } }
	p_0_0_0482_1657_out { ap_vld {  { p_0_0_0482_1657_out out_data 1 10 }  { p_0_0_0482_1657_out_ap_vld out_vld 1 1 } } }
	p_0_0_0483_1656_out { ap_vld {  { p_0_0_0483_1656_out out_data 1 10 }  { p_0_0_0483_1656_out_ap_vld out_vld 1 1 } } }
	p_0_0_0480_1655_out { ap_ovld {  { p_0_0_0480_1655_out_i in_data 0 10 }  { p_0_0_0480_1655_out_o out_data 1 10 }  { p_0_0_0480_1655_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0481_1654_out { ap_ovld {  { p_0_0_0481_1654_out_i in_data 0 10 }  { p_0_0_0481_1654_out_o out_data 1 10 }  { p_0_0_0481_1654_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0482_1653_out { ap_ovld {  { p_0_0_0482_1653_out_i in_data 0 10 }  { p_0_0_0482_1653_out_o out_data 1 10 }  { p_0_0_0482_1653_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0483_1652_out { ap_ovld {  { p_0_0_0483_1652_out_i in_data 0 10 }  { p_0_0_0483_1652_out_o out_data 1 10 }  { p_0_0_0483_1652_out_o_ap_vld out_vld 1 1 } } }
}
