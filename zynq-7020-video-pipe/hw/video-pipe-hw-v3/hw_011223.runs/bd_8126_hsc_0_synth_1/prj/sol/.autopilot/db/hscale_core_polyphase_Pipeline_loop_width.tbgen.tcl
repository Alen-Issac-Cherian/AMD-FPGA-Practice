set moduleName hscale_core_polyphase_Pipeline_loop_width
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
set C_modelName {hscale_core_polyphase_Pipeline_loop_width}
set C_modelType { void 0 }
set C_modelArgList {
	{ add_ln682 int 11 regular {ap_stable 0} }
	{ phasesH int 9 regular {array 1920 { 1 } 1 1 }  }
	{ FiltCoeff int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_1 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_2 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_3 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_4 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_5 int 16 regular {array 64 { 1 } 1 1 }  }
	{ LoopSize int 11 regular {ap_stable 0} }
	{ zext_ln682 int 16 regular {ap_stable 0} }
	{ stream_upsampled int 24 regular {fifo 0 volatile }  }
	{ stream_scaled int 24 regular {fifo 1 volatile }  }
	{ PixArray_47_out int 8 regular {pointer 2}  }
	{ PixArray_46_out int 8 regular {pointer 2}  }
	{ PixArray_45_out int 8 regular {pointer 2}  }
	{ PixArray_44_out int 8 regular {pointer 2}  }
	{ PixArray_43_out int 8 regular {pointer 2}  }
	{ PixArray_42_out int 8 regular {pointer 2}  }
	{ PixArray_41_out int 8 regular {pointer 2}  }
	{ PixArray_40_out int 8 regular {pointer 2}  }
	{ PixArray_39_out int 8 regular {pointer 2}  }
	{ PixArray_38_out int 8 regular {pointer 2}  }
	{ PixArray_37_out int 8 regular {pointer 2}  }
	{ PixArray_36_out int 8 regular {pointer 2}  }
	{ PixArray_35_out int 8 regular {pointer 2}  }
	{ PixArray_34_out int 8 regular {pointer 2}  }
	{ PixArray_33_out int 8 regular {pointer 2}  }
	{ PixArray_32_out int 8 regular {pointer 2}  }
	{ PixArray_31_out int 8 regular {pointer 2}  }
	{ PixArray_30_out int 8 regular {pointer 2}  }
	{ PixArray_29_out int 8 regular {pointer 2}  }
	{ PixArray_28_out int 8 regular {pointer 2}  }
	{ PixArray_27_out int 8 regular {pointer 2}  }
	{ PixArray_26_out int 8 regular {pointer 2}  }
	{ PixArray_25_out int 8 regular {pointer 2}  }
	{ PixArray_24_out int 8 regular {pointer 2}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "add_ln682", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "phasesH", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "LoopSize", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln682", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "stream_upsampled", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "stream_scaled", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "PixArray_47_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_46_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_45_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_44_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_43_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_42_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_41_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_40_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_39_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_38_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_37_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_36_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_35_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_34_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_33_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_32_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_31_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_30_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_29_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_28_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_27_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_26_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_25_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "PixArray_24_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 112
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_upsampled_dout sc_in sc_lv 24 signal 10 } 
	{ stream_upsampled_num_data_valid sc_in sc_lv 5 signal 10 } 
	{ stream_upsampled_fifo_cap sc_in sc_lv 5 signal 10 } 
	{ stream_upsampled_empty_n sc_in sc_logic 1 signal 10 } 
	{ stream_upsampled_read sc_out sc_logic 1 signal 10 } 
	{ stream_scaled_din sc_out sc_lv 24 signal 11 } 
	{ stream_scaled_num_data_valid sc_in sc_lv 5 signal 11 } 
	{ stream_scaled_fifo_cap sc_in sc_lv 5 signal 11 } 
	{ stream_scaled_full_n sc_in sc_logic 1 signal 11 } 
	{ stream_scaled_write sc_out sc_logic 1 signal 11 } 
	{ add_ln682 sc_in sc_lv 11 signal 0 } 
	{ phasesH_address0 sc_out sc_lv 11 signal 1 } 
	{ phasesH_ce0 sc_out sc_logic 1 signal 1 } 
	{ phasesH_q0 sc_in sc_lv 9 signal 1 } 
	{ FiltCoeff_address0 sc_out sc_lv 6 signal 2 } 
	{ FiltCoeff_ce0 sc_out sc_logic 1 signal 2 } 
	{ FiltCoeff_q0 sc_in sc_lv 16 signal 2 } 
	{ FiltCoeff_1_address0 sc_out sc_lv 6 signal 3 } 
	{ FiltCoeff_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ FiltCoeff_1_q0 sc_in sc_lv 16 signal 3 } 
	{ FiltCoeff_2_address0 sc_out sc_lv 6 signal 4 } 
	{ FiltCoeff_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ FiltCoeff_2_q0 sc_in sc_lv 16 signal 4 } 
	{ FiltCoeff_3_address0 sc_out sc_lv 6 signal 5 } 
	{ FiltCoeff_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ FiltCoeff_3_q0 sc_in sc_lv 16 signal 5 } 
	{ FiltCoeff_4_address0 sc_out sc_lv 6 signal 6 } 
	{ FiltCoeff_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ FiltCoeff_4_q0 sc_in sc_lv 16 signal 6 } 
	{ FiltCoeff_5_address0 sc_out sc_lv 6 signal 7 } 
	{ FiltCoeff_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ FiltCoeff_5_q0 sc_in sc_lv 16 signal 7 } 
	{ LoopSize sc_in sc_lv 11 signal 8 } 
	{ zext_ln682 sc_in sc_lv 16 signal 9 } 
	{ PixArray_47_out_i sc_in sc_lv 8 signal 12 } 
	{ PixArray_47_out_o sc_out sc_lv 8 signal 12 } 
	{ PixArray_47_out_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ PixArray_46_out_i sc_in sc_lv 8 signal 13 } 
	{ PixArray_46_out_o sc_out sc_lv 8 signal 13 } 
	{ PixArray_46_out_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ PixArray_45_out_i sc_in sc_lv 8 signal 14 } 
	{ PixArray_45_out_o sc_out sc_lv 8 signal 14 } 
	{ PixArray_45_out_o_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ PixArray_44_out_i sc_in sc_lv 8 signal 15 } 
	{ PixArray_44_out_o sc_out sc_lv 8 signal 15 } 
	{ PixArray_44_out_o_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ PixArray_43_out_i sc_in sc_lv 8 signal 16 } 
	{ PixArray_43_out_o sc_out sc_lv 8 signal 16 } 
	{ PixArray_43_out_o_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ PixArray_42_out_i sc_in sc_lv 8 signal 17 } 
	{ PixArray_42_out_o sc_out sc_lv 8 signal 17 } 
	{ PixArray_42_out_o_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ PixArray_41_out_i sc_in sc_lv 8 signal 18 } 
	{ PixArray_41_out_o sc_out sc_lv 8 signal 18 } 
	{ PixArray_41_out_o_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ PixArray_40_out_i sc_in sc_lv 8 signal 19 } 
	{ PixArray_40_out_o sc_out sc_lv 8 signal 19 } 
	{ PixArray_40_out_o_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ PixArray_39_out_i sc_in sc_lv 8 signal 20 } 
	{ PixArray_39_out_o sc_out sc_lv 8 signal 20 } 
	{ PixArray_39_out_o_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ PixArray_38_out_i sc_in sc_lv 8 signal 21 } 
	{ PixArray_38_out_o sc_out sc_lv 8 signal 21 } 
	{ PixArray_38_out_o_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ PixArray_37_out_i sc_in sc_lv 8 signal 22 } 
	{ PixArray_37_out_o sc_out sc_lv 8 signal 22 } 
	{ PixArray_37_out_o_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ PixArray_36_out_i sc_in sc_lv 8 signal 23 } 
	{ PixArray_36_out_o sc_out sc_lv 8 signal 23 } 
	{ PixArray_36_out_o_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ PixArray_35_out_i sc_in sc_lv 8 signal 24 } 
	{ PixArray_35_out_o sc_out sc_lv 8 signal 24 } 
	{ PixArray_35_out_o_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ PixArray_34_out_i sc_in sc_lv 8 signal 25 } 
	{ PixArray_34_out_o sc_out sc_lv 8 signal 25 } 
	{ PixArray_34_out_o_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ PixArray_33_out_i sc_in sc_lv 8 signal 26 } 
	{ PixArray_33_out_o sc_out sc_lv 8 signal 26 } 
	{ PixArray_33_out_o_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ PixArray_32_out_i sc_in sc_lv 8 signal 27 } 
	{ PixArray_32_out_o sc_out sc_lv 8 signal 27 } 
	{ PixArray_32_out_o_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ PixArray_31_out_i sc_in sc_lv 8 signal 28 } 
	{ PixArray_31_out_o sc_out sc_lv 8 signal 28 } 
	{ PixArray_31_out_o_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ PixArray_30_out_i sc_in sc_lv 8 signal 29 } 
	{ PixArray_30_out_o sc_out sc_lv 8 signal 29 } 
	{ PixArray_30_out_o_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ PixArray_29_out_i sc_in sc_lv 8 signal 30 } 
	{ PixArray_29_out_o sc_out sc_lv 8 signal 30 } 
	{ PixArray_29_out_o_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ PixArray_28_out_i sc_in sc_lv 8 signal 31 } 
	{ PixArray_28_out_o sc_out sc_lv 8 signal 31 } 
	{ PixArray_28_out_o_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ PixArray_27_out_i sc_in sc_lv 8 signal 32 } 
	{ PixArray_27_out_o sc_out sc_lv 8 signal 32 } 
	{ PixArray_27_out_o_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ PixArray_26_out_i sc_in sc_lv 8 signal 33 } 
	{ PixArray_26_out_o sc_out sc_lv 8 signal 33 } 
	{ PixArray_26_out_o_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ PixArray_25_out_i sc_in sc_lv 8 signal 34 } 
	{ PixArray_25_out_o sc_out sc_lv 8 signal 34 } 
	{ PixArray_25_out_o_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ PixArray_24_out_i sc_in sc_lv 8 signal 35 } 
	{ PixArray_24_out_o sc_out sc_lv 8 signal 35 } 
	{ PixArray_24_out_o_ap_vld sc_out sc_logic 1 outvld 35 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_upsampled_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "dout" }} , 
 	{ "name": "stream_upsampled_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "num_data_valid" }} , 
 	{ "name": "stream_upsampled_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "fifo_cap" }} , 
 	{ "name": "stream_upsampled_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "empty_n" }} , 
 	{ "name": "stream_upsampled_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "read" }} , 
 	{ "name": "stream_scaled_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_scaled", "role": "din" }} , 
 	{ "name": "stream_scaled_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_scaled", "role": "num_data_valid" }} , 
 	{ "name": "stream_scaled_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_scaled", "role": "fifo_cap" }} , 
 	{ "name": "stream_scaled_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_scaled", "role": "full_n" }} , 
 	{ "name": "stream_scaled_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_scaled", "role": "write" }} , 
 	{ "name": "add_ln682", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "add_ln682", "role": "default" }} , 
 	{ "name": "phasesH_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "phasesH", "role": "address0" }} , 
 	{ "name": "phasesH_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phasesH", "role": "ce0" }} , 
 	{ "name": "phasesH_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "phasesH", "role": "q0" }} , 
 	{ "name": "FiltCoeff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff", "role": "address0" }} , 
 	{ "name": "FiltCoeff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff", "role": "q0" }} , 
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
 	{ "name": "LoopSize", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "LoopSize", "role": "default" }} , 
 	{ "name": "zext_ln682", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln682", "role": "default" }} , 
 	{ "name": "PixArray_47_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_47_out", "role": "i" }} , 
 	{ "name": "PixArray_47_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_47_out", "role": "o" }} , 
 	{ "name": "PixArray_47_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_47_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_46_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_46_out", "role": "i" }} , 
 	{ "name": "PixArray_46_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_46_out", "role": "o" }} , 
 	{ "name": "PixArray_46_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_46_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_45_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_45_out", "role": "i" }} , 
 	{ "name": "PixArray_45_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_45_out", "role": "o" }} , 
 	{ "name": "PixArray_45_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_45_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_44_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_44_out", "role": "i" }} , 
 	{ "name": "PixArray_44_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_44_out", "role": "o" }} , 
 	{ "name": "PixArray_44_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_44_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_43_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_43_out", "role": "i" }} , 
 	{ "name": "PixArray_43_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_43_out", "role": "o" }} , 
 	{ "name": "PixArray_43_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_43_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_42_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_42_out", "role": "i" }} , 
 	{ "name": "PixArray_42_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_42_out", "role": "o" }} , 
 	{ "name": "PixArray_42_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_42_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_41_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_41_out", "role": "i" }} , 
 	{ "name": "PixArray_41_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_41_out", "role": "o" }} , 
 	{ "name": "PixArray_41_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_41_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_40_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_40_out", "role": "i" }} , 
 	{ "name": "PixArray_40_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_40_out", "role": "o" }} , 
 	{ "name": "PixArray_40_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_40_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_39_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_39_out", "role": "i" }} , 
 	{ "name": "PixArray_39_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_39_out", "role": "o" }} , 
 	{ "name": "PixArray_39_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_39_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_38_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_38_out", "role": "i" }} , 
 	{ "name": "PixArray_38_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_38_out", "role": "o" }} , 
 	{ "name": "PixArray_38_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_38_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_37_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_37_out", "role": "i" }} , 
 	{ "name": "PixArray_37_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_37_out", "role": "o" }} , 
 	{ "name": "PixArray_37_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_37_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_36_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_36_out", "role": "i" }} , 
 	{ "name": "PixArray_36_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_36_out", "role": "o" }} , 
 	{ "name": "PixArray_36_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_36_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_35_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_35_out", "role": "i" }} , 
 	{ "name": "PixArray_35_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_35_out", "role": "o" }} , 
 	{ "name": "PixArray_35_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_35_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_34_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_34_out", "role": "i" }} , 
 	{ "name": "PixArray_34_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_34_out", "role": "o" }} , 
 	{ "name": "PixArray_34_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_34_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_33_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_33_out", "role": "i" }} , 
 	{ "name": "PixArray_33_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_33_out", "role": "o" }} , 
 	{ "name": "PixArray_33_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_33_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_32_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_32_out", "role": "i" }} , 
 	{ "name": "PixArray_32_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_32_out", "role": "o" }} , 
 	{ "name": "PixArray_32_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_32_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_31_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_31_out", "role": "i" }} , 
 	{ "name": "PixArray_31_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_31_out", "role": "o" }} , 
 	{ "name": "PixArray_31_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_31_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_30_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_30_out", "role": "i" }} , 
 	{ "name": "PixArray_30_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_30_out", "role": "o" }} , 
 	{ "name": "PixArray_30_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_30_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_29_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_29_out", "role": "i" }} , 
 	{ "name": "PixArray_29_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_29_out", "role": "o" }} , 
 	{ "name": "PixArray_29_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_29_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_28_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_28_out", "role": "i" }} , 
 	{ "name": "PixArray_28_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_28_out", "role": "o" }} , 
 	{ "name": "PixArray_28_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_28_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_27_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_27_out", "role": "i" }} , 
 	{ "name": "PixArray_27_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_27_out", "role": "o" }} , 
 	{ "name": "PixArray_27_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_27_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_26_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_26_out", "role": "i" }} , 
 	{ "name": "PixArray_26_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_26_out", "role": "o" }} , 
 	{ "name": "PixArray_26_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_26_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_25_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_25_out", "role": "i" }} , 
 	{ "name": "PixArray_25_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_25_out", "role": "o" }} , 
 	{ "name": "PixArray_25_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_25_out", "role": "o_ap_vld" }} , 
 	{ "name": "PixArray_24_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_24_out", "role": "i" }} , 
 	{ "name": "PixArray_24_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PixArray_24_out", "role": "o" }} , 
 	{ "name": "PixArray_24_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PixArray_24_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "38", "39"],
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
					{"ID" : "1", "SubInstance" : "grp_hscale_polyphase_fu_228", "Port" : "FiltCoeff_0", "Inst_start_state" : "5", "Inst_end_state" : "15"}]},
			{"Name" : "FiltCoeff_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hscale_polyphase_fu_228", "Port" : "FiltCoeff_1", "Inst_start_state" : "5", "Inst_end_state" : "15"}]},
			{"Name" : "FiltCoeff_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hscale_polyphase_fu_228", "Port" : "FiltCoeff_2", "Inst_start_state" : "5", "Inst_end_state" : "15"}]},
			{"Name" : "FiltCoeff_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hscale_polyphase_fu_228", "Port" : "FiltCoeff_3", "Inst_start_state" : "5", "Inst_end_state" : "15"}]},
			{"Name" : "FiltCoeff_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hscale_polyphase_fu_228", "Port" : "FiltCoeff_4", "Inst_start_state" : "5", "Inst_end_state" : "15"}]},
			{"Name" : "FiltCoeff_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hscale_polyphase_fu_228", "Port" : "FiltCoeff_5", "Inst_start_state" : "5", "Inst_end_state" : "15"}]},
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U99", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U100", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U101", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U102", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U103", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U104", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U105", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U106", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U107", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U108", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U109", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U110", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U111", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U112", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U113", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U114", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U115", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.sparsemux_9_3_8_1_1_U116", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_12ns_24_4_1_U117", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_12ns_24_4_1_U118", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_12ns_24_4_1_U119", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_24s_25_4_1_U120", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_24s_25_4_1_U121", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_24s_25_4_1_U122", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_25s_26_4_1_U123", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_25s_26_4_1_U124", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_25s_26_4_1_U125", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_26s_26_4_1_U126", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_26s_26_4_1_U127", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_26s_26_4_1_U128", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_26s_27_4_1_U129", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_26s_27_4_1_U130", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_26s_27_4_1_U131", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_27s_27_4_1_U132", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_27s_27_4_1_U133", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hscale_polyphase_fu_228.mac_muladd_8ns_16s_27s_27_4_1_U134", "Parent" : "1"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reg_ap_uint_9_s_fu_336", "Parent" : "0",
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
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		d_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "36", "Max" : "1940"}
	, {"Name" : "Interval", "Min" : "36", "Max" : "1940"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add_ln682 { ap_stable {  { add_ln682 in_data 0 11 } } }
	phasesH { ap_memory {  { phasesH_address0 mem_address 1 11 }  { phasesH_ce0 mem_ce 1 1 }  { phasesH_q0 in_data 0 9 } } }
	FiltCoeff { ap_memory {  { FiltCoeff_address0 mem_address 1 6 }  { FiltCoeff_ce0 mem_ce 1 1 }  { FiltCoeff_q0 mem_dout 0 16 } } }
	FiltCoeff_1 { ap_memory {  { FiltCoeff_1_address0 mem_address 1 6 }  { FiltCoeff_1_ce0 mem_ce 1 1 }  { FiltCoeff_1_q0 mem_dout 0 16 } } }
	FiltCoeff_2 { ap_memory {  { FiltCoeff_2_address0 mem_address 1 6 }  { FiltCoeff_2_ce0 mem_ce 1 1 }  { FiltCoeff_2_q0 mem_dout 0 16 } } }
	FiltCoeff_3 { ap_memory {  { FiltCoeff_3_address0 mem_address 1 6 }  { FiltCoeff_3_ce0 mem_ce 1 1 }  { FiltCoeff_3_q0 mem_dout 0 16 } } }
	FiltCoeff_4 { ap_memory {  { FiltCoeff_4_address0 mem_address 1 6 }  { FiltCoeff_4_ce0 mem_ce 1 1 }  { FiltCoeff_4_q0 mem_dout 0 16 } } }
	FiltCoeff_5 { ap_memory {  { FiltCoeff_5_address0 mem_address 1 6 }  { FiltCoeff_5_ce0 mem_ce 1 1 }  { FiltCoeff_5_q0 mem_dout 0 16 } } }
	LoopSize { ap_stable {  { LoopSize in_data 0 11 } } }
	zext_ln682 { ap_stable {  { zext_ln682 in_data 0 16 } } }
	stream_upsampled { ap_fifo {  { stream_upsampled_dout fifo_data_in 0 24 }  { stream_upsampled_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_upsampled_fifo_cap fifo_update 0 5 }  { stream_upsampled_empty_n fifo_status 0 1 }  { stream_upsampled_read fifo_port_we 1 1 } } }
	stream_scaled { ap_fifo {  { stream_scaled_din fifo_data_in 1 24 }  { stream_scaled_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_scaled_fifo_cap fifo_update 0 5 }  { stream_scaled_full_n fifo_status 0 1 }  { stream_scaled_write fifo_port_we 1 1 } } }
	PixArray_47_out { ap_ovld {  { PixArray_47_out_i in_data 0 8 }  { PixArray_47_out_o out_data 1 8 }  { PixArray_47_out_o_ap_vld out_vld 1 1 } } }
	PixArray_46_out { ap_ovld {  { PixArray_46_out_i in_data 0 8 }  { PixArray_46_out_o out_data 1 8 }  { PixArray_46_out_o_ap_vld out_vld 1 1 } } }
	PixArray_45_out { ap_ovld {  { PixArray_45_out_i in_data 0 8 }  { PixArray_45_out_o out_data 1 8 }  { PixArray_45_out_o_ap_vld out_vld 1 1 } } }
	PixArray_44_out { ap_ovld {  { PixArray_44_out_i in_data 0 8 }  { PixArray_44_out_o out_data 1 8 }  { PixArray_44_out_o_ap_vld out_vld 1 1 } } }
	PixArray_43_out { ap_ovld {  { PixArray_43_out_i in_data 0 8 }  { PixArray_43_out_o out_data 1 8 }  { PixArray_43_out_o_ap_vld out_vld 1 1 } } }
	PixArray_42_out { ap_ovld {  { PixArray_42_out_i in_data 0 8 }  { PixArray_42_out_o out_data 1 8 }  { PixArray_42_out_o_ap_vld out_vld 1 1 } } }
	PixArray_41_out { ap_ovld {  { PixArray_41_out_i in_data 0 8 }  { PixArray_41_out_o out_data 1 8 }  { PixArray_41_out_o_ap_vld out_vld 1 1 } } }
	PixArray_40_out { ap_ovld {  { PixArray_40_out_i in_data 0 8 }  { PixArray_40_out_o out_data 1 8 }  { PixArray_40_out_o_ap_vld out_vld 1 1 } } }
	PixArray_39_out { ap_ovld {  { PixArray_39_out_i in_data 0 8 }  { PixArray_39_out_o out_data 1 8 }  { PixArray_39_out_o_ap_vld out_vld 1 1 } } }
	PixArray_38_out { ap_ovld {  { PixArray_38_out_i in_data 0 8 }  { PixArray_38_out_o out_data 1 8 }  { PixArray_38_out_o_ap_vld out_vld 1 1 } } }
	PixArray_37_out { ap_ovld {  { PixArray_37_out_i in_data 0 8 }  { PixArray_37_out_o out_data 1 8 }  { PixArray_37_out_o_ap_vld out_vld 1 1 } } }
	PixArray_36_out { ap_ovld {  { PixArray_36_out_i in_data 0 8 }  { PixArray_36_out_o out_data 1 8 }  { PixArray_36_out_o_ap_vld out_vld 1 1 } } }
	PixArray_35_out { ap_ovld {  { PixArray_35_out_i in_data 0 8 }  { PixArray_35_out_o out_data 1 8 }  { PixArray_35_out_o_ap_vld out_vld 1 1 } } }
	PixArray_34_out { ap_ovld {  { PixArray_34_out_i in_data 0 8 }  { PixArray_34_out_o out_data 1 8 }  { PixArray_34_out_o_ap_vld out_vld 1 1 } } }
	PixArray_33_out { ap_ovld {  { PixArray_33_out_i in_data 0 8 }  { PixArray_33_out_o out_data 1 8 }  { PixArray_33_out_o_ap_vld out_vld 1 1 } } }
	PixArray_32_out { ap_ovld {  { PixArray_32_out_i in_data 0 8 }  { PixArray_32_out_o out_data 1 8 }  { PixArray_32_out_o_ap_vld out_vld 1 1 } } }
	PixArray_31_out { ap_ovld {  { PixArray_31_out_i in_data 0 8 }  { PixArray_31_out_o out_data 1 8 }  { PixArray_31_out_o_ap_vld out_vld 1 1 } } }
	PixArray_30_out { ap_ovld {  { PixArray_30_out_i in_data 0 8 }  { PixArray_30_out_o out_data 1 8 }  { PixArray_30_out_o_ap_vld out_vld 1 1 } } }
	PixArray_29_out { ap_ovld {  { PixArray_29_out_i in_data 0 8 }  { PixArray_29_out_o out_data 1 8 }  { PixArray_29_out_o_ap_vld out_vld 1 1 } } }
	PixArray_28_out { ap_ovld {  { PixArray_28_out_i in_data 0 8 }  { PixArray_28_out_o out_data 1 8 }  { PixArray_28_out_o_ap_vld out_vld 1 1 } } }
	PixArray_27_out { ap_ovld {  { PixArray_27_out_i in_data 0 8 }  { PixArray_27_out_o out_data 1 8 }  { PixArray_27_out_o_ap_vld out_vld 1 1 } } }
	PixArray_26_out { ap_ovld {  { PixArray_26_out_i in_data 0 8 }  { PixArray_26_out_o out_data 1 8 }  { PixArray_26_out_o_ap_vld out_vld 1 1 } } }
	PixArray_25_out { ap_ovld {  { PixArray_25_out_i in_data 0 8 }  { PixArray_25_out_o out_data 1 8 }  { PixArray_25_out_o_ap_vld out_vld 1 1 } } }
	PixArray_24_out { ap_ovld {  { PixArray_24_out_i in_data 0 8 }  { PixArray_24_out_o out_data 1 8 }  { PixArray_24_out_o_ap_vld out_vld 1 1 } } }
}
