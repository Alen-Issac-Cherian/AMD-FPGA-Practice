set moduleName v_hcresampler_core_Pipeline_VITIS_LOOP_1681_2
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
set C_modelName {v_hcresampler_core_Pipeline_VITIS_LOOP_1681_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ pixbuf_y_14 int 10 regular  }
	{ pixbuf_y_13 int 10 regular  }
	{ pixbuf_y_12 int 10 regular  }
	{ pixbuf_y_11 int 10 regular  }
	{ p_0_2_0_0_0691717_lcssa764 int 10 regular  }
	{ p_0_1_0_0_0687713_lcssa761 int 10 regular  }
	{ p_0_2_0_0_0691_lcssa740 int 10 regular  }
	{ p_0_1_0_0_0687_lcssa737 int 10 regular  }
	{ p_0_0_0_0_0495685_lcssa734 int 10 regular  }
	{ loopWidth int 16 regular  }
	{ stream_out_422 int 30 regular {fifo 1 volatile }  }
	{ p_read int 1 regular  }
	{ p_cast8 int 1 regular  }
	{ select_ln1677 int 2 regular  }
	{ WidthOut_load int 16 regular {ap_stable 0} }
	{ stream_scaled_csc int 30 regular {fifo 0 volatile }  }
	{ pixbuf_y_19_out int 10 regular {pointer 1}  }
	{ pixbuf_y_18_out int 10 regular {pointer 1}  }
	{ pixbuf_y_17_out int 10 regular {pointer 1}  }
	{ pixbuf_y_16_out int 10 regular {pointer 1}  }
	{ pixbuf_y_15_out int 10 regular {pointer 2}  }
	{ p_0_2_0_0_0691719_out int 10 regular {pointer 1}  }
	{ p_0_1_0_0_0687715_out int 10 regular {pointer 1}  }
	{ p_0_0_0_0_0_2712_out int 10 regular {pointer 2}  }
	{ p_0_0_0_0_0487_2709_out int 10 regular {pointer 2}  }
	{ p_0_0_0_0_0_1703_out int 10 regular {pointer 2}  }
	{ p_0_0_0_0_0487_1697_out int 10 regular {pointer 2}  }
	{ inpix_0_2_0_0_0_load684_out int 10 regular {pointer 2}  }
	{ inpix_0_1_0_0_0_load682_out int 10 regular {pointer 2}  }
	{ inpix_0_0_0_0_0_load680_out int 10 regular {pointer 2}  }
	{ filt_res1_1_out int 64 regular {pointer 2}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "pixbuf_y_14", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_13", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_12", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_11", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_2_0_0_0691717_lcssa764", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_1_0_0_0687713_lcssa761", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_2_0_0_0691_lcssa740", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_1_0_0_0687_lcssa737", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0_0_0495685_lcssa734", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "stream_out_422", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast8", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln1677", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "WidthOut_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "stream_scaled_csc", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_19_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_18_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_17_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_16_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_15_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_2_0_0_0691719_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_1_0_0_0687715_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0_0_0_2712_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0487_2709_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0_1703_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0487_1697_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "inpix_0_2_0_0_0_load684_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "inpix_0_1_0_0_0_load682_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "inpix_0_0_0_0_0_load680_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "filt_res1_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 69
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_scaled_csc_dout sc_in sc_lv 30 signal 15 } 
	{ stream_scaled_csc_num_data_valid sc_in sc_lv 5 signal 15 } 
	{ stream_scaled_csc_fifo_cap sc_in sc_lv 5 signal 15 } 
	{ stream_scaled_csc_empty_n sc_in sc_logic 1 signal 15 } 
	{ stream_scaled_csc_read sc_out sc_logic 1 signal 15 } 
	{ stream_out_422_din sc_out sc_lv 30 signal 10 } 
	{ stream_out_422_num_data_valid sc_in sc_lv 5 signal 10 } 
	{ stream_out_422_fifo_cap sc_in sc_lv 5 signal 10 } 
	{ stream_out_422_full_n sc_in sc_logic 1 signal 10 } 
	{ stream_out_422_write sc_out sc_logic 1 signal 10 } 
	{ pixbuf_y_14 sc_in sc_lv 10 signal 0 } 
	{ pixbuf_y_13 sc_in sc_lv 10 signal 1 } 
	{ pixbuf_y_12 sc_in sc_lv 10 signal 2 } 
	{ pixbuf_y_11 sc_in sc_lv 10 signal 3 } 
	{ p_0_2_0_0_0691717_lcssa764 sc_in sc_lv 10 signal 4 } 
	{ p_0_1_0_0_0687713_lcssa761 sc_in sc_lv 10 signal 5 } 
	{ p_0_2_0_0_0691_lcssa740 sc_in sc_lv 10 signal 6 } 
	{ p_0_1_0_0_0687_lcssa737 sc_in sc_lv 10 signal 7 } 
	{ p_0_0_0_0_0495685_lcssa734 sc_in sc_lv 10 signal 8 } 
	{ loopWidth sc_in sc_lv 16 signal 9 } 
	{ p_read sc_in sc_lv 1 signal 11 } 
	{ p_cast8 sc_in sc_lv 1 signal 12 } 
	{ select_ln1677 sc_in sc_lv 2 signal 13 } 
	{ WidthOut_load sc_in sc_lv 16 signal 14 } 
	{ pixbuf_y_19_out sc_out sc_lv 10 signal 16 } 
	{ pixbuf_y_19_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ pixbuf_y_18_out sc_out sc_lv 10 signal 17 } 
	{ pixbuf_y_18_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ pixbuf_y_17_out sc_out sc_lv 10 signal 18 } 
	{ pixbuf_y_17_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ pixbuf_y_16_out sc_out sc_lv 10 signal 19 } 
	{ pixbuf_y_16_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ pixbuf_y_15_out_i sc_in sc_lv 10 signal 20 } 
	{ pixbuf_y_15_out_o sc_out sc_lv 10 signal 20 } 
	{ pixbuf_y_15_out_o_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ p_0_2_0_0_0691719_out sc_out sc_lv 10 signal 21 } 
	{ p_0_2_0_0_0691719_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ p_0_1_0_0_0687715_out sc_out sc_lv 10 signal 22 } 
	{ p_0_1_0_0_0687715_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ p_0_0_0_0_0_2712_out_i sc_in sc_lv 10 signal 23 } 
	{ p_0_0_0_0_0_2712_out_o sc_out sc_lv 10 signal 23 } 
	{ p_0_0_0_0_0_2712_out_o_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ p_0_0_0_0_0487_2709_out_i sc_in sc_lv 10 signal 24 } 
	{ p_0_0_0_0_0487_2709_out_o sc_out sc_lv 10 signal 24 } 
	{ p_0_0_0_0_0487_2709_out_o_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ p_0_0_0_0_0_1703_out_i sc_in sc_lv 10 signal 25 } 
	{ p_0_0_0_0_0_1703_out_o sc_out sc_lv 10 signal 25 } 
	{ p_0_0_0_0_0_1703_out_o_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ p_0_0_0_0_0487_1697_out_i sc_in sc_lv 10 signal 26 } 
	{ p_0_0_0_0_0487_1697_out_o sc_out sc_lv 10 signal 26 } 
	{ p_0_0_0_0_0487_1697_out_o_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ inpix_0_2_0_0_0_load684_out_i sc_in sc_lv 10 signal 27 } 
	{ inpix_0_2_0_0_0_load684_out_o sc_out sc_lv 10 signal 27 } 
	{ inpix_0_2_0_0_0_load684_out_o_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ inpix_0_1_0_0_0_load682_out_i sc_in sc_lv 10 signal 28 } 
	{ inpix_0_1_0_0_0_load682_out_o sc_out sc_lv 10 signal 28 } 
	{ inpix_0_1_0_0_0_load682_out_o_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ inpix_0_0_0_0_0_load680_out_i sc_in sc_lv 10 signal 29 } 
	{ inpix_0_0_0_0_0_load680_out_o sc_out sc_lv 10 signal 29 } 
	{ inpix_0_0_0_0_0_load680_out_o_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ filt_res1_1_out_i sc_in sc_lv 64 signal 30 } 
	{ filt_res1_1_out_o sc_out sc_lv 64 signal 30 } 
	{ filt_res1_1_out_o_ap_vld sc_out sc_logic 1 outvld 30 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_scaled_csc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "stream_scaled_csc", "role": "dout" }} , 
 	{ "name": "stream_scaled_csc_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_scaled_csc", "role": "num_data_valid" }} , 
 	{ "name": "stream_scaled_csc_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_scaled_csc", "role": "fifo_cap" }} , 
 	{ "name": "stream_scaled_csc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_scaled_csc", "role": "empty_n" }} , 
 	{ "name": "stream_scaled_csc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_scaled_csc", "role": "read" }} , 
 	{ "name": "stream_out_422_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "stream_out_422", "role": "din" }} , 
 	{ "name": "stream_out_422_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_422", "role": "num_data_valid" }} , 
 	{ "name": "stream_out_422_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_422", "role": "fifo_cap" }} , 
 	{ "name": "stream_out_422_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_422", "role": "full_n" }} , 
 	{ "name": "stream_out_422_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_422", "role": "write" }} , 
 	{ "name": "pixbuf_y_14", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_14", "role": "default" }} , 
 	{ "name": "pixbuf_y_13", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_13", "role": "default" }} , 
 	{ "name": "pixbuf_y_12", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_12", "role": "default" }} , 
 	{ "name": "pixbuf_y_11", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_11", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_0691717_lcssa764", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_0691717_lcssa764", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_0687713_lcssa761", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_0687713_lcssa761", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_0691_lcssa740", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_0691_lcssa740", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_0687_lcssa737", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_0687_lcssa737", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_0495685_lcssa734", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_0495685_lcssa734", "role": "default" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_cast8", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_cast8", "role": "default" }} , 
 	{ "name": "select_ln1677", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln1677", "role": "default" }} , 
 	{ "name": "WidthOut_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "WidthOut_load", "role": "default" }} , 
 	{ "name": "pixbuf_y_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_19_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_19_out", "role": "ap_vld" }} , 
 	{ "name": "pixbuf_y_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_18_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_18_out", "role": "ap_vld" }} , 
 	{ "name": "pixbuf_y_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_17_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_17_out", "role": "ap_vld" }} , 
 	{ "name": "pixbuf_y_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_16_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_16_out", "role": "ap_vld" }} , 
 	{ "name": "pixbuf_y_15_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_15_out", "role": "i" }} , 
 	{ "name": "pixbuf_y_15_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_15_out", "role": "o" }} , 
 	{ "name": "pixbuf_y_15_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_15_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_2_0_0_0691719_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_0691719_out", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_0691719_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_2_0_0_0691719_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_1_0_0_0687715_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_0687715_out", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_0687715_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_0687715_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0_2712_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_0_2712_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0_2712_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_0_2712_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0_2712_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0_2712_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0487_2709_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_0487_2709_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0487_2709_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_0487_2709_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0487_2709_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0487_2709_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0_1703_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_0_1703_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0_1703_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_0_1703_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0_1703_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0_1703_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0487_1697_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_0487_1697_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0487_1697_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_0487_1697_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0487_1697_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0487_1697_out", "role": "o_ap_vld" }} , 
 	{ "name": "inpix_0_2_0_0_0_load684_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inpix_0_2_0_0_0_load684_out", "role": "i" }} , 
 	{ "name": "inpix_0_2_0_0_0_load684_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inpix_0_2_0_0_0_load684_out", "role": "o" }} , 
 	{ "name": "inpix_0_2_0_0_0_load684_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "inpix_0_2_0_0_0_load684_out", "role": "o_ap_vld" }} , 
 	{ "name": "inpix_0_1_0_0_0_load682_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inpix_0_1_0_0_0_load682_out", "role": "i" }} , 
 	{ "name": "inpix_0_1_0_0_0_load682_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inpix_0_1_0_0_0_load682_out", "role": "o" }} , 
 	{ "name": "inpix_0_1_0_0_0_load682_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "inpix_0_1_0_0_0_load682_out", "role": "o_ap_vld" }} , 
 	{ "name": "inpix_0_0_0_0_0_load680_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inpix_0_0_0_0_0_load680_out", "role": "i" }} , 
 	{ "name": "inpix_0_0_0_0_0_load680_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inpix_0_0_0_0_0_load680_out", "role": "o" }} , 
 	{ "name": "inpix_0_0_0_0_0_load680_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "inpix_0_0_0_0_0_load680_out", "role": "o_ap_vld" }} , 
 	{ "name": "filt_res1_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "filt_res1_1_out", "role": "i" }} , 
 	{ "name": "filt_res1_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "filt_res1_1_out", "role": "o" }} , 
 	{ "name": "filt_res1_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "filt_res1_1_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
			{"Name" : "p_0_2_0_0_0691717_lcssa764", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_0687713_lcssa761", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_2_0_0_0691_lcssa740", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_0687_lcssa737", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_0495685_lcssa734", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "p_0_2_0_0_0691719_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_0687715_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_0_2712_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0487_2709_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0_1703_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0487_1697_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inpix_0_2_0_0_0_load684_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inpix_0_1_0_0_0_load682_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inpix_0_0_0_0_0_load680_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "filt_res1_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1681_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_10_1_1_U251", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	v_hcresampler_core_Pipeline_VITIS_LOOP_1681_2 {
		pixbuf_y_14 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_13 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_12 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_11 {Type I LastRead 0 FirstWrite -1}
		p_0_2_0_0_0691717_lcssa764 {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_0687713_lcssa761 {Type I LastRead 0 FirstWrite -1}
		p_0_2_0_0_0691_lcssa740 {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_0687_lcssa737 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_0495685_lcssa734 {Type I LastRead 0 FirstWrite -1}
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
		p_0_2_0_0_0691719_out {Type O LastRead -1 FirstWrite 3}
		p_0_1_0_0_0687715_out {Type O LastRead -1 FirstWrite 3}
		p_0_0_0_0_0_2712_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0487_2709_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0_1703_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0487_1697_out {Type IO LastRead 2 FirstWrite 2}
		inpix_0_2_0_0_0_load684_out {Type IO LastRead 2 FirstWrite 1}
		inpix_0_1_0_0_0_load682_out {Type IO LastRead 2 FirstWrite 1}
		inpix_0_0_0_0_0_load680_out {Type IO LastRead 2 FirstWrite 1}
		filt_res1_1_out {Type IO LastRead 4 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "32772"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "32772"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pixbuf_y_14 { ap_none {  { pixbuf_y_14 in_data 0 10 } } }
	pixbuf_y_13 { ap_none {  { pixbuf_y_13 in_data 0 10 } } }
	pixbuf_y_12 { ap_none {  { pixbuf_y_12 in_data 0 10 } } }
	pixbuf_y_11 { ap_none {  { pixbuf_y_11 in_data 0 10 } } }
	p_0_2_0_0_0691717_lcssa764 { ap_none {  { p_0_2_0_0_0691717_lcssa764 in_data 0 10 } } }
	p_0_1_0_0_0687713_lcssa761 { ap_none {  { p_0_1_0_0_0687713_lcssa761 in_data 0 10 } } }
	p_0_2_0_0_0691_lcssa740 { ap_none {  { p_0_2_0_0_0691_lcssa740 in_data 0 10 } } }
	p_0_1_0_0_0687_lcssa737 { ap_none {  { p_0_1_0_0_0687_lcssa737 in_data 0 10 } } }
	p_0_0_0_0_0495685_lcssa734 { ap_none {  { p_0_0_0_0_0495685_lcssa734 in_data 0 10 } } }
	loopWidth { ap_none {  { loopWidth in_data 0 16 } } }
	stream_out_422 { ap_fifo {  { stream_out_422_din fifo_data_in 1 30 }  { stream_out_422_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_out_422_fifo_cap fifo_update 0 5 }  { stream_out_422_full_n fifo_status 0 1 }  { stream_out_422_write fifo_port_we 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 1 } } }
	p_cast8 { ap_none {  { p_cast8 in_data 0 1 } } }
	select_ln1677 { ap_none {  { select_ln1677 in_data 0 2 } } }
	WidthOut_load { ap_stable {  { WidthOut_load in_data 0 16 } } }
	stream_scaled_csc { ap_fifo {  { stream_scaled_csc_dout fifo_data_in 0 30 }  { stream_scaled_csc_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_scaled_csc_fifo_cap fifo_update 0 5 }  { stream_scaled_csc_empty_n fifo_status 0 1 }  { stream_scaled_csc_read fifo_port_we 1 1 } } }
	pixbuf_y_19_out { ap_vld {  { pixbuf_y_19_out out_data 1 10 }  { pixbuf_y_19_out_ap_vld out_vld 1 1 } } }
	pixbuf_y_18_out { ap_vld {  { pixbuf_y_18_out out_data 1 10 }  { pixbuf_y_18_out_ap_vld out_vld 1 1 } } }
	pixbuf_y_17_out { ap_vld {  { pixbuf_y_17_out out_data 1 10 }  { pixbuf_y_17_out_ap_vld out_vld 1 1 } } }
	pixbuf_y_16_out { ap_vld {  { pixbuf_y_16_out out_data 1 10 }  { pixbuf_y_16_out_ap_vld out_vld 1 1 } } }
	pixbuf_y_15_out { ap_ovld {  { pixbuf_y_15_out_i in_data 0 10 }  { pixbuf_y_15_out_o out_data 1 10 }  { pixbuf_y_15_out_o_ap_vld out_vld 1 1 } } }
	p_0_2_0_0_0691719_out { ap_vld {  { p_0_2_0_0_0691719_out out_data 1 10 }  { p_0_2_0_0_0691719_out_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_0687715_out { ap_vld {  { p_0_1_0_0_0687715_out out_data 1 10 }  { p_0_1_0_0_0687715_out_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0_2712_out { ap_ovld {  { p_0_0_0_0_0_2712_out_i in_data 0 10 }  { p_0_0_0_0_0_2712_out_o out_data 1 10 }  { p_0_0_0_0_0_2712_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0487_2709_out { ap_ovld {  { p_0_0_0_0_0487_2709_out_i in_data 0 10 }  { p_0_0_0_0_0487_2709_out_o out_data 1 10 }  { p_0_0_0_0_0487_2709_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0_1703_out { ap_ovld {  { p_0_0_0_0_0_1703_out_i in_data 0 10 }  { p_0_0_0_0_0_1703_out_o out_data 1 10 }  { p_0_0_0_0_0_1703_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0487_1697_out { ap_ovld {  { p_0_0_0_0_0487_1697_out_i in_data 0 10 }  { p_0_0_0_0_0487_1697_out_o out_data 1 10 }  { p_0_0_0_0_0487_1697_out_o_ap_vld out_vld 1 1 } } }
	inpix_0_2_0_0_0_load684_out { ap_ovld {  { inpix_0_2_0_0_0_load684_out_i in_data 0 10 }  { inpix_0_2_0_0_0_load684_out_o out_data 1 10 }  { inpix_0_2_0_0_0_load684_out_o_ap_vld out_vld 1 1 } } }
	inpix_0_1_0_0_0_load682_out { ap_ovld {  { inpix_0_1_0_0_0_load682_out_i in_data 0 10 }  { inpix_0_1_0_0_0_load682_out_o out_data 1 10 }  { inpix_0_1_0_0_0_load682_out_o_ap_vld out_vld 1 1 } } }
	inpix_0_0_0_0_0_load680_out { ap_ovld {  { inpix_0_0_0_0_0_load680_out_i in_data 0 10 }  { inpix_0_0_0_0_0_load680_out_o out_data 1 10 }  { inpix_0_0_0_0_0_load680_out_o_ap_vld out_vld 1 1 } } }
	filt_res1_1_out { ap_ovld {  { filt_res1_1_out_i in_data 0 64 }  { filt_res1_1_out_o out_data 1 64 }  { filt_res1_1_out_o_ap_vld out_vld 1 1 } } }
}
