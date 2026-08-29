set moduleName Debayer
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {Debayer}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgBayer int 10 regular {fifo 0 volatile }  }
	{ imgRgb int 30 regular {fifo 1 volatile }  }
	{ height int 16 regular {ap_stable 0} }
	{ width int 16 regular {ap_stable 0} }
	{ bayerPhase_read int 16 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "imgBayer", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "imgRgb", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bayerPhase_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ imgBayer_dout sc_in sc_lv 10 signal 0 } 
	{ imgBayer_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgBayer_read sc_out sc_logic 1 signal 0 } 
	{ imgRgb_din sc_out sc_lv 30 signal 1 } 
	{ imgRgb_full_n sc_in sc_logic 1 signal 1 } 
	{ imgRgb_write sc_out sc_logic 1 signal 1 } 
	{ height sc_in sc_lv 16 signal 2 } 
	{ width sc_in sc_lv 16 signal 3 } 
	{ bayerPhase_read sc_in sc_lv 16 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ imgBayer_num_data_valid sc_in sc_lv 3 signal -1 } 
	{ imgBayer_fifo_cap sc_in sc_lv 3 signal -1 } 
	{ height_ap_vld sc_in sc_logic 1 invld 2 } 
	{ width_ap_vld sc_in sc_logic 1 invld 3 } 
	{ bayerPhase_read_ap_vld sc_in sc_logic 1 invld 4 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "imgBayer_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "imgBayer", "role": "dout" }} , 
 	{ "name": "imgBayer_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgBayer", "role": "empty_n" }} , 
 	{ "name": "imgBayer_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgBayer", "role": "read" }} , 
 	{ "name": "imgRgb_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgRgb", "role": "din" }} , 
 	{ "name": "imgRgb_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRgb", "role": "full_n" }} , 
 	{ "name": "imgRgb_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRgb", "role": "write" }} , 
 	{ "name": "height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "height", "role": "default" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "bayerPhase_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bayerPhase_read", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "imgBayer_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgBayer_num_data_valid", "role": "default" }} , 
 	{ "name": "imgBayer_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgBayer_fifo_cap", "role": "default" }} , 
 	{ "name": "height_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "height", "role": "ap_vld" }} , 
 	{ "name": "width_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "width", "role": "ap_vld" }} , 
 	{ "name": "bayerPhase_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "bayerPhase_read", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "20", "25", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "Debayer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65603", "EstimateLatencyMax" : "4296736795",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "DebayerG_U0"}],
		"OutputProcess" : [
			{"ID" : "25", "Name" : "DebayerRandBatG_U0"}],
		"Port" : [
			{"Name" : "imgBayer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "DebayerG_U0", "Port" : "imgBayer"}]},
			{"Name" : "imgRgb", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "DebayerRandBatG_U0", "Port" : "imgRgb"}]},
			{"Name" : "height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "bayerPhase_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "DIV1_TABLE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "DebayerG_U0", "Port" : "DIV1_TABLE"}]},
			{"Name" : "DIV2_TABLE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "DebayerG_U0", "Port" : "DIV2_TABLE"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6"],
		"CDFG" : "DebayerG",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "4296736795",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "imgBayer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202", "Port" : "imgBayer", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "imgG", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202", "Port" : "imgG", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "bayerPhase_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "bayerPhase_c9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bayerPhase_c9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DIV1_TABLE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202", "Port" : "DIV1_TABLE", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "DIV2_TABLE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202", "Port" : "DIV2_TABLE", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_315_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.linebuf_yuv_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.linebuf_yuv_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.linebuf_yuv_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.linebuf_yuv_3_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202", "Parent" : "1", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "DebayerG_Pipeline_VITIS_LOOP_318_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "65559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_lcssa51655175", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa51645173", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa51635171", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa51625169", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa51615167", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49885030", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49875028", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49855026", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49845024", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49835022", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49815020", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49805018", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49795016", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49775014", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49765012", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49755010", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49735008", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49725006", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49715004", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lcssa49695002", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "imgG", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgG_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp689", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "linebuf_yuv_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_yuv_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_yuv_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_yuv", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp170", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp84", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgBayer", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgBayer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "DIV1_TABLE", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "DIV2_TABLE", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_318_4", "PipelineType" : "NotSupport"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202.DIV1_TABLE_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202.DIV2_TABLE_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202.mul_18s_9ns_18_2_1_U55", "Parent" : "6"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202.mul_18s_8ns_18_2_1_U56", "Parent" : "6"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202.mul_18s_8ns_18_2_1_U57", "Parent" : "6"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202.mul_18s_9ns_18_2_1_U58", "Parent" : "6"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202.mul_14s_10ns_24_2_1_U59", "Parent" : "6"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202.mul_14s_10ns_24_2_1_U60", "Parent" : "6"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202.mac_muladd_14s_10ns_24s_25_4_1_U61", "Parent" : "6"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202.mac_muladd_14s_10ns_24s_25_4_1_U62", "Parent" : "6"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202.frp_pipeline_valid_U", "Parent" : "6"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerG_U0.grp_DebayerG_Pipeline_VITIS_LOOP_318_4_fu_202.pf_imgG_U", "Parent" : "6"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DebayerRatBorBatR_U0", "Parent" : "0", "Child" : ["21", "22", "23"],
		"CDFG" : "DebayerRatBorBatR",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "166015",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_DebayerRatBorBatR_U0_U",
		"Port" : [
			{"Name" : "imgG", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_166", "Port" : "imgG", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "imgRB", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_166", "Port" : "imgRB", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "bayerPhase_c9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bayerPhase_c9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bayerPhase_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bayerPhase_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_630_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DebayerRatBorBatR_U0.lineBuffer_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DebayerRatBorBatR_U0.lineBuffer_1_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DebayerRatBorBatR_U0.grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_166", "Parent" : "20", "Child" : ["24"],
		"CDFG" : "DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "411",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_0_2_0_0_09251529_lcssa1566_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_09241527_lcssa1564_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_09231525_lcssa1562_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0963_115121524_lcssa1560_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0964_115101522_lcssa1558_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0965_115081520_lcssa1556_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_2_0_0_09311517_lcssa1554_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_09301515_lcssa1552_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_09291513_lcssa1550_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0963_21452_lcssa1484_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0964_21449_lcssa1482_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0965_21446_lcssa1480_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_09631422_lcssa1472_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_09641419_lcssa1470_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_09651416_lcssa1468_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp558_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "lineBuffer_1_i", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lineBuffer_i", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "empty", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp59_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgG", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgG_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "red_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgRB", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgRB_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_0_2_0_0_09251530_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_09241528_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_09231526_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0963_115121523_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0964_115101521_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0965_115081519_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_2_0_0_09311518_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_09301516_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_09291514_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0963_21451_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0964_21448_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0965_21445_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_09631421_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_09641418_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_09651415_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_633_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerRatBorBatR_U0.grp_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_fu_166.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DebayerRandBatG_U0", "Parent" : "0", "Child" : ["26", "27", "28"],
		"CDFG" : "DebayerRandBatG",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "164411",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "20",
		"StartFifo" : "start_for_DebayerRandBatG_U0_U",
		"Port" : [
			{"Name" : "imgRB", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_142", "Port" : "imgRB", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "imgRgb", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_142", "Port" : "imgRgb", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "bayerPhase_c", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bayerPhase_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_878_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DebayerRandBatG_U0.lineBuffer_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DebayerRandBatG_U0.lineBuffer_2_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DebayerRandBatG_U0.grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_142", "Parent" : "25", "Child" : ["29"],
		"CDFG" : "DebayerRandBatG_Pipeline_VITIS_LOOP_881_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "407",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_0_0_01194_217901820_lcssa1856_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01195_217881818_lcssa1854_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01196_217861816_lcssa1852_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_2_0_0_011621813_lcssa1850_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_011611811_lcssa1848_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_011601809_lcssa1846_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0117217961808_lcssa1844_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0117317941806_lcssa1842_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0117417921804_lcssa1840_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_2_0_0_011681721_lcssa1762_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_011671718_lcssa1760_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_011661715_lcssa1758_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "empty_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp478_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "lineBuffer_1_i", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lineBuffer_i", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "empty", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp59_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgRB", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgRB_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgRgb", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgRgb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_0_0_01194_217901819_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_01195_217881817_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_01196_217861815_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "right_2_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "right_1_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "right_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0117217961807_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0117317941805_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0117417921803_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_2_0_0_011681723_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_011671720_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_011661717_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_881_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.DebayerRandBatG_U0.grp_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgG_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bayerPhase_c9_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgRB_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bayerPhase_c_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DebayerRatBorBatR_U0_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DebayerRandBatG_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Debayer {
		imgBayer {Type I LastRead 1 FirstWrite -1}
		imgRgb {Type O LastRead -1 FirstWrite 5}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		bayerPhase_read {Type I LastRead 0 FirstWrite -1}
		DIV1_TABLE {Type I LastRead -1 FirstWrite -1}
		DIV2_TABLE {Type I LastRead -1 FirstWrite -1}}
	DebayerG {
		imgBayer {Type I LastRead 1 FirstWrite -1}
		imgG {Type O LastRead -1 FirstWrite 21}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		bayerPhase_read {Type I LastRead 0 FirstWrite -1}
		bayerPhase_c9 {Type O LastRead -1 FirstWrite 0}
		DIV1_TABLE {Type I LastRead -1 FirstWrite -1}
		DIV2_TABLE {Type I LastRead -1 FirstWrite -1}}
	DebayerG_Pipeline_VITIS_LOOP_318_4 {
		p_lcssa51655175 {Type I LastRead 0 FirstWrite -1}
		p_lcssa51645173 {Type I LastRead 0 FirstWrite -1}
		p_lcssa51635171 {Type I LastRead 0 FirstWrite -1}
		p_lcssa51625169 {Type I LastRead 0 FirstWrite -1}
		p_lcssa51615167 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49885030 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49875028 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49855026 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49845024 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49835022 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49815020 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49805018 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49795016 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49775014 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49765012 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49755010 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49735008 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49725006 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49715004 {Type I LastRead 0 FirstWrite -1}
		p_lcssa49695002 {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		imgG {Type O LastRead -1 FirstWrite 21}
		empty {Type I LastRead 0 FirstWrite -1}
		xor_r {Type I LastRead 0 FirstWrite -1}
		cmp689 {Type I LastRead 0 FirstWrite -1}
		out_y {Type I LastRead 0 FirstWrite -1}
		linebuf_yuv_3 {Type IO LastRead 1 FirstWrite 3}
		linebuf_yuv_2 {Type IO LastRead 1 FirstWrite 3}
		linebuf_yuv_1 {Type IO LastRead 1 FirstWrite 3}
		linebuf_yuv {Type IO LastRead 1 FirstWrite 2}
		zext_ln275 {Type I LastRead 0 FirstWrite -1}
		cmp170 {Type I LastRead 0 FirstWrite -1}
		cmp84 {Type I LastRead 0 FirstWrite -1}
		imgBayer {Type I LastRead 1 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 20}
		p_out1 {Type O LastRead -1 FirstWrite 20}
		p_out2 {Type O LastRead -1 FirstWrite 20}
		p_out3 {Type O LastRead -1 FirstWrite 20}
		p_out4 {Type O LastRead -1 FirstWrite 20}
		p_out5 {Type O LastRead -1 FirstWrite 20}
		p_out6 {Type O LastRead -1 FirstWrite 20}
		p_out7 {Type O LastRead -1 FirstWrite 20}
		p_out8 {Type O LastRead -1 FirstWrite 20}
		p_out9 {Type O LastRead -1 FirstWrite 20}
		p_out10 {Type O LastRead -1 FirstWrite 20}
		p_out11 {Type O LastRead -1 FirstWrite 20}
		p_out12 {Type O LastRead -1 FirstWrite 20}
		p_out13 {Type O LastRead -1 FirstWrite 20}
		p_out14 {Type O LastRead -1 FirstWrite 20}
		p_out15 {Type O LastRead -1 FirstWrite 20}
		p_out16 {Type O LastRead -1 FirstWrite 20}
		p_out17 {Type O LastRead -1 FirstWrite 20}
		p_out18 {Type O LastRead -1 FirstWrite 20}
		p_out19 {Type O LastRead -1 FirstWrite 20}
		DIV1_TABLE {Type I LastRead -1 FirstWrite -1}
		DIV2_TABLE {Type I LastRead -1 FirstWrite -1}}
	DebayerRatBorBatR {
		imgG {Type I LastRead 1 FirstWrite -1}
		imgRB {Type O LastRead -1 FirstWrite 9}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		bayerPhase_c9 {Type I LastRead 0 FirstWrite -1}
		bayerPhase_c {Type O LastRead -1 FirstWrite 0}}
	DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2 {
		p_0_2_0_0_09251529_lcssa1566_i {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_09241527_lcssa1564_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_09231525_lcssa1562_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0963_115121524_lcssa1560_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0964_115101522_lcssa1558_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0965_115081520_lcssa1556_i {Type I LastRead 0 FirstWrite -1}
		p_0_2_0_0_09311517_lcssa1554_i {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_09301515_lcssa1552_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_09291513_lcssa1550_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0963_21452_lcssa1484_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0964_21449_lcssa1482_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0965_21446_lcssa1480_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_09631422_lcssa1472_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_09641419_lcssa1470_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_09651416_lcssa1468_i {Type I LastRead 0 FirstWrite -1}
		loopWidth_i {Type I LastRead 0 FirstWrite -1}
		cmp558_i {Type I LastRead 0 FirstWrite -1}
		empty_51 {Type I LastRead 0 FirstWrite -1}
		xor_i {Type I LastRead 0 FirstWrite -1}
		lineBuffer_1_i {Type IO LastRead 0 FirstWrite 2}
		lineBuffer_i {Type IO LastRead 0 FirstWrite 2}
		empty {Type I LastRead 0 FirstWrite -1}
		cmp59_i {Type I LastRead 0 FirstWrite -1}
		imgG {Type I LastRead 1 FirstWrite -1}
		red_i {Type I LastRead 0 FirstWrite -1}
		imgRB {Type O LastRead -1 FirstWrite 9}
		p_0_2_0_0_09251530_i_out {Type O LastRead -1 FirstWrite 8}
		p_0_1_0_0_09241528_i_out {Type O LastRead -1 FirstWrite 8}
		p_0_0_0_0_09231526_i_out {Type O LastRead -1 FirstWrite 8}
		p_0_0_0963_115121523_i_out {Type O LastRead -1 FirstWrite 8}
		p_0_0_0964_115101521_i_out {Type O LastRead -1 FirstWrite 8}
		p_0_0_0965_115081519_i_out {Type O LastRead -1 FirstWrite 8}
		p_0_2_0_0_09311518_i_out {Type O LastRead -1 FirstWrite 8}
		p_0_1_0_0_09301516_i_out {Type O LastRead -1 FirstWrite 8}
		p_0_0_0_0_09291514_i_out {Type O LastRead -1 FirstWrite 8}
		p_0_0_0963_21451_i_out {Type O LastRead -1 FirstWrite 8}
		p_0_0_0964_21448_i_out {Type O LastRead -1 FirstWrite 8}
		p_0_0_0965_21445_i_out {Type O LastRead -1 FirstWrite 8}
		p_0_0_09631421_i_out {Type O LastRead -1 FirstWrite 8}
		p_0_0_09641418_i_out {Type O LastRead -1 FirstWrite 8}
		p_0_0_09651415_i_out {Type O LastRead -1 FirstWrite 8}}
	DebayerRandBatG {
		imgRB {Type I LastRead 1 FirstWrite -1}
		imgRgb {Type O LastRead -1 FirstWrite 5}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		bayerPhase_c {Type I LastRead 0 FirstWrite -1}}
	DebayerRandBatG_Pipeline_VITIS_LOOP_881_2 {
		p_0_0_01194_217901820_lcssa1856_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_01195_217881818_lcssa1854_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_01196_217861816_lcssa1852_i {Type I LastRead 0 FirstWrite -1}
		p_0_2_0_0_011621813_lcssa1850_i {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_011611811_lcssa1848_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_011601809_lcssa1846_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0117217961808_lcssa1844_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0117317941806_lcssa1842_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0117417921804_lcssa1840_i {Type I LastRead 0 FirstWrite -1}
		p_0_2_0_0_011681721_lcssa1762_i {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_011671718_lcssa1760_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_011661715_lcssa1758_i {Type I LastRead 0 FirstWrite -1}
		loopWidth_i {Type I LastRead 0 FirstWrite -1}
		empty_52 {Type I LastRead 0 FirstWrite -1}
		xor_i {Type I LastRead 0 FirstWrite -1}
		cmp478_i {Type I LastRead 0 FirstWrite -1}
		lineBuffer_1_i {Type IO LastRead 0 FirstWrite 2}
		lineBuffer_i {Type IO LastRead 0 FirstWrite 2}
		empty {Type I LastRead 0 FirstWrite -1}
		cmp59_i {Type I LastRead 0 FirstWrite -1}
		imgRB {Type I LastRead 1 FirstWrite -1}
		imgRgb {Type O LastRead -1 FirstWrite 5}
		p_0_0_01194_217901819_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_01195_217881817_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_01196_217861815_i_out {Type O LastRead -1 FirstWrite 4}
		right_2_i_out {Type O LastRead -1 FirstWrite 4}
		right_1_i_out {Type O LastRead -1 FirstWrite 4}
		right_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0117217961807_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0117317941805_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0117417921803_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_2_0_0_011681723_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_1_0_0_011671720_i_out {Type O LastRead -1 FirstWrite 4}
		p_0_0_0_0_011661717_i_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65603", "Max" : "4296736795"}
	, {"Name" : "Interval", "Min" : "56", "Max" : "1769500"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgBayer { ap_fifo {  { imgBayer_dout fifo_data_in 0 10 }  { imgBayer_empty_n fifo_status 0 1 }  { imgBayer_read fifo_port_we 1 1 } } }
	imgRgb { ap_fifo {  { imgRgb_din fifo_data_in 1 30 }  { imgRgb_full_n fifo_status 0 1 }  { imgRgb_write fifo_port_we 1 1 } } }
	height { ap_stable {  { height in_data 0 16 }  { height_ap_vld in_vld 0 1 } } }
	width { ap_stable {  { width in_data 0 16 }  { width_ap_vld in_vld 0 1 } } }
	bayerPhase_read { ap_none {  { bayerPhase_read in_data 0 16 }  { bayerPhase_read_ap_vld in_vld 0 1 } } }
}
