set moduleName v_hcresampler_core_1_Pipeline_VITIS_LOOP_1681_2
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
set C_modelName {v_hcresampler_core.1_Pipeline_VITIS_LOOP_1681_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ pixbuf_y_4 int 10 regular  }
	{ pixbuf_y_3 int 10 regular  }
	{ pixbuf_y_2 int 10 regular  }
	{ pixbuf_y_1 int 10 regular  }
	{ p_0_0_0_0_0495685_lcssa734 int 10 regular  }
	{ loopWidth int 16 regular  }
	{ stream_upsampled int 30 regular {fifo 1 volatile }  }
	{ p_read int 1 regular  }
	{ select_ln1677 int 3 regular  }
	{ WidthIn_load int 16 regular {ap_stable 0} }
	{ stream_in int 30 regular {fifo 0 volatile }  }
	{ pixbuf_y_9_out int 10 regular {pointer 1}  }
	{ pixbuf_y_8_out int 10 regular {pointer 1}  }
	{ pixbuf_y_7_out int 10 regular {pointer 1}  }
	{ pixbuf_y_6_out int 10 regular {pointer 1}  }
	{ pixbuf_y_5_out int 10 regular {pointer 2}  }
	{ p_0_2_0_0_0691719_out int 10 regular {pointer 2}  }
	{ p_0_1_0_0_0687715_out int 10 regular {pointer 2}  }
	{ p_0_0_0_0_0_2712_out int 10 regular {pointer 2}  }
	{ p_0_0_0_0_0487_2709_out int 10 regular {pointer 2}  }
	{ p_0_0_0_0_0_1703_out int 10 regular {pointer 2}  }
	{ p_0_0_0_0_0487_1697_out int 10 regular {pointer 2}  }
	{ p_0_2_0_0_0694_out int 10 regular {pointer 2}  }
	{ p_0_1_0_0_0690_out int 10 regular {pointer 2}  }
	{ inpix_0_2_0_0_0_load684_out int 10 regular {pointer 2}  }
	{ inpix_0_1_0_0_0_load682_out int 10 regular {pointer 2}  }
	{ inpix_0_0_0_0_0_load680_out int 10 regular {pointer 2}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "pixbuf_y_4", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_3", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_2", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_1", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0_0_0495685_lcssa734", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "stream_upsampled", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln1677", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "WidthIn_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "pixbuf_y_9_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_8_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_7_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_6_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pixbuf_y_5_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_2_0_0_0691719_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_1_0_0_0687715_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0_2712_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0487_2709_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0_1703_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0487_1697_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_2_0_0_0694_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_1_0_0_0690_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "inpix_0_2_0_0_0_load684_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "inpix_0_1_0_0_0_load682_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "inpix_0_0_0_0_0_load680_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 69
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_in_dout sc_in sc_lv 30 signal 10 } 
	{ stream_in_num_data_valid sc_in sc_lv 5 signal 10 } 
	{ stream_in_fifo_cap sc_in sc_lv 5 signal 10 } 
	{ stream_in_empty_n sc_in sc_logic 1 signal 10 } 
	{ stream_in_read sc_out sc_logic 1 signal 10 } 
	{ stream_upsampled_din sc_out sc_lv 30 signal 6 } 
	{ stream_upsampled_num_data_valid sc_in sc_lv 5 signal 6 } 
	{ stream_upsampled_fifo_cap sc_in sc_lv 5 signal 6 } 
	{ stream_upsampled_full_n sc_in sc_logic 1 signal 6 } 
	{ stream_upsampled_write sc_out sc_logic 1 signal 6 } 
	{ pixbuf_y_4 sc_in sc_lv 10 signal 0 } 
	{ pixbuf_y_3 sc_in sc_lv 10 signal 1 } 
	{ pixbuf_y_2 sc_in sc_lv 10 signal 2 } 
	{ pixbuf_y_1 sc_in sc_lv 10 signal 3 } 
	{ p_0_0_0_0_0495685_lcssa734 sc_in sc_lv 10 signal 4 } 
	{ loopWidth sc_in sc_lv 16 signal 5 } 
	{ p_read sc_in sc_lv 1 signal 7 } 
	{ select_ln1677 sc_in sc_lv 3 signal 8 } 
	{ WidthIn_load sc_in sc_lv 16 signal 9 } 
	{ pixbuf_y_9_out sc_out sc_lv 10 signal 11 } 
	{ pixbuf_y_9_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ pixbuf_y_8_out sc_out sc_lv 10 signal 12 } 
	{ pixbuf_y_8_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ pixbuf_y_7_out sc_out sc_lv 10 signal 13 } 
	{ pixbuf_y_7_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ pixbuf_y_6_out sc_out sc_lv 10 signal 14 } 
	{ pixbuf_y_6_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ pixbuf_y_5_out_i sc_in sc_lv 10 signal 15 } 
	{ pixbuf_y_5_out_o sc_out sc_lv 10 signal 15 } 
	{ pixbuf_y_5_out_o_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ p_0_2_0_0_0691719_out_i sc_in sc_lv 10 signal 16 } 
	{ p_0_2_0_0_0691719_out_o sc_out sc_lv 10 signal 16 } 
	{ p_0_2_0_0_0691719_out_o_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ p_0_1_0_0_0687715_out_i sc_in sc_lv 10 signal 17 } 
	{ p_0_1_0_0_0687715_out_o sc_out sc_lv 10 signal 17 } 
	{ p_0_1_0_0_0687715_out_o_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ p_0_0_0_0_0_2712_out_i sc_in sc_lv 10 signal 18 } 
	{ p_0_0_0_0_0_2712_out_o sc_out sc_lv 10 signal 18 } 
	{ p_0_0_0_0_0_2712_out_o_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ p_0_0_0_0_0487_2709_out_i sc_in sc_lv 10 signal 19 } 
	{ p_0_0_0_0_0487_2709_out_o sc_out sc_lv 10 signal 19 } 
	{ p_0_0_0_0_0487_2709_out_o_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ p_0_0_0_0_0_1703_out_i sc_in sc_lv 10 signal 20 } 
	{ p_0_0_0_0_0_1703_out_o sc_out sc_lv 10 signal 20 } 
	{ p_0_0_0_0_0_1703_out_o_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ p_0_0_0_0_0487_1697_out_i sc_in sc_lv 10 signal 21 } 
	{ p_0_0_0_0_0487_1697_out_o sc_out sc_lv 10 signal 21 } 
	{ p_0_0_0_0_0487_1697_out_o_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ p_0_2_0_0_0694_out_i sc_in sc_lv 10 signal 22 } 
	{ p_0_2_0_0_0694_out_o sc_out sc_lv 10 signal 22 } 
	{ p_0_2_0_0_0694_out_o_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ p_0_1_0_0_0690_out_i sc_in sc_lv 10 signal 23 } 
	{ p_0_1_0_0_0690_out_o sc_out sc_lv 10 signal 23 } 
	{ p_0_1_0_0_0690_out_o_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ inpix_0_2_0_0_0_load684_out_i sc_in sc_lv 10 signal 24 } 
	{ inpix_0_2_0_0_0_load684_out_o sc_out sc_lv 10 signal 24 } 
	{ inpix_0_2_0_0_0_load684_out_o_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ inpix_0_1_0_0_0_load682_out_i sc_in sc_lv 10 signal 25 } 
	{ inpix_0_1_0_0_0_load682_out_o sc_out sc_lv 10 signal 25 } 
	{ inpix_0_1_0_0_0_load682_out_o_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ inpix_0_0_0_0_0_load680_out_i sc_in sc_lv 10 signal 26 } 
	{ inpix_0_0_0_0_0_load680_out_o sc_out sc_lv 10 signal 26 } 
	{ inpix_0_0_0_0_0_load680_out_o_ap_vld sc_out sc_logic 1 outvld 26 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "stream_in", "role": "dout" }} , 
 	{ "name": "stream_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in", "role": "num_data_valid" }} , 
 	{ "name": "stream_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in", "role": "fifo_cap" }} , 
 	{ "name": "stream_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in", "role": "empty_n" }} , 
 	{ "name": "stream_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in", "role": "read" }} , 
 	{ "name": "stream_upsampled_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "din" }} , 
 	{ "name": "stream_upsampled_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "num_data_valid" }} , 
 	{ "name": "stream_upsampled_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "fifo_cap" }} , 
 	{ "name": "stream_upsampled_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "full_n" }} , 
 	{ "name": "stream_upsampled_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_upsampled", "role": "write" }} , 
 	{ "name": "pixbuf_y_4", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_4", "role": "default" }} , 
 	{ "name": "pixbuf_y_3", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_3", "role": "default" }} , 
 	{ "name": "pixbuf_y_2", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_2", "role": "default" }} , 
 	{ "name": "pixbuf_y_1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_1", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_0495685_lcssa734", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_0495685_lcssa734", "role": "default" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "select_ln1677", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln1677", "role": "default" }} , 
 	{ "name": "WidthIn_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "WidthIn_load", "role": "default" }} , 
 	{ "name": "pixbuf_y_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_9_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_9_out", "role": "ap_vld" }} , 
 	{ "name": "pixbuf_y_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_8_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_8_out", "role": "ap_vld" }} , 
 	{ "name": "pixbuf_y_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_7_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_7_out", "role": "ap_vld" }} , 
 	{ "name": "pixbuf_y_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_6_out", "role": "default" }} , 
 	{ "name": "pixbuf_y_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_6_out", "role": "ap_vld" }} , 
 	{ "name": "pixbuf_y_5_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_5_out", "role": "i" }} , 
 	{ "name": "pixbuf_y_5_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pixbuf_y_5_out", "role": "o" }} , 
 	{ "name": "pixbuf_y_5_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pixbuf_y_5_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_2_0_0_0691719_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_0691719_out", "role": "i" }} , 
 	{ "name": "p_0_2_0_0_0691719_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_0691719_out", "role": "o" }} , 
 	{ "name": "p_0_2_0_0_0691719_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_2_0_0_0691719_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_1_0_0_0687715_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_0687715_out", "role": "i" }} , 
 	{ "name": "p_0_1_0_0_0687715_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_0687715_out", "role": "o" }} , 
 	{ "name": "p_0_1_0_0_0687715_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_0687715_out", "role": "o_ap_vld" }} , 
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
 	{ "name": "p_0_2_0_0_0694_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_0694_out", "role": "i" }} , 
 	{ "name": "p_0_2_0_0_0694_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_0694_out", "role": "o" }} , 
 	{ "name": "p_0_2_0_0_0694_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_2_0_0_0694_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_1_0_0_0690_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_0690_out", "role": "i" }} , 
 	{ "name": "p_0_1_0_0_0690_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_0690_out", "role": "o" }} , 
 	{ "name": "p_0_1_0_0_0690_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_0690_out", "role": "o_ap_vld" }} , 
 	{ "name": "inpix_0_2_0_0_0_load684_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inpix_0_2_0_0_0_load684_out", "role": "i" }} , 
 	{ "name": "inpix_0_2_0_0_0_load684_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inpix_0_2_0_0_0_load684_out", "role": "o" }} , 
 	{ "name": "inpix_0_2_0_0_0_load684_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "inpix_0_2_0_0_0_load684_out", "role": "o_ap_vld" }} , 
 	{ "name": "inpix_0_1_0_0_0_load682_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inpix_0_1_0_0_0_load682_out", "role": "i" }} , 
 	{ "name": "inpix_0_1_0_0_0_load682_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inpix_0_1_0_0_0_load682_out", "role": "o" }} , 
 	{ "name": "inpix_0_1_0_0_0_load682_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "inpix_0_1_0_0_0_load682_out", "role": "o_ap_vld" }} , 
 	{ "name": "inpix_0_0_0_0_0_load680_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inpix_0_0_0_0_0_load680_out", "role": "i" }} , 
 	{ "name": "inpix_0_0_0_0_0_load680_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inpix_0_0_0_0_0_load680_out", "role": "o" }} , 
 	{ "name": "inpix_0_0_0_0_0_load680_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "inpix_0_0_0_0_0_load680_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"Name" : "p_0_0_0_0_0495685_lcssa734", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "p_0_2_0_0_0691719_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0687715_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0_2712_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0487_2709_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0_1703_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0487_1697_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_0694_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0690_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inpix_0_2_0_0_0_load684_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inpix_0_1_0_0_0_load682_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inpix_0_0_0_0_0_load680_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1681_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	v_hcresampler_core_1_Pipeline_VITIS_LOOP_1681_2 {
		pixbuf_y_4 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_3 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_2 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_1 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_0495685_lcssa734 {Type I LastRead 0 FirstWrite -1}
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
		p_0_2_0_0_0691719_out {Type IO LastRead 2 FirstWrite 2}
		p_0_1_0_0_0687715_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0_2712_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0487_2709_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0_1703_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0_0_0487_1697_out {Type IO LastRead 2 FirstWrite 2}
		p_0_2_0_0_0694_out {Type IO LastRead 2 FirstWrite 1}
		p_0_1_0_0_0690_out {Type IO LastRead 2 FirstWrite 1}
		inpix_0_2_0_0_0_load684_out {Type IO LastRead 2 FirstWrite 1}
		inpix_0_1_0_0_0_load682_out {Type IO LastRead 2 FirstWrite 1}
		inpix_0_0_0_0_0_load680_out {Type IO LastRead 2 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "32771"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "32771"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pixbuf_y_4 { ap_none {  { pixbuf_y_4 in_data 0 10 } } }
	pixbuf_y_3 { ap_none {  { pixbuf_y_3 in_data 0 10 } } }
	pixbuf_y_2 { ap_none {  { pixbuf_y_2 in_data 0 10 } } }
	pixbuf_y_1 { ap_none {  { pixbuf_y_1 in_data 0 10 } } }
	p_0_0_0_0_0495685_lcssa734 { ap_none {  { p_0_0_0_0_0495685_lcssa734 in_data 0 10 } } }
	loopWidth { ap_none {  { loopWidth in_data 0 16 } } }
	stream_upsampled { ap_fifo {  { stream_upsampled_din fifo_data_in 1 30 }  { stream_upsampled_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_upsampled_fifo_cap fifo_update 0 5 }  { stream_upsampled_full_n fifo_status 0 1 }  { stream_upsampled_write fifo_port_we 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 1 } } }
	select_ln1677 { ap_none {  { select_ln1677 in_data 0 3 } } }
	WidthIn_load { ap_stable {  { WidthIn_load in_data 0 16 } } }
	stream_in { ap_fifo {  { stream_in_dout fifo_data_in 0 30 }  { stream_in_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_in_fifo_cap fifo_update 0 5 }  { stream_in_empty_n fifo_status 0 1 }  { stream_in_read fifo_port_we 1 1 } } }
	pixbuf_y_9_out { ap_vld {  { pixbuf_y_9_out out_data 1 10 }  { pixbuf_y_9_out_ap_vld out_vld 1 1 } } }
	pixbuf_y_8_out { ap_vld {  { pixbuf_y_8_out out_data 1 10 }  { pixbuf_y_8_out_ap_vld out_vld 1 1 } } }
	pixbuf_y_7_out { ap_vld {  { pixbuf_y_7_out out_data 1 10 }  { pixbuf_y_7_out_ap_vld out_vld 1 1 } } }
	pixbuf_y_6_out { ap_vld {  { pixbuf_y_6_out out_data 1 10 }  { pixbuf_y_6_out_ap_vld out_vld 1 1 } } }
	pixbuf_y_5_out { ap_ovld {  { pixbuf_y_5_out_i in_data 0 10 }  { pixbuf_y_5_out_o out_data 1 10 }  { pixbuf_y_5_out_o_ap_vld out_vld 1 1 } } }
	p_0_2_0_0_0691719_out { ap_ovld {  { p_0_2_0_0_0691719_out_i in_data 0 10 }  { p_0_2_0_0_0691719_out_o out_data 1 10 }  { p_0_2_0_0_0691719_out_o_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_0687715_out { ap_ovld {  { p_0_1_0_0_0687715_out_i in_data 0 10 }  { p_0_1_0_0_0687715_out_o out_data 1 10 }  { p_0_1_0_0_0687715_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0_2712_out { ap_ovld {  { p_0_0_0_0_0_2712_out_i in_data 0 10 }  { p_0_0_0_0_0_2712_out_o out_data 1 10 }  { p_0_0_0_0_0_2712_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0487_2709_out { ap_ovld {  { p_0_0_0_0_0487_2709_out_i in_data 0 10 }  { p_0_0_0_0_0487_2709_out_o out_data 1 10 }  { p_0_0_0_0_0487_2709_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0_1703_out { ap_ovld {  { p_0_0_0_0_0_1703_out_i in_data 0 10 }  { p_0_0_0_0_0_1703_out_o out_data 1 10 }  { p_0_0_0_0_0_1703_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0487_1697_out { ap_ovld {  { p_0_0_0_0_0487_1697_out_i in_data 0 10 }  { p_0_0_0_0_0487_1697_out_o out_data 1 10 }  { p_0_0_0_0_0487_1697_out_o_ap_vld out_vld 1 1 } } }
	p_0_2_0_0_0694_out { ap_ovld {  { p_0_2_0_0_0694_out_i in_data 0 10 }  { p_0_2_0_0_0694_out_o out_data 1 10 }  { p_0_2_0_0_0694_out_o_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_0690_out { ap_ovld {  { p_0_1_0_0_0690_out_i in_data 0 10 }  { p_0_1_0_0_0690_out_o out_data 1 10 }  { p_0_1_0_0_0690_out_o_ap_vld out_vld 1 1 } } }
	inpix_0_2_0_0_0_load684_out { ap_ovld {  { inpix_0_2_0_0_0_load684_out_i in_data 0 10 }  { inpix_0_2_0_0_0_load684_out_o out_data 1 10 }  { inpix_0_2_0_0_0_load684_out_o_ap_vld out_vld 1 1 } } }
	inpix_0_1_0_0_0_load682_out { ap_ovld {  { inpix_0_1_0_0_0_load682_out_i in_data 0 10 }  { inpix_0_1_0_0_0_load682_out_o out_data 1 10 }  { inpix_0_1_0_0_0_load682_out_o_ap_vld out_vld 1 1 } } }
	inpix_0_0_0_0_0_load680_out { ap_ovld {  { inpix_0_0_0_0_0_load680_out_i in_data 0 10 }  { inpix_0_0_0_0_0_load680_out_o out_data 1 10 }  { inpix_0_0_0_0_0_load680_out_o_ap_vld out_vld 1 1 } } }
}
