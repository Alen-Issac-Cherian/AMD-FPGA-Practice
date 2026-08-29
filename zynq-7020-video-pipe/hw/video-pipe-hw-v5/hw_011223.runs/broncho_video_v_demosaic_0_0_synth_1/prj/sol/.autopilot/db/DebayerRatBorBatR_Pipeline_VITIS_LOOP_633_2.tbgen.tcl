set moduleName DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2
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
set C_modelName {DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_0_2_0_0_09251529_lcssa1566_i int 10 regular  }
	{ p_0_1_0_0_09241527_lcssa1564_i int 10 regular  }
	{ p_0_0_0_0_09231525_lcssa1562_i int 10 regular  }
	{ p_0_0_0963_115121524_lcssa1560_i int 10 regular  }
	{ p_0_0_0964_115101522_lcssa1558_i int 10 regular  }
	{ p_0_0_0965_115081520_lcssa1556_i int 10 regular  }
	{ p_0_2_0_0_09311517_lcssa1554_i int 10 regular  }
	{ p_0_1_0_0_09301515_lcssa1552_i int 10 regular  }
	{ p_0_0_0_0_09291513_lcssa1550_i int 10 regular  }
	{ p_0_0_0963_21452_lcssa1484_i int 10 regular  }
	{ p_0_0_0964_21449_lcssa1482_i int 10 regular  }
	{ p_0_0_0965_21446_lcssa1480_i int 10 regular  }
	{ p_0_0_09631422_lcssa1472_i int 10 regular  }
	{ p_0_0_09641419_lcssa1470_i int 10 regular  }
	{ p_0_0_09651416_lcssa1468_i int 10 regular  }
	{ loopWidth_i int 9 regular {ap_stable 0} }
	{ cmp558_i int 1 regular  }
	{ empty_51 int 1 regular  }
	{ xor_i int 15 regular  }
	{ lineBuffer_1_i int 30 regular {array 401 { 0 1 } 1 1 }  }
	{ lineBuffer_i int 30 regular {array 401 { 0 1 } 1 1 }  }
	{ empty int 9 regular {ap_stable 0} }
	{ cmp59_i int 1 regular  }
	{ imgG int 30 regular {fifo 0 volatile }  }
	{ red_i int 1 regular  }
	{ imgRB int 30 regular {fifo 1 volatile }  }
	{ p_0_2_0_0_09251530_i_out int 10 regular {pointer 1}  }
	{ p_0_1_0_0_09241528_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0_0_09231526_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0963_115121523_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0964_115101521_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0965_115081519_i_out int 10 regular {pointer 1}  }
	{ p_0_2_0_0_09311518_i_out int 10 regular {pointer 1}  }
	{ p_0_1_0_0_09301516_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0_0_09291514_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0963_21451_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0964_21448_i_out int 10 regular {pointer 1}  }
	{ p_0_0_0965_21445_i_out int 10 regular {pointer 1}  }
	{ p_0_0_09631421_i_out int 10 regular {pointer 1}  }
	{ p_0_0_09641418_i_out int 10 regular {pointer 1}  }
	{ p_0_0_09651415_i_out int 10 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "p_0_2_0_0_09251529_lcssa1566_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_1_0_0_09241527_lcssa1564_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0_0_09231525_lcssa1562_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0963_115121524_lcssa1560_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0964_115101522_lcssa1558_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0965_115081520_lcssa1556_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_2_0_0_09311517_lcssa1554_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_1_0_0_09301515_lcssa1552_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0_0_09291513_lcssa1550_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0963_21452_lcssa1484_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0964_21449_lcssa1482_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0965_21446_lcssa1480_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_09631422_lcssa1472_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_09641419_lcssa1470_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_09651416_lcssa1468_i", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "loopWidth_i", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "cmp558_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_51", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "xor_i", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "lineBuffer_1_i", "interface" : "memory", "bitwidth" : 30, "direction" : "READWRITE"} , 
 	{ "Name" : "lineBuffer_i", "interface" : "memory", "bitwidth" : 30, "direction" : "READWRITE"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "cmp59_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "imgG", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "red_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "imgRB", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_2_0_0_09251530_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_1_0_0_09241528_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0_0_09231526_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0963_115121523_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0964_115101521_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0965_115081519_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_2_0_0_09311518_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_1_0_0_09301516_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0_0_09291514_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0963_21451_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0964_21448_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0965_21445_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_09631421_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_09641418_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_09651415_i_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 82
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgG_dout sc_in sc_lv 30 signal 23 } 
	{ imgG_num_data_valid sc_in sc_lv 3 signal 23 } 
	{ imgG_fifo_cap sc_in sc_lv 3 signal 23 } 
	{ imgG_empty_n sc_in sc_logic 1 signal 23 } 
	{ imgG_read sc_out sc_logic 1 signal 23 } 
	{ imgRB_din sc_out sc_lv 30 signal 25 } 
	{ imgRB_num_data_valid sc_in sc_lv 3 signal 25 } 
	{ imgRB_fifo_cap sc_in sc_lv 3 signal 25 } 
	{ imgRB_full_n sc_in sc_logic 1 signal 25 } 
	{ imgRB_write sc_out sc_logic 1 signal 25 } 
	{ p_0_2_0_0_09251529_lcssa1566_i sc_in sc_lv 10 signal 0 } 
	{ p_0_1_0_0_09241527_lcssa1564_i sc_in sc_lv 10 signal 1 } 
	{ p_0_0_0_0_09231525_lcssa1562_i sc_in sc_lv 10 signal 2 } 
	{ p_0_0_0963_115121524_lcssa1560_i sc_in sc_lv 10 signal 3 } 
	{ p_0_0_0964_115101522_lcssa1558_i sc_in sc_lv 10 signal 4 } 
	{ p_0_0_0965_115081520_lcssa1556_i sc_in sc_lv 10 signal 5 } 
	{ p_0_2_0_0_09311517_lcssa1554_i sc_in sc_lv 10 signal 6 } 
	{ p_0_1_0_0_09301515_lcssa1552_i sc_in sc_lv 10 signal 7 } 
	{ p_0_0_0_0_09291513_lcssa1550_i sc_in sc_lv 10 signal 8 } 
	{ p_0_0_0963_21452_lcssa1484_i sc_in sc_lv 10 signal 9 } 
	{ p_0_0_0964_21449_lcssa1482_i sc_in sc_lv 10 signal 10 } 
	{ p_0_0_0965_21446_lcssa1480_i sc_in sc_lv 10 signal 11 } 
	{ p_0_0_09631422_lcssa1472_i sc_in sc_lv 10 signal 12 } 
	{ p_0_0_09641419_lcssa1470_i sc_in sc_lv 10 signal 13 } 
	{ p_0_0_09651416_lcssa1468_i sc_in sc_lv 10 signal 14 } 
	{ loopWidth_i sc_in sc_lv 9 signal 15 } 
	{ cmp558_i sc_in sc_lv 1 signal 16 } 
	{ empty_51 sc_in sc_lv 1 signal 17 } 
	{ xor_i sc_in sc_lv 15 signal 18 } 
	{ lineBuffer_1_i_address0 sc_out sc_lv 9 signal 19 } 
	{ lineBuffer_1_i_ce0 sc_out sc_logic 1 signal 19 } 
	{ lineBuffer_1_i_we0 sc_out sc_logic 1 signal 19 } 
	{ lineBuffer_1_i_d0 sc_out sc_lv 30 signal 19 } 
	{ lineBuffer_1_i_address1 sc_out sc_lv 9 signal 19 } 
	{ lineBuffer_1_i_ce1 sc_out sc_logic 1 signal 19 } 
	{ lineBuffer_1_i_q1 sc_in sc_lv 30 signal 19 } 
	{ lineBuffer_i_address0 sc_out sc_lv 9 signal 20 } 
	{ lineBuffer_i_ce0 sc_out sc_logic 1 signal 20 } 
	{ lineBuffer_i_we0 sc_out sc_logic 1 signal 20 } 
	{ lineBuffer_i_d0 sc_out sc_lv 30 signal 20 } 
	{ lineBuffer_i_address1 sc_out sc_lv 9 signal 20 } 
	{ lineBuffer_i_ce1 sc_out sc_logic 1 signal 20 } 
	{ lineBuffer_i_q1 sc_in sc_lv 30 signal 20 } 
	{ empty sc_in sc_lv 9 signal 21 } 
	{ cmp59_i sc_in sc_lv 1 signal 22 } 
	{ red_i sc_in sc_lv 1 signal 24 } 
	{ p_0_2_0_0_09251530_i_out sc_out sc_lv 10 signal 26 } 
	{ p_0_2_0_0_09251530_i_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ p_0_1_0_0_09241528_i_out sc_out sc_lv 10 signal 27 } 
	{ p_0_1_0_0_09241528_i_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ p_0_0_0_0_09231526_i_out sc_out sc_lv 10 signal 28 } 
	{ p_0_0_0_0_09231526_i_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ p_0_0_0963_115121523_i_out sc_out sc_lv 10 signal 29 } 
	{ p_0_0_0963_115121523_i_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ p_0_0_0964_115101521_i_out sc_out sc_lv 10 signal 30 } 
	{ p_0_0_0964_115101521_i_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ p_0_0_0965_115081519_i_out sc_out sc_lv 10 signal 31 } 
	{ p_0_0_0965_115081519_i_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ p_0_2_0_0_09311518_i_out sc_out sc_lv 10 signal 32 } 
	{ p_0_2_0_0_09311518_i_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ p_0_1_0_0_09301516_i_out sc_out sc_lv 10 signal 33 } 
	{ p_0_1_0_0_09301516_i_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ p_0_0_0_0_09291514_i_out sc_out sc_lv 10 signal 34 } 
	{ p_0_0_0_0_09291514_i_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ p_0_0_0963_21451_i_out sc_out sc_lv 10 signal 35 } 
	{ p_0_0_0963_21451_i_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ p_0_0_0964_21448_i_out sc_out sc_lv 10 signal 36 } 
	{ p_0_0_0964_21448_i_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ p_0_0_0965_21445_i_out sc_out sc_lv 10 signal 37 } 
	{ p_0_0_0965_21445_i_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ p_0_0_09631421_i_out sc_out sc_lv 10 signal 38 } 
	{ p_0_0_09631421_i_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ p_0_0_09641418_i_out sc_out sc_lv 10 signal 39 } 
	{ p_0_0_09641418_i_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ p_0_0_09651415_i_out sc_out sc_lv 10 signal 40 } 
	{ p_0_0_09651415_i_out_ap_vld sc_out sc_logic 1 outvld 40 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgG_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgG", "role": "dout" }} , 
 	{ "name": "imgG_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgG", "role": "num_data_valid" }} , 
 	{ "name": "imgG_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgG", "role": "fifo_cap" }} , 
 	{ "name": "imgG_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgG", "role": "empty_n" }} , 
 	{ "name": "imgG_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgG", "role": "read" }} , 
 	{ "name": "imgRB_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "imgRB", "role": "din" }} , 
 	{ "name": "imgRB_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgRB", "role": "num_data_valid" }} , 
 	{ "name": "imgRB_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgRB", "role": "fifo_cap" }} , 
 	{ "name": "imgRB_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRB", "role": "full_n" }} , 
 	{ "name": "imgRB_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgRB", "role": "write" }} , 
 	{ "name": "p_0_2_0_0_09251529_lcssa1566_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_09251529_lcssa1566_i", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_09241527_lcssa1564_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_09241527_lcssa1564_i", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_09231525_lcssa1562_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_09231525_lcssa1562_i", "role": "default" }} , 
 	{ "name": "p_0_0_0963_115121524_lcssa1560_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0963_115121524_lcssa1560_i", "role": "default" }} , 
 	{ "name": "p_0_0_0964_115101522_lcssa1558_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0964_115101522_lcssa1558_i", "role": "default" }} , 
 	{ "name": "p_0_0_0965_115081520_lcssa1556_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0965_115081520_lcssa1556_i", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_09311517_lcssa1554_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_09311517_lcssa1554_i", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_09301515_lcssa1552_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_09301515_lcssa1552_i", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_09291513_lcssa1550_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_09291513_lcssa1550_i", "role": "default" }} , 
 	{ "name": "p_0_0_0963_21452_lcssa1484_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0963_21452_lcssa1484_i", "role": "default" }} , 
 	{ "name": "p_0_0_0964_21449_lcssa1482_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0964_21449_lcssa1482_i", "role": "default" }} , 
 	{ "name": "p_0_0_0965_21446_lcssa1480_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0965_21446_lcssa1480_i", "role": "default" }} , 
 	{ "name": "p_0_0_09631422_lcssa1472_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_09631422_lcssa1472_i", "role": "default" }} , 
 	{ "name": "p_0_0_09641419_lcssa1470_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_09641419_lcssa1470_i", "role": "default" }} , 
 	{ "name": "p_0_0_09651416_lcssa1468_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_09651416_lcssa1468_i", "role": "default" }} , 
 	{ "name": "loopWidth_i", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "loopWidth_i", "role": "default" }} , 
 	{ "name": "cmp558_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp558_i", "role": "default" }} , 
 	{ "name": "empty_51", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_51", "role": "default" }} , 
 	{ "name": "xor_i", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "xor_i", "role": "default" }} , 
 	{ "name": "lineBuffer_1_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_1_i", "role": "address0" }} , 
 	{ "name": "lineBuffer_1_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_1_i", "role": "ce0" }} , 
 	{ "name": "lineBuffer_1_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_1_i", "role": "we0" }} , 
 	{ "name": "lineBuffer_1_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "lineBuffer_1_i", "role": "d0" }} , 
 	{ "name": "lineBuffer_1_i_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_1_i", "role": "address1" }} , 
 	{ "name": "lineBuffer_1_i_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_1_i", "role": "ce1" }} , 
 	{ "name": "lineBuffer_1_i_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "lineBuffer_1_i", "role": "q1" }} , 
 	{ "name": "lineBuffer_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_i", "role": "address0" }} , 
 	{ "name": "lineBuffer_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_i", "role": "ce0" }} , 
 	{ "name": "lineBuffer_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_i", "role": "we0" }} , 
 	{ "name": "lineBuffer_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "lineBuffer_i", "role": "d0" }} , 
 	{ "name": "lineBuffer_i_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lineBuffer_i", "role": "address1" }} , 
 	{ "name": "lineBuffer_i_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lineBuffer_i", "role": "ce1" }} , 
 	{ "name": "lineBuffer_i_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "lineBuffer_i", "role": "q1" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "cmp59_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp59_i", "role": "default" }} , 
 	{ "name": "red_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "red_i", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_09251530_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_09251530_i_out", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_09251530_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_2_0_0_09251530_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_1_0_0_09241528_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_09241528_i_out", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_09241528_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_09241528_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0_0_09231526_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_09231526_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_09231526_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_09231526_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0963_115121523_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0963_115121523_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0963_115121523_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0963_115121523_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0964_115101521_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0964_115101521_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0964_115101521_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0964_115101521_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0965_115081519_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0965_115081519_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0965_115081519_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0965_115081519_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_2_0_0_09311518_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_2_0_0_09311518_i_out", "role": "default" }} , 
 	{ "name": "p_0_2_0_0_09311518_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_2_0_0_09311518_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_1_0_0_09301516_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_1_0_0_09301516_i_out", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_09301516_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_09301516_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0_0_09291514_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_09291514_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_09291514_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_09291514_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0963_21451_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0963_21451_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0963_21451_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0963_21451_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0964_21448_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0964_21448_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0964_21448_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0964_21448_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0965_21445_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0965_21445_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_0965_21445_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0965_21445_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_09631421_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_09631421_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_09631421_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_09631421_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_09641418_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_09641418_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_09641418_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_09641418_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_09651415_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_09651415_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_09651415_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_09651415_i_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		p_0_0_09651415_i_out {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "411"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "411"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_0_2_0_0_09251529_lcssa1566_i { ap_none {  { p_0_2_0_0_09251529_lcssa1566_i in_data 0 10 } } }
	p_0_1_0_0_09241527_lcssa1564_i { ap_none {  { p_0_1_0_0_09241527_lcssa1564_i in_data 0 10 } } }
	p_0_0_0_0_09231525_lcssa1562_i { ap_none {  { p_0_0_0_0_09231525_lcssa1562_i in_data 0 10 } } }
	p_0_0_0963_115121524_lcssa1560_i { ap_none {  { p_0_0_0963_115121524_lcssa1560_i in_data 0 10 } } }
	p_0_0_0964_115101522_lcssa1558_i { ap_none {  { p_0_0_0964_115101522_lcssa1558_i in_data 0 10 } } }
	p_0_0_0965_115081520_lcssa1556_i { ap_none {  { p_0_0_0965_115081520_lcssa1556_i in_data 0 10 } } }
	p_0_2_0_0_09311517_lcssa1554_i { ap_none {  { p_0_2_0_0_09311517_lcssa1554_i in_data 0 10 } } }
	p_0_1_0_0_09301515_lcssa1552_i { ap_none {  { p_0_1_0_0_09301515_lcssa1552_i in_data 0 10 } } }
	p_0_0_0_0_09291513_lcssa1550_i { ap_none {  { p_0_0_0_0_09291513_lcssa1550_i in_data 0 10 } } }
	p_0_0_0963_21452_lcssa1484_i { ap_none {  { p_0_0_0963_21452_lcssa1484_i in_data 0 10 } } }
	p_0_0_0964_21449_lcssa1482_i { ap_none {  { p_0_0_0964_21449_lcssa1482_i in_data 0 10 } } }
	p_0_0_0965_21446_lcssa1480_i { ap_none {  { p_0_0_0965_21446_lcssa1480_i in_data 0 10 } } }
	p_0_0_09631422_lcssa1472_i { ap_none {  { p_0_0_09631422_lcssa1472_i in_data 0 10 } } }
	p_0_0_09641419_lcssa1470_i { ap_none {  { p_0_0_09641419_lcssa1470_i in_data 0 10 } } }
	p_0_0_09651416_lcssa1468_i { ap_none {  { p_0_0_09651416_lcssa1468_i in_data 0 10 } } }
	loopWidth_i { ap_stable {  { loopWidth_i in_data 0 9 } } }
	cmp558_i { ap_none {  { cmp558_i in_data 0 1 } } }
	empty_51 { ap_none {  { empty_51 in_data 0 1 } } }
	xor_i { ap_none {  { xor_i in_data 0 15 } } }
	lineBuffer_1_i { ap_memory {  { lineBuffer_1_i_address0 mem_address 1 9 }  { lineBuffer_1_i_ce0 mem_ce 1 1 }  { lineBuffer_1_i_we0 mem_we 1 1 }  { lineBuffer_1_i_d0 mem_din 1 30 }  { lineBuffer_1_i_address1 MemPortADDR2 1 9 }  { lineBuffer_1_i_ce1 MemPortCE2 1 1 }  { lineBuffer_1_i_q1 in_data 0 30 } } }
	lineBuffer_i { ap_memory {  { lineBuffer_i_address0 mem_address 1 9 }  { lineBuffer_i_ce0 mem_ce 1 1 }  { lineBuffer_i_we0 mem_we 1 1 }  { lineBuffer_i_d0 mem_din 1 30 }  { lineBuffer_i_address1 MemPortADDR2 1 9 }  { lineBuffer_i_ce1 MemPortCE2 1 1 }  { lineBuffer_i_q1 in_data 0 30 } } }
	empty { ap_stable {  { empty in_data 0 9 } } }
	cmp59_i { ap_none {  { cmp59_i in_data 0 1 } } }
	imgG { ap_fifo {  { imgG_dout fifo_data_in 0 30 }  { imgG_num_data_valid fifo_status_num_data_valid 0 3 }  { imgG_fifo_cap fifo_update 0 3 }  { imgG_empty_n fifo_status 0 1 }  { imgG_read fifo_port_we 1 1 } } }
	red_i { ap_none {  { red_i in_data 0 1 } } }
	imgRB { ap_fifo {  { imgRB_din fifo_data_in 1 30 }  { imgRB_num_data_valid fifo_status_num_data_valid 0 3 }  { imgRB_fifo_cap fifo_update 0 3 }  { imgRB_full_n fifo_status 0 1 }  { imgRB_write fifo_port_we 1 1 } } }
	p_0_2_0_0_09251530_i_out { ap_vld {  { p_0_2_0_0_09251530_i_out out_data 1 10 }  { p_0_2_0_0_09251530_i_out_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_09241528_i_out { ap_vld {  { p_0_1_0_0_09241528_i_out out_data 1 10 }  { p_0_1_0_0_09241528_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_09231526_i_out { ap_vld {  { p_0_0_0_0_09231526_i_out out_data 1 10 }  { p_0_0_0_0_09231526_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0963_115121523_i_out { ap_vld {  { p_0_0_0963_115121523_i_out out_data 1 10 }  { p_0_0_0963_115121523_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0964_115101521_i_out { ap_vld {  { p_0_0_0964_115101521_i_out out_data 1 10 }  { p_0_0_0964_115101521_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0965_115081519_i_out { ap_vld {  { p_0_0_0965_115081519_i_out out_data 1 10 }  { p_0_0_0965_115081519_i_out_ap_vld out_vld 1 1 } } }
	p_0_2_0_0_09311518_i_out { ap_vld {  { p_0_2_0_0_09311518_i_out out_data 1 10 }  { p_0_2_0_0_09311518_i_out_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_09301516_i_out { ap_vld {  { p_0_1_0_0_09301516_i_out out_data 1 10 }  { p_0_1_0_0_09301516_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_09291514_i_out { ap_vld {  { p_0_0_0_0_09291514_i_out out_data 1 10 }  { p_0_0_0_0_09291514_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0963_21451_i_out { ap_vld {  { p_0_0_0963_21451_i_out out_data 1 10 }  { p_0_0_0963_21451_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0964_21448_i_out { ap_vld {  { p_0_0_0964_21448_i_out out_data 1 10 }  { p_0_0_0964_21448_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_0965_21445_i_out { ap_vld {  { p_0_0_0965_21445_i_out out_data 1 10 }  { p_0_0_0965_21445_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_09631421_i_out { ap_vld {  { p_0_0_09631421_i_out out_data 1 10 }  { p_0_0_09631421_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_09641418_i_out { ap_vld {  { p_0_0_09641418_i_out out_data 1 10 }  { p_0_0_09641418_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_09651415_i_out { ap_vld {  { p_0_0_09651415_i_out out_data 1 10 }  { p_0_0_09651415_i_out_ap_vld out_vld 1 1 } } }
}
