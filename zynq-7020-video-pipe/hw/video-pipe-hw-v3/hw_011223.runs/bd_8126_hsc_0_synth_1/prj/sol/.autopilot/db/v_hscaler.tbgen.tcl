set moduleName v_hscaler
set isTopModule 1
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
set C_modelName {v_hscaler}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_video_V_data_V int 24 regular {axi_s 0 volatile  { s_axis_video Data } }  }
	{ s_axis_video_V_keep_V int 3 regular {axi_s 0 volatile  { s_axis_video Keep } }  }
	{ s_axis_video_V_strb_V int 3 regular {axi_s 0 volatile  { s_axis_video Strb } }  }
	{ s_axis_video_V_user_V int 1 regular {axi_s 0 volatile  { s_axis_video User } }  }
	{ s_axis_video_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_video Last } }  }
	{ s_axis_video_V_id_V int 1 regular {axi_s 0 volatile  { s_axis_video ID } }  }
	{ s_axis_video_V_dest_V int 1 regular {axi_s 0 volatile  { s_axis_video Dest } }  }
	{ Height int 16 regular {axi_slave 0}  }
	{ WidthIn int 16 regular {axi_slave 0}  }
	{ WidthOut int 16 regular {axi_slave 0}  }
	{ ColorMode int 8 regular {axi_slave 0}  }
	{ PixelRate int 32 unused {axi_slave 0}  }
	{ ColorModeOut int 8 regular {axi_slave 0}  }
	{ hfltCoeff int 16 regular {axi_slave 0}  }
	{ phasesH int 9 regular {axi_slave 0}  }
	{ m_axis_video_V_data_V int 24 regular {axi_s 1 volatile  { m_axis_video Data } }  }
	{ m_axis_video_V_keep_V int 3 regular {axi_s 1 volatile  { m_axis_video Keep } }  }
	{ m_axis_video_V_strb_V int 3 regular {axi_s 1 volatile  { m_axis_video Strb } }  }
	{ m_axis_video_V_user_V int 1 regular {axi_s 1 volatile  { m_axis_video User } }  }
	{ m_axis_video_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_video Last } }  }
	{ m_axis_video_V_id_V int 1 regular {axi_s 1 volatile  { m_axis_video ID } }  }
	{ m_axis_video_V_dest_V int 1 regular {axi_s 1 volatile  { m_axis_video Dest } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "Height", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "WidthIn", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "WidthOut", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "ColorMode", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "PixelRate", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "ColorModeOut", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "hfltCoeff", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":2048}, "offset_end" : {"in":3071}} , 
 	{ "Name" : "phasesH", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 9, "direction" : "READONLY", "offset" : {"in":16384}, "offset_end" : {"in":20479}} , 
 	{ "Name" : "m_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 15 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 15 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axis_video_TDATA sc_in sc_lv 24 signal 0 } 
	{ s_axis_video_TKEEP sc_in sc_lv 3 signal 1 } 
	{ s_axis_video_TSTRB sc_in sc_lv 3 signal 2 } 
	{ s_axis_video_TUSER sc_in sc_lv 1 signal 3 } 
	{ s_axis_video_TLAST sc_in sc_lv 1 signal 4 } 
	{ s_axis_video_TID sc_in sc_lv 1 signal 5 } 
	{ s_axis_video_TDEST sc_in sc_lv 1 signal 6 } 
	{ m_axis_video_TDATA sc_out sc_lv 24 signal 15 } 
	{ m_axis_video_TKEEP sc_out sc_lv 3 signal 16 } 
	{ m_axis_video_TSTRB sc_out sc_lv 3 signal 17 } 
	{ m_axis_video_TUSER sc_out sc_lv 1 signal 18 } 
	{ m_axis_video_TLAST sc_out sc_lv 1 signal 19 } 
	{ m_axis_video_TID sc_out sc_lv 1 signal 20 } 
	{ m_axis_video_TDEST sc_out sc_lv 1 signal 21 } 
	{ s_axis_video_TVALID sc_in sc_logic 1 invld 6 } 
	{ s_axis_video_TREADY sc_out sc_logic 1 inacc 6 } 
	{ m_axis_video_TVALID sc_out sc_logic 1 outvld 21 } 
	{ m_axis_video_TREADY sc_in sc_logic 1 outacc 21 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"v_hscaler","role":"start","value":"0","valid_bit":"0"},{"name":"v_hscaler","role":"continue","value":"0","valid_bit":"4"},{"name":"v_hscaler","role":"auto_start","value":"0","valid_bit":"7"},{"name":"Height","role":"data","value":"16"},{"name":"WidthIn","role":"data","value":"24"},{"name":"WidthOut","role":"data","value":"32"},{"name":"ColorMode","role":"data","value":"40"},{"name":"PixelRate","role":"data","value":"48"},{"name":"ColorModeOut","role":"data","value":"56"},{"name":"hfltCoeff","role":"data","value":"2048"},{"name":"phasesH","role":"data","value":"16384"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"v_hscaler","role":"start","value":"0","valid_bit":"0"},{"name":"v_hscaler","role":"done","value":"0","valid_bit":"1"},{"name":"v_hscaler","role":"idle","value":"0","valid_bit":"2"},{"name":"v_hscaler","role":"ready","value":"0","valid_bit":"3"},{"name":"v_hscaler","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_video_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "s_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "17", "20", "69", "80", "84", "90", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128"],
		"CDFG" : "v_hscaler",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1003", "EstimateLatencyMax" : "1073971212",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "Block_entry1_proc_U0"},
			{"ID" : "3", "Name" : "AXIvideo2MultiPixStream_U0"},
			{"ID" : "20", "Name" : "hscale_core_polyphase_U0"}],
		"OutputProcess" : [
			{"ID" : "90", "Name" : "MultiPixStream2AXIvideo_U0"}],
		"Port" : [
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_data_V"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_keep_V"}]},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_strb_V"}]},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_user_V"}]},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_last_V"}]},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_id_V"}]},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_dest_V"}]},
			{"Name" : "Height", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "Height"},
					{"ID" : "20", "SubInstance" : "hscale_core_polyphase_U0", "Port" : "Height"}]},
			{"Name" : "WidthIn", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "WidthIn"},
					{"ID" : "20", "SubInstance" : "hscale_core_polyphase_U0", "Port" : "WidthIn"}]},
			{"Name" : "WidthOut", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "hscale_core_polyphase_U0", "Port" : "WidthOut"}]},
			{"Name" : "ColorMode", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "ColorMode"},
					{"ID" : "2", "SubInstance" : "Block_entry1_proc_U0", "Port" : "ColorMode"}]},
			{"Name" : "PixelRate", "Type" : "None", "Direction" : "I"},
			{"Name" : "ColorModeOut", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry1_proc_U0", "Port" : "ColorModeOut"}]},
			{"Name" : "hfltCoeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "hscale_core_polyphase_U0", "Port" : "hfltCoeff"}]},
			{"Name" : "phasesH", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "hscale_core_polyphase_U0", "Port" : "phasesH"}]},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_data_V"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_keep_V"}]},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_strb_V"}]},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_user_V"}]},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_last_V"}]},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_id_V"}]},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_dest_V"}]},
			{"Name" : "mapComp", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "mapComp"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_entry1_proc_U0", "Parent" : "0",
		"CDFG" : "Block_entry1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ColorMode", "Type" : "None", "Direction" : "I"},
			{"Name" : "ColorModeOut", "Type" : "None", "Direction" : "I"},
			{"Name" : "ColorMode_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["69"], "DependentChan" : "106", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ColorMode_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ColorModeOut_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["90"], "DependentChan" : "107", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ColorModeOut_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0", "Parent" : "0", "Child" : ["4", "6", "8", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "AXIvideo2MultiPixStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "422", "EstimateLatencyMax" : "2084406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "112", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "stream_in", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "Height", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "ColorMode", "Type" : "None", "Direction" : "I"},
			{"Name" : "Height_c20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_c20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthIn_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthIn_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Parent" : "3", "Child" : ["5"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "axi_data_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_last_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_wait_for_start", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Parent" : "3", "Child" : ["7"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_width",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "1922",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sof_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_last_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_data_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "ColorMode_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "eol_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_data_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_width", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Parent" : "3", "Child" : ["9"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "axi_data_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "eol_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "axi_data_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_wait_for_eol", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_data_V_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_keep_V_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_strb_V_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_user_V_U", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_last_V_U", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_id_V_U", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_dest_V_U", "Parent" : "3"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_1_U0", "Parent" : "0", "Child" : ["18"],
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
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "112", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1681_2_fu_162", "Port" : "stream_in", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthIn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthIn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "stream_upsampled", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "115", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1681_2_fu_162", "Port" : "stream_upsampled", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1679_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_1_U0.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1681_2_fu_162", "Parent" : "17", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_1_U0.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1681_2_fu_162.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0", "Parent" : "0", "Child" : ["21", "22", "23", "24", "25", "26", "27", "29"],
		"CDFG" : "hscale_core_polyphase",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "999", "EstimateLatencyMax" : "2097751",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_upsampled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "115", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_hscale_core_polyphase_Pipeline_loop_width_fu_264", "Port" : "stream_upsampled", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Height", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthOut", "Type" : "None", "Direction" : "I"},
			{"Name" : "hfltCoeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap_fu_246", "Port" : "hfltCoeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "phasesH", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_hscale_core_polyphase_Pipeline_loop_width_fu_264", "Port" : "phasesH", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "stream_scaled", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["69"], "DependentChan" : "116", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_hscale_core_polyphase_Pipeline_loop_width_fu_264", "Port" : "stream_scaled", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Height_c19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["69"], "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_c19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthOut_c23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["69"], "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthOut_c23_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.FiltCoeff_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.FiltCoeff_1_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.FiltCoeff_2_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.FiltCoeff_3_U", "Parent" : "20"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.FiltCoeff_4_U", "Parent" : "20"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.FiltCoeff_5_U", "Parent" : "20"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap_fu_246", "Parent" : "20", "Child" : ["28"],
		"CDFG" : "hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "389", "EstimateLatencyMax" : "389",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "FiltCoeff", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FiltCoeff_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FiltCoeff_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FiltCoeff_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FiltCoeff_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FiltCoeff_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "hfltCoeff", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_init_coeff_phase_loop_init_coeff_tap", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap_fu_246.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264", "Parent" : "20", "Child" : ["30", "67", "68"],
		"CDFG" : "hscale_core_polyphase_Pipeline_loop_width",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36", "EstimateLatencyMax" : "1940",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "phasesH", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_hscale_polyphase_fu_228", "Port" : "FiltCoeff_0", "Inst_start_state" : "5", "Inst_end_state" : "15"}]},
			{"Name" : "FiltCoeff_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_hscale_polyphase_fu_228", "Port" : "FiltCoeff_1", "Inst_start_state" : "5", "Inst_end_state" : "15"}]},
			{"Name" : "FiltCoeff_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_hscale_polyphase_fu_228", "Port" : "FiltCoeff_2", "Inst_start_state" : "5", "Inst_end_state" : "15"}]},
			{"Name" : "FiltCoeff_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_hscale_polyphase_fu_228", "Port" : "FiltCoeff_3", "Inst_start_state" : "5", "Inst_end_state" : "15"}]},
			{"Name" : "FiltCoeff_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_hscale_polyphase_fu_228", "Port" : "FiltCoeff_4", "Inst_start_state" : "5", "Inst_end_state" : "15"}]},
			{"Name" : "FiltCoeff_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_hscale_polyphase_fu_228", "Port" : "FiltCoeff_5", "Inst_start_state" : "5", "Inst_end_state" : "15"}]},
			{"Name" : "LoopSize", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "zext_ln682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "stream_upsampled", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_upsampled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_scaled", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_scaled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "PixArray_47_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_46_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_45_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_44_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_43_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_42_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_41_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_40_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_39_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_38_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_37_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_36_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_35_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_33_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_32_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_31_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_30_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_29_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_28_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_27_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_26_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_25_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "PixArray_24_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "loop_width", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter14", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter14", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228", "Parent" : "29", "Child" : ["31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66"],
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
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U99", "Parent" : "30"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U100", "Parent" : "30"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U101", "Parent" : "30"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U102", "Parent" : "30"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U103", "Parent" : "30"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U104", "Parent" : "30"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U105", "Parent" : "30"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U106", "Parent" : "30"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U107", "Parent" : "30"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U108", "Parent" : "30"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U109", "Parent" : "30"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U110", "Parent" : "30"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U111", "Parent" : "30"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U112", "Parent" : "30"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U113", "Parent" : "30"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U114", "Parent" : "30"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U115", "Parent" : "30"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U116", "Parent" : "30"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_12ns_24_4_1_U117", "Parent" : "30"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_12ns_24_4_1_U118", "Parent" : "30"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_12ns_24_4_1_U119", "Parent" : "30"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_24s_25_4_1_U120", "Parent" : "30"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_24s_25_4_1_U121", "Parent" : "30"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_24s_25_4_1_U122", "Parent" : "30"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_25s_26_4_1_U123", "Parent" : "30"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_25s_26_4_1_U124", "Parent" : "30"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_25s_26_4_1_U125", "Parent" : "30"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_26s_26_4_1_U126", "Parent" : "30"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_26s_26_4_1_U127", "Parent" : "30"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_26s_26_4_1_U128", "Parent" : "30"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_26s_27_4_1_U129", "Parent" : "30"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_26s_27_4_1_U130", "Parent" : "30"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_26s_27_4_1_U131", "Parent" : "30"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_27s_27_4_1_U132", "Parent" : "30"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_27s_27_4_1_U133", "Parent" : "30"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_27s_27_4_1_U134", "Parent" : "30"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.grp_reg_ap_uint_9_s_fu_336", "Parent" : "29",
		"CDFG" : "reg_ap_uint_9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0", "Parent" : "0", "Child" : ["70"],
		"CDFG" : "v_csc_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2086561",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_scaled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "116", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_v_csc_core_Pipeline_VITIS_LOOP_2080_2_fu_114", "Port" : "stream_scaled", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "Height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ColorMode", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "106", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ColorMode_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPassThru_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "109", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "stream_scaled_csc", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["80"], "DependentChan" : "119", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_v_csc_core_Pipeline_VITIS_LOOP_2080_2_fu_114", "Port" : "stream_scaled_csc", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "Height_c18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["80"], "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_c18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthOut_c22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["80"], "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthOut_c22_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2078_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_2080_2_fu_114", "Parent" : "69", "Child" : ["71", "72", "73", "74", "75", "76", "77", "78", "79"],
		"CDFG" : "v_csc_core_Pipeline_VITIS_LOOP_2080_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "1930",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "stream_scaled_csc", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_scaled_csc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_scaled", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_scaled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmp74", "Type" : "None", "Direction" : "I"},
			{"Name" : "bPassThru_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2080_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_2080_2_fu_114.mul_8ns_10ns_17_1_1_U222", "Parent" : "70"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_2080_2_fu_114.mul_8s_12ns_20_2_1_U223", "Parent" : "70"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_2080_2_fu_114.mul_8s_11ns_18_2_1_U224", "Parent" : "70"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_2080_2_fu_114.mul_8s_13ns_21_2_1_U225", "Parent" : "70"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_2080_2_fu_114.mul_9s_11ns_20_2_1_U226", "Parent" : "70"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_2080_2_fu_114.mac_muladd_8ns_7ns_17ns_17_4_1_U227", "Parent" : "70"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_2080_2_fu_114.mac_muladd_8ns_10ns_17ns_18_4_1_U228", "Parent" : "70"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_2080_2_fu_114.mac_muladd_8s_9ns_18s_18_4_1_U229", "Parent" : "70"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_2080_2_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_U0", "Parent" : "0", "Child" : ["81"],
		"CDFG" : "v_hcresampler_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "1073971194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_scaled_csc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "119", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1681_2_fu_198", "Port" : "stream_scaled_csc", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "110", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "stream_out_422", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["84"], "DependentChan" : "122", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1681_2_fu_198", "Port" : "stream_out_422", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Height_c17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["84"], "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_c17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthOut_c21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["84"], "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthOut_c21_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1679_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_U0.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1681_2_fu_198", "Parent" : "80", "Child" : ["82", "83"],
		"CDFG" : "v_hcresampler_core_Pipeline_VITIS_LOOP_1681_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "32772",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pixbuf_y_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_2_0_0_0688710_lcssa757", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_0684706_lcssa754", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_2_0_0_0688_lcssa734", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_0684_lcssa731", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_0495682_lcssa728", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_out_422", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_422_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast8", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln1677", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthOut_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "stream_scaled_csc", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_scaled_csc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pixbuf_y_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_15_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_0688712_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_0684708_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_0_2705_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0487_2702_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0_1697_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0487_1694_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inpix_0_2_0_0_0_load681_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inpix_0_1_0_0_0_load679_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inpix_0_0_0_0_0_load677_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "filt_res1_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1681_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_U0.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1681_2_fu_198.sparsemux_9_2_8_1_1_U251", "Parent" : "81"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_U0.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1681_2_fu_198.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_U0", "Parent" : "0", "Child" : ["85", "86", "87", "88"],
		"CDFG" : "v_vcresampler_core",
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
			{"Name" : "stream_out_422", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["80"], "DependentChan" : "122", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1898_2_fu_138", "Port" : "stream_out_422", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["80"], "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["80"], "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "111", "DependentChanDepth" : "6", "DependentChanType" : "1"},
			{"Name" : "stream_out_420", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["90"], "DependentChan" : "125", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1898_2_fu_138", "Port" : "stream_out_420", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["90"], "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthOut_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["90"], "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthOut_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1896_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_U0.linebuf_y_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_U0.linebuf_c_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_U0.linebuf_c_1_U", "Parent" : "84"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_U0.grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1898_2_fu_138", "Parent" : "84", "Child" : ["89"],
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
			{"Name" : "p_0_0344494_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pix_0_2_0_0_0_load492_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pix_0_1_0_0_0_load490_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pix_0_0_0_0_0_load488_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1898_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_U0.grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1898_2_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0", "Parent" : "0", "Child" : ["91", "94", "99", "100", "101", "102", "103", "104", "105"],
		"CDFG" : "MultiPixStream2AXIvideo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "363", "EstimateLatencyMax" : "2080091",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_MultiPixStream2AXIvideo_U0_U",
		"Port" : [
			{"Name" : "stream_out_420", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["84"], "DependentChan" : "125", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3_fu_154", "Port" : "stream_out_420", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3_fu_154", "Port" : "m_axis_video_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3_fu_154", "Port" : "m_axis_video_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3_fu_154", "Port" : "m_axis_video_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3_fu_154", "Port" : "m_axis_video_V_user_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3_fu_154", "Port" : "m_axis_video_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3_fu_154", "Port" : "m_axis_video_V_id_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3_fu_154", "Port" : "m_axis_video_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "Height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["84"], "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["84"], "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ColorModeOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "107", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ColorModeOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mapComp", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1581_1_fu_144", "Port" : "mapComp", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1587_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1581_1_fu_144", "Parent" : "90", "Child" : ["92", "93"],
		"CDFG" : "MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1581_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub_ln1583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_0_0_0_2135_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_1133_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0131_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mapComp", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1581_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1581_1_fu_144.mapComp_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1581_1_fu_144.flow_control_loop_pipe_sequential_init_U", "Parent" : "91"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3_fu_154", "Parent" : "90", "Child" : ["95", "96", "97", "98"],
		"CDFG" : "MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "1924",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sof", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_56", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "sub", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "stream_out_420", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_out_420_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"BlockSignal" : [
					{"Name" : "m_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1589_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3_fu_154.sparsemux_7_2_8_1_1_U320", "Parent" : "94"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3_fu_154.sparsemux_7_2_8_1_1_U321", "Parent" : "94"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3_fu_154.sparsemux_7_2_8_1_1_U322", "Parent" : "94"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "94"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_data_V_U", "Parent" : "90"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_keep_V_U", "Parent" : "90"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_strb_V_U", "Parent" : "90"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_user_V_U", "Parent" : "90"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_last_V_U", "Parent" : "90"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_id_V_U", "Parent" : "90"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_dest_V_U", "Parent" : "90"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ColorMode_c_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ColorModeOut_c_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPassThruHcr1_channel_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPassThruCsc_channel_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPassThruHcr2_channel_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPassThruVcr_channel_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_in_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Height_c20_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WidthIn_c_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_upsampled_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_scaled_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Height_c19_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WidthOut_c23_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_scaled_csc_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Height_c18_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WidthOut_c22_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_out_422_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Height_c17_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WidthOut_c21_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_out_420_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Height_c_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WidthOut_c_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MultiPixStream2AXIvideo_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	v_hscaler {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		Height {Type I LastRead 1 FirstWrite -1}
		WidthIn {Type I LastRead 1 FirstWrite -1}
		WidthOut {Type I LastRead 1 FirstWrite -1}
		ColorMode {Type I LastRead 3 FirstWrite -1}
		PixelRate {Type I LastRead -1 FirstWrite -1}
		ColorModeOut {Type I LastRead 0 FirstWrite -1}
		hfltCoeff {Type I LastRead 2 FirstWrite -1}
		phasesH {Type I LastRead 0 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 2}
		mapComp {Type I LastRead -1 FirstWrite -1}}
	Block_entry1_proc {
		ColorMode {Type I LastRead 0 FirstWrite -1}
		ColorModeOut {Type I LastRead 0 FirstWrite -1}
		ColorMode_c {Type O LastRead -1 FirstWrite 0}
		ColorModeOut_c {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in {Type O LastRead -1 FirstWrite 1}
		Height {Type I LastRead 0 FirstWrite -1}
		WidthIn {Type I LastRead 0 FirstWrite -1}
		ColorMode {Type I LastRead 3 FirstWrite -1}
		Height_c20 {Type O LastRead -1 FirstWrite 0}
		WidthIn_c {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_data_out {Type O LastRead -1 FirstWrite 0}
		axi_last_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_Pipeline_loop_width {
		sof_4 {Type I LastRead 0 FirstWrite -1}
		axi_last_2 {Type I LastRead 0 FirstWrite -1}
		axi_data_2 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		ColorMode_load {Type I LastRead 0 FirstWrite -1}
		stream_in {Type O LastRead -1 FirstWrite 1}
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		eol_out {Type O LastRead -1 FirstWrite 0}
		axi_data_3_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol {
		axi_data_3_reload {Type I LastRead 0 FirstWrite -1}
		eol_reload {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_data_4_out {Type O LastRead -1 FirstWrite 0}}
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
		inpix_0_0_0_0_0_load677_out {Type IO LastRead 2 FirstWrite 1}}
	hscale_core_polyphase {
		stream_upsampled {Type I LastRead 3 FirstWrite -1}
		Height {Type I LastRead 1 FirstWrite -1}
		WidthIn {Type I LastRead 1 FirstWrite -1}
		WidthOut {Type I LastRead 1 FirstWrite -1}
		hfltCoeff {Type I LastRead 2 FirstWrite -1}
		phasesH {Type I LastRead 0 FirstWrite -1}
		stream_scaled {Type O LastRead -1 FirstWrite 14}
		Height_c19 {Type O LastRead -1 FirstWrite 1}
		WidthOut_c23 {Type O LastRead -1 FirstWrite 1}}
	hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap {
		FiltCoeff {Type O LastRead -1 FirstWrite 4}
		FiltCoeff_1 {Type O LastRead -1 FirstWrite 4}
		FiltCoeff_2 {Type O LastRead -1 FirstWrite 4}
		FiltCoeff_3 {Type O LastRead -1 FirstWrite 4}
		FiltCoeff_4 {Type O LastRead -1 FirstWrite 4}
		FiltCoeff_5 {Type O LastRead -1 FirstWrite 4}
		hfltCoeff {Type I LastRead 2 FirstWrite -1}}
	hscale_core_polyphase_Pipeline_loop_width {
		add_ln682 {Type I LastRead 0 FirstWrite -1}
		phasesH {Type I LastRead 0 FirstWrite -1}
		FiltCoeff {Type I LastRead 0 FirstWrite -1}
		FiltCoeff_1 {Type I LastRead 1 FirstWrite -1}
		FiltCoeff_2 {Type I LastRead 2 FirstWrite -1}
		FiltCoeff_3 {Type I LastRead 3 FirstWrite -1}
		FiltCoeff_4 {Type I LastRead 4 FirstWrite -1}
		FiltCoeff_5 {Type I LastRead 5 FirstWrite -1}
		LoopSize {Type I LastRead 0 FirstWrite -1}
		zext_ln682 {Type I LastRead 0 FirstWrite -1}
		stream_upsampled {Type I LastRead 3 FirstWrite -1}
		stream_scaled {Type O LastRead -1 FirstWrite 14}
		PixArray_47_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_46_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_45_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_44_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_43_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_42_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_41_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_40_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_39_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_38_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_37_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_36_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_35_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_34_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_33_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_32_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_31_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_30_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_29_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_28_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_27_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_26_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_25_out {Type IO LastRead 4 FirstWrite 3}
		PixArray_24_out {Type IO LastRead 4 FirstWrite 3}}
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
		ArrayIdx_val {Type I LastRead 0 FirstWrite -1}}
	reg_ap_uint_9_s {
		d_val {Type I LastRead 0 FirstWrite -1}}
	v_csc_core {
		stream_scaled {Type I LastRead 1 FirstWrite -1}
		Height {Type I LastRead 0 FirstWrite -1}
		WidthOut {Type I LastRead 0 FirstWrite -1}
		ColorMode {Type I LastRead 0 FirstWrite -1}
		bPassThru_read {Type I LastRead 0 FirstWrite -1}
		stream_scaled_csc {Type O LastRead -1 FirstWrite 1}
		Height_c18 {Type O LastRead -1 FirstWrite 0}
		WidthOut_c22 {Type O LastRead -1 FirstWrite 0}}
	v_csc_core_Pipeline_VITIS_LOOP_2080_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		stream_scaled_csc {Type O LastRead -1 FirstWrite 1}
		stream_scaled {Type I LastRead 1 FirstWrite -1}
		cmp74 {Type I LastRead 0 FirstWrite -1}
		bPassThru_read {Type I LastRead 0 FirstWrite -1}}
	v_hcresampler_core {
		stream_scaled_csc {Type I LastRead 1 FirstWrite -1}
		Height {Type I LastRead 0 FirstWrite -1}
		WidthOut {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		stream_out_422 {Type O LastRead -1 FirstWrite 2}
		Height_c17 {Type O LastRead -1 FirstWrite 0}
		WidthOut_c21 {Type O LastRead -1 FirstWrite 0}}
	v_hcresampler_core_Pipeline_VITIS_LOOP_1681_2 {
		pixbuf_y_14 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_13 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_12 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_11 {Type I LastRead 0 FirstWrite -1}
		p_0_2_0_0_0688710_lcssa757 {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_0684706_lcssa754 {Type I LastRead 0 FirstWrite -1}
		p_0_2_0_0_0688_lcssa734 {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_0684_lcssa731 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_0495682_lcssa728 {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		stream_out_422 {Type O LastRead -1 FirstWrite 2}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_cast8 {Type I LastRead 0 FirstWrite -1}
		select_ln1677 {Type I LastRead 0 FirstWrite -1}
		WidthOut_load {Type I LastRead 0 FirstWrite -1}
		stream_scaled_csc {Type I LastRead 1 FirstWrite -1}
		pixbuf_y_19_out {Type O LastRead -1 FirstWrite 3}
		pixbuf_y_18_out {Type O LastRead -1 FirstWrite 3}
		pixbuf_y_17_out {Type O LastRead -1 FirstWrite 3}
		pixbuf_y_16_out {Type O LastRead -1 FirstWrite 3}
		pixbuf_y_15_out {Type IO LastRead 3 FirstWrite 3}
		p_0_2_0_0_0688712_out {Type O LastRead -1 FirstWrite 3}
		p_0_1_0_0_0684708_out {Type O LastRead -1 FirstWrite 3}
		p_0_0_0_0_0_2705_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0487_2702_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0_1697_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0487_1694_out {Type IO LastRead 2 FirstWrite 2}
		inpix_0_2_0_0_0_load681_out {Type IO LastRead 2 FirstWrite 1}
		inpix_0_1_0_0_0_load679_out {Type IO LastRead 2 FirstWrite 1}
		inpix_0_0_0_0_0_load677_out {Type IO LastRead 2 FirstWrite 1}
		filt_res1_1_out {Type IO LastRead 4 FirstWrite 4}}
	v_vcresampler_core {
		stream_out_422 {Type I LastRead 1 FirstWrite -1}
		Height {Type I LastRead 1 FirstWrite -1}
		WidthOut {Type I LastRead 1 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		stream_out_420 {Type O LastRead -1 FirstWrite 2}
		Height_c {Type O LastRead -1 FirstWrite 1}
		WidthOut_c {Type O LastRead -1 FirstWrite 1}}
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
		p_0_0344494_out {Type IO LastRead 2 FirstWrite 1}
		pix_0_2_0_0_0_load492_out {Type IO LastRead 2 FirstWrite 1}
		pix_0_1_0_0_0_load490_out {Type IO LastRead 2 FirstWrite 1}
		pix_0_0_0_0_0_load488_out {Type IO LastRead 2 FirstWrite 1}}
	MultiPixStream2AXIvideo {
		stream_out_420 {Type I LastRead 1 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 2}
		Height {Type I LastRead 0 FirstWrite -1}
		WidthOut {Type I LastRead 0 FirstWrite -1}
		ColorModeOut {Type I LastRead 0 FirstWrite -1}
		mapComp {Type I LastRead -1 FirstWrite -1}}
	MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1581_1 {
		sub_ln1583 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_2135_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0_1133_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0131_out {Type O LastRead -1 FirstWrite 1}
		mapComp {Type I LastRead -1 FirstWrite -1}}
	MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3 {
		sof {Type I LastRead 0 FirstWrite -1}
		empty_56 {Type I LastRead 0 FirstWrite -1}
		sub {Type I LastRead 0 FirstWrite -1}
		stream_out_420 {Type I LastRead 1 FirstWrite -1}
		empty_57 {Type I LastRead 0 FirstWrite -1}
		empty_58 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1003", "Max" : "1073971212"}
	, {"Name" : "Interval", "Min" : "1000", "Max" : "1073971195"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_video_V_data_V { axis {  { s_axis_video_TDATA in_data 0 24 } } }
	s_axis_video_V_keep_V { axis {  { s_axis_video_TKEEP in_data 0 3 } } }
	s_axis_video_V_strb_V { axis {  { s_axis_video_TSTRB in_data 0 3 } } }
	s_axis_video_V_user_V { axis {  { s_axis_video_TUSER in_data 0 1 } } }
	s_axis_video_V_last_V { axis {  { s_axis_video_TLAST in_data 0 1 } } }
	s_axis_video_V_id_V { axis {  { s_axis_video_TID in_data 0 1 } } }
	s_axis_video_V_dest_V { axis {  { s_axis_video_TDEST in_data 0 1 }  { s_axis_video_TVALID in_vld 0 1 }  { s_axis_video_TREADY in_acc 1 1 } } }
	m_axis_video_V_data_V { axis {  { m_axis_video_TDATA out_data 1 24 } } }
	m_axis_video_V_keep_V { axis {  { m_axis_video_TKEEP out_data 1 3 } } }
	m_axis_video_V_strb_V { axis {  { m_axis_video_TSTRB out_data 1 3 } } }
	m_axis_video_V_user_V { axis {  { m_axis_video_TUSER out_data 1 1 } } }
	m_axis_video_V_last_V { axis {  { m_axis_video_TLAST out_data 1 1 } } }
	m_axis_video_V_id_V { axis {  { m_axis_video_TID out_data 1 1 } } }
	m_axis_video_V_dest_V { axis {  { m_axis_video_TDEST out_data 1 1 }  { m_axis_video_TVALID out_vld 1 1 }  { m_axis_video_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
