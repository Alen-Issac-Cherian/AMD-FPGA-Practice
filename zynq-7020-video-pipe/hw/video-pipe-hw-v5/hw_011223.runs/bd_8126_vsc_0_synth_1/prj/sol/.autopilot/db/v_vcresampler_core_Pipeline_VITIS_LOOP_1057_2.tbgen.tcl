set moduleName v_vcresampler_core_Pipeline_VITIS_LOOP_1057_2
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
set C_modelName {v_vcresampler_core_Pipeline_VITIS_LOOP_1057_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ loopWidth int 11 regular  }
	{ SrcYUV422 int 30 regular {fifo 1 volatile }  }
	{ icmp_ln1040 int 1 regular  }
	{ cmp287 int 1 regular  }
	{ empty_25 int 1 regular  }
	{ empty int 1 regular  }
	{ cmp104 int 1 regular  }
	{ cmp36 int 1 regular  }
	{ linebuf_y int 10 regular {array 1920 { 0 1 } 1 1 }  }
	{ linebuf_y_1 int 10 regular {array 1920 { 2 3 } 1 1 }  }
	{ linebuf_c int 10 regular {array 1920 { 0 1 } 1 1 }  }
	{ linebuf_c_1 int 10 regular {array 1920 { 0 1 } 1 1 }  }
	{ linebuf_c_2 int 10 regular {array 1920 { 1 3 } 1 1 }  }
	{ spec_select int 1 regular  }
	{ SrcYUV int 30 regular {fifo 0 volatile }  }
	{ p_out int 10 regular {pointer 2}  }
	{ p_0_1_0_0_0578_out int 10 regular {pointer 2}  }
	{ p_0_0371576_out int 10 regular {pointer 2}  }
	{ pix_0_2_0_0_0_load574_out int 10 regular {pointer 2}  }
	{ pix_0_1_0_0_0_load572_out int 10 regular {pointer 2}  }
	{ pix_0_0_0_0_0_load570_out int 10 regular {pointer 2}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "SrcYUV422", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "icmp_ln1040", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp287", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_25", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp104", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp36", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_y", "interface" : "memory", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "linebuf_y_1", "interface" : "memory", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "linebuf_c", "interface" : "memory", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "linebuf_c_1", "interface" : "memory", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "linebuf_c_2", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "spec_select", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SrcYUV", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_1_0_0_0578_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0371576_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "pix_0_2_0_0_0_load574_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "pix_0_1_0_0_0_load572_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "pix_0_0_0_0_0_load570_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 71
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ SrcYUV_dout sc_in sc_lv 30 signal 14 } 
	{ SrcYUV_num_data_valid sc_in sc_lv 5 signal 14 } 
	{ SrcYUV_fifo_cap sc_in sc_lv 5 signal 14 } 
	{ SrcYUV_empty_n sc_in sc_logic 1 signal 14 } 
	{ SrcYUV_read sc_out sc_logic 1 signal 14 } 
	{ SrcYUV422_din sc_out sc_lv 30 signal 1 } 
	{ SrcYUV422_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ SrcYUV422_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ SrcYUV422_full_n sc_in sc_logic 1 signal 1 } 
	{ SrcYUV422_write sc_out sc_logic 1 signal 1 } 
	{ loopWidth sc_in sc_lv 11 signal 0 } 
	{ icmp_ln1040 sc_in sc_lv 1 signal 2 } 
	{ cmp287 sc_in sc_lv 1 signal 3 } 
	{ empty_25 sc_in sc_lv 1 signal 4 } 
	{ empty sc_in sc_lv 1 signal 5 } 
	{ cmp104 sc_in sc_lv 1 signal 6 } 
	{ cmp36 sc_in sc_lv 1 signal 7 } 
	{ linebuf_y_address0 sc_out sc_lv 11 signal 8 } 
	{ linebuf_y_ce0 sc_out sc_logic 1 signal 8 } 
	{ linebuf_y_we0 sc_out sc_logic 1 signal 8 } 
	{ linebuf_y_d0 sc_out sc_lv 10 signal 8 } 
	{ linebuf_y_address1 sc_out sc_lv 11 signal 8 } 
	{ linebuf_y_ce1 sc_out sc_logic 1 signal 8 } 
	{ linebuf_y_q1 sc_in sc_lv 10 signal 8 } 
	{ linebuf_y_1_address0 sc_out sc_lv 11 signal 9 } 
	{ linebuf_y_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ linebuf_y_1_we0 sc_out sc_logic 1 signal 9 } 
	{ linebuf_y_1_d0 sc_out sc_lv 10 signal 9 } 
	{ linebuf_y_1_q0 sc_in sc_lv 10 signal 9 } 
	{ linebuf_c_address0 sc_out sc_lv 11 signal 10 } 
	{ linebuf_c_ce0 sc_out sc_logic 1 signal 10 } 
	{ linebuf_c_we0 sc_out sc_logic 1 signal 10 } 
	{ linebuf_c_d0 sc_out sc_lv 10 signal 10 } 
	{ linebuf_c_address1 sc_out sc_lv 11 signal 10 } 
	{ linebuf_c_ce1 sc_out sc_logic 1 signal 10 } 
	{ linebuf_c_q1 sc_in sc_lv 10 signal 10 } 
	{ linebuf_c_1_address0 sc_out sc_lv 11 signal 11 } 
	{ linebuf_c_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ linebuf_c_1_we0 sc_out sc_logic 1 signal 11 } 
	{ linebuf_c_1_d0 sc_out sc_lv 10 signal 11 } 
	{ linebuf_c_1_address1 sc_out sc_lv 11 signal 11 } 
	{ linebuf_c_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ linebuf_c_1_q1 sc_in sc_lv 10 signal 11 } 
	{ linebuf_c_2_address0 sc_out sc_lv 11 signal 12 } 
	{ linebuf_c_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ linebuf_c_2_q0 sc_in sc_lv 10 signal 12 } 
	{ spec_select sc_in sc_lv 1 signal 13 } 
	{ p_out_i sc_in sc_lv 10 signal 15 } 
	{ p_out_o sc_out sc_lv 10 signal 15 } 
	{ p_out_o_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ p_0_1_0_0_0578_out_i sc_in sc_lv 10 signal 16 } 
	{ p_0_1_0_0_0578_out_o sc_out sc_lv 10 signal 16 } 
	{ p_0_1_0_0_0578_out_o_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ p_0_0371576_out_i sc_in sc_lv 10 signal 17 } 
	{ p_0_0371576_out_o sc_out sc_lv 10 signal 17 } 
	{ p_0_0371576_out_o_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ pix_0_2_0_0_0_load574_out_i sc_in sc_lv 10 signal 18 } 
	{ pix_0_2_0_0_0_load574_out_o sc_out sc_lv 10 signal 18 } 
	{ pix_0_2_0_0_0_load574_out_o_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ pix_0_1_0_0_0_load572_out_i sc_in sc_lv 10 signal 19 } 
	{ pix_0_1_0_0_0_load572_out_o sc_out sc_lv 10 signal 19 } 
	{ pix_0_1_0_0_0_load572_out_o_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ pix_0_0_0_0_0_load570_out_i sc_in sc_lv 10 signal 20 } 
	{ pix_0_0_0_0_0_load570_out_o sc_out sc_lv 10 signal 20 } 
	{ pix_0_0_0_0_0_load570_out_o_ap_vld sc_out sc_logic 1 outvld 20 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "SrcYUV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "SrcYUV", "role": "dout" }} , 
 	{ "name": "SrcYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV", "role": "num_data_valid" }} , 
 	{ "name": "SrcYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV", "role": "fifo_cap" }} , 
 	{ "name": "SrcYUV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV", "role": "empty_n" }} , 
 	{ "name": "SrcYUV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV", "role": "read" }} , 
 	{ "name": "SrcYUV422_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "din" }} , 
 	{ "name": "SrcYUV422_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "num_data_valid" }} , 
 	{ "name": "SrcYUV422_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "fifo_cap" }} , 
 	{ "name": "SrcYUV422_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "full_n" }} , 
 	{ "name": "SrcYUV422_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "write" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "icmp_ln1040", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln1040", "role": "default" }} , 
 	{ "name": "cmp287", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp287", "role": "default" }} , 
 	{ "name": "empty_25", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_25", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "cmp104", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp104", "role": "default" }} , 
 	{ "name": "cmp36", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp36", "role": "default" }} , 
 	{ "name": "linebuf_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_y", "role": "address0" }} , 
 	{ "name": "linebuf_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_y", "role": "ce0" }} , 
 	{ "name": "linebuf_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_y", "role": "we0" }} , 
 	{ "name": "linebuf_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_y", "role": "d0" }} , 
 	{ "name": "linebuf_y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_y", "role": "address1" }} , 
 	{ "name": "linebuf_y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_y", "role": "ce1" }} , 
 	{ "name": "linebuf_y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_y", "role": "q1" }} , 
 	{ "name": "linebuf_y_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_y_1", "role": "address0" }} , 
 	{ "name": "linebuf_y_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_y_1", "role": "ce0" }} , 
 	{ "name": "linebuf_y_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_y_1", "role": "we0" }} , 
 	{ "name": "linebuf_y_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_y_1", "role": "d0" }} , 
 	{ "name": "linebuf_y_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_y_1", "role": "q0" }} , 
 	{ "name": "linebuf_c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c", "role": "address0" }} , 
 	{ "name": "linebuf_c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c", "role": "ce0" }} , 
 	{ "name": "linebuf_c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c", "role": "we0" }} , 
 	{ "name": "linebuf_c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_c", "role": "d0" }} , 
 	{ "name": "linebuf_c_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c", "role": "address1" }} , 
 	{ "name": "linebuf_c_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c", "role": "ce1" }} , 
 	{ "name": "linebuf_c_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_c", "role": "q1" }} , 
 	{ "name": "linebuf_c_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c_1", "role": "address0" }} , 
 	{ "name": "linebuf_c_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_1", "role": "ce0" }} , 
 	{ "name": "linebuf_c_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_1", "role": "we0" }} , 
 	{ "name": "linebuf_c_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_c_1", "role": "d0" }} , 
 	{ "name": "linebuf_c_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c_1", "role": "address1" }} , 
 	{ "name": "linebuf_c_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_1", "role": "ce1" }} , 
 	{ "name": "linebuf_c_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_c_1", "role": "q1" }} , 
 	{ "name": "linebuf_c_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c_2", "role": "address0" }} , 
 	{ "name": "linebuf_c_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_2", "role": "ce0" }} , 
 	{ "name": "linebuf_c_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_c_2", "role": "q0" }} , 
 	{ "name": "spec_select", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select", "role": "default" }} , 
 	{ "name": "p_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out", "role": "i" }} , 
 	{ "name": "p_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out", "role": "o" }} , 
 	{ "name": "p_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_1_0_0_0578_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_0578_out", "role": "i" }} , 
 	{ "name": "p_0_1_0_0_0578_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_0578_out", "role": "o" }} , 
 	{ "name": "p_0_1_0_0_0578_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_0578_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0371576_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0371576_out", "role": "i" }} , 
 	{ "name": "p_0_0371576_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0371576_out", "role": "o" }} , 
 	{ "name": "p_0_0371576_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0371576_out", "role": "o_ap_vld" }} , 
 	{ "name": "pix_0_2_0_0_0_load574_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_0_2_0_0_0_load574_out", "role": "i" }} , 
 	{ "name": "pix_0_2_0_0_0_load574_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_0_2_0_0_0_load574_out", "role": "o" }} , 
 	{ "name": "pix_0_2_0_0_0_load574_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_0_2_0_0_0_load574_out", "role": "o_ap_vld" }} , 
 	{ "name": "pix_0_1_0_0_0_load572_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_0_1_0_0_0_load572_out", "role": "i" }} , 
 	{ "name": "pix_0_1_0_0_0_load572_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_0_1_0_0_0_load572_out", "role": "o" }} , 
 	{ "name": "pix_0_1_0_0_0_load572_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_0_1_0_0_0_load572_out", "role": "o_ap_vld" }} , 
 	{ "name": "pix_0_0_0_0_0_load570_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_0_0_0_0_0_load570_out", "role": "i" }} , 
 	{ "name": "pix_0_0_0_0_0_load570_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_0_0_0_0_0_load570_out", "role": "o" }} , 
 	{ "name": "pix_0_0_0_0_0_load570_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_0_0_0_0_0_load570_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_vcresampler_core_Pipeline_VITIS_LOOP_1057_2",
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
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "SrcYUV422", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "SrcYUV422_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_ln1040", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp287", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp104", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp36", "Type" : "None", "Direction" : "I"},
			{"Name" : "linebuf_y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_y_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_c_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "spec_select", "Type" : "None", "Direction" : "I"},
			{"Name" : "SrcYUV", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "SrcYUV_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0578_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0371576_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pix_0_2_0_0_0_load574_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pix_0_1_0_0_0_load572_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pix_0_0_0_0_0_load570_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1057_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	v_vcresampler_core_Pipeline_VITIS_LOOP_1057_2 {
		loopWidth {Type I LastRead 0 FirstWrite -1}
		SrcYUV422 {Type O LastRead -1 FirstWrite 2}
		icmp_ln1040 {Type I LastRead 0 FirstWrite -1}
		cmp287 {Type I LastRead 0 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		cmp104 {Type I LastRead 0 FirstWrite -1}
		cmp36 {Type I LastRead 0 FirstWrite -1}
		linebuf_y {Type IO LastRead 0 FirstWrite 2}
		linebuf_y_1 {Type IO LastRead 2 FirstWrite 2}
		linebuf_c {Type IO LastRead 0 FirstWrite 2}
		linebuf_c_1 {Type IO LastRead 0 FirstWrite 3}
		linebuf_c_2 {Type I LastRead 0 FirstWrite -1}
		spec_select {Type I LastRead 0 FirstWrite -1}
		SrcYUV {Type I LastRead 1 FirstWrite -1}
		p_out {Type IO LastRead 2 FirstWrite 2}
		p_0_1_0_0_0578_out {Type IO LastRead 2 FirstWrite 1}
		p_0_0371576_out {Type IO LastRead 2 FirstWrite 1}
		pix_0_2_0_0_0_load574_out {Type IO LastRead 2 FirstWrite 1}
		pix_0_1_0_0_0_load572_out {Type IO LastRead 2 FirstWrite 1}
		pix_0_0_0_0_0_load570_out {Type IO LastRead 2 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "32772"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "32772"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	loopWidth { ap_none {  { loopWidth in_data 0 11 } } }
	SrcYUV422 { ap_fifo {  { SrcYUV422_din fifo_data_in 1 30 }  { SrcYUV422_num_data_valid fifo_status_num_data_valid 0 5 }  { SrcYUV422_fifo_cap fifo_update 0 5 }  { SrcYUV422_full_n fifo_status 0 1 }  { SrcYUV422_write fifo_port_we 1 1 } } }
	icmp_ln1040 { ap_none {  { icmp_ln1040 in_data 0 1 } } }
	cmp287 { ap_none {  { cmp287 in_data 0 1 } } }
	empty_25 { ap_none {  { empty_25 in_data 0 1 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	cmp104 { ap_none {  { cmp104 in_data 0 1 } } }
	cmp36 { ap_none {  { cmp36 in_data 0 1 } } }
	linebuf_y { ap_memory {  { linebuf_y_address0 mem_address 1 11 }  { linebuf_y_ce0 mem_ce 1 1 }  { linebuf_y_we0 mem_we 1 1 }  { linebuf_y_d0 mem_din 1 10 }  { linebuf_y_address1 MemPortADDR2 1 11 }  { linebuf_y_ce1 MemPortCE2 1 1 }  { linebuf_y_q1 MemPortDOUT2 0 10 } } }
	linebuf_y_1 { ap_memory {  { linebuf_y_1_address0 mem_address 1 11 }  { linebuf_y_1_ce0 mem_ce 1 1 }  { linebuf_y_1_we0 mem_we 1 1 }  { linebuf_y_1_d0 mem_din 1 10 }  { linebuf_y_1_q0 in_data 0 10 } } }
	linebuf_c { ap_memory {  { linebuf_c_address0 mem_address 1 11 }  { linebuf_c_ce0 mem_ce 1 1 }  { linebuf_c_we0 mem_we 1 1 }  { linebuf_c_d0 mem_din 1 10 }  { linebuf_c_address1 MemPortADDR2 1 11 }  { linebuf_c_ce1 MemPortCE2 1 1 }  { linebuf_c_q1 in_data 0 10 } } }
	linebuf_c_1 { ap_memory {  { linebuf_c_1_address0 mem_address 1 11 }  { linebuf_c_1_ce0 mem_ce 1 1 }  { linebuf_c_1_we0 mem_we 1 1 }  { linebuf_c_1_d0 mem_din 1 10 }  { linebuf_c_1_address1 MemPortADDR2 1 11 }  { linebuf_c_1_ce1 MemPortCE2 1 1 }  { linebuf_c_1_q1 MemPortDOUT2 0 10 } } }
	linebuf_c_2 { ap_memory {  { linebuf_c_2_address0 mem_address 1 11 }  { linebuf_c_2_ce0 mem_ce 1 1 }  { linebuf_c_2_q0 in_data 0 10 } } }
	spec_select { ap_none {  { spec_select in_data 0 1 } } }
	SrcYUV { ap_fifo {  { SrcYUV_dout fifo_data_in 0 30 }  { SrcYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { SrcYUV_fifo_cap fifo_update 0 5 }  { SrcYUV_empty_n fifo_status 0 1 }  { SrcYUV_read fifo_port_we 1 1 } } }
	p_out { ap_ovld {  { p_out_i in_data 0 10 }  { p_out_o out_data 1 10 }  { p_out_o_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_0578_out { ap_ovld {  { p_0_1_0_0_0578_out_i in_data 0 10 }  { p_0_1_0_0_0578_out_o out_data 1 10 }  { p_0_1_0_0_0578_out_o_ap_vld out_vld 1 1 } } }
	p_0_0371576_out { ap_ovld {  { p_0_0371576_out_i in_data 0 10 }  { p_0_0371576_out_o out_data 1 10 }  { p_0_0371576_out_o_ap_vld out_vld 1 1 } } }
	pix_0_2_0_0_0_load574_out { ap_ovld {  { pix_0_2_0_0_0_load574_out_i in_data 0 10 }  { pix_0_2_0_0_0_load574_out_o out_data 1 10 }  { pix_0_2_0_0_0_load574_out_o_ap_vld out_vld 1 1 } } }
	pix_0_1_0_0_0_load572_out { ap_ovld {  { pix_0_1_0_0_0_load572_out_i in_data 0 10 }  { pix_0_1_0_0_0_load572_out_o out_data 1 10 }  { pix_0_1_0_0_0_load572_out_o_ap_vld out_vld 1 1 } } }
	pix_0_0_0_0_0_load570_out { ap_ovld {  { pix_0_0_0_0_0_load570_out_i in_data 0 10 }  { pix_0_0_0_0_0_load570_out_o out_data 1 10 }  { pix_0_0_0_0_0_load570_out_o_ap_vld out_vld 1 1 } } }
}
