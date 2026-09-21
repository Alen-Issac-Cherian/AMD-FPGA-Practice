// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sat Aug 29 15:39:49 2026
// Host        : hp-HP-Pavilion-Laptop-14-ec0xxx running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/hw/video-pipe-hw-v0/video_pipe_hw.gen/sources_1/bd/video_pipe_hw/ip/video_pipe_hw_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_0/bd_0c52_phy_0_stub.v
// Design      : bd_0c52_phy_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* C_CAL_MODE = "FIXED" *) (* C_DIV4_CLK_PERIOD = "8.772000" *) (* C_DPHY_LANES = "2" *) 
(* C_DPHY_MODE = "SLAVE" *) (* C_EN_DEBUG_REGS = "0" *) (* C_EN_DEBUG_TX_CALIB = "0" *) 
(* C_EN_EXT_TAP = "0" *) (* C_EN_REG_IF = "0" *) (* C_EN_SSC = "0" *) 
(* C_EN_TIMEOUT_REGS = "0" *) (* C_ESC_CLK_PERIOD = "50.000000" *) (* C_ESC_TIMEOUT = "25600" *) 
(* C_EXAMPLE_SIMULATION = "true" *) (* C_HS_LINE_RATE = "912" *) (* C_HS_TIMEOUT = "65541" *) 
(* C_IDLY_TAP = "0" *) (* C_LPX_PERIOD = "50" *) (* C_RCVE_DESKEW_SEQ = "false" *) 
(* C_SKEWCAL_FIRST_TIME = "4096" *) (* C_SKEWCAL_PERIODIC_TIME = "128" *) (* C_STABLE_CLK_PERIOD = "5.000000" *) 
(* C_TXPLL_CLKIN_PERIOD = "8.772000" *) (* C_WAKEUP = "1000" *) (* C_XMIT_FIRST_DESKEW_SEQ = "false" *) 
(* C_XMIT_PERIODIC_DESKEW_SEQ = "false" *) (* DPHY_PRESET = "CSI2RX_XLNX" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* MTBF_SYNC_STAGES = "3" *) (* SUPPORT_LEVEL = "1" *) 
module bd_0c52_phy_0(core_clk, core_rst, rxbyteclkhs, clkoutphy_out, 
  pll_lock_out, system_rst_out, init_done, cl_rxclkactivehs, cl_stopstate, cl_enable, 
  cl_rxulpsclknot, cl_ulpsactivenot, dl0_rxdatahs, dl0_rxvalidhs, dl0_rxactivehs, 
  dl0_rxsynchs, dl0_forcerxmode, dl0_stopstate, dl0_enable, dl0_ulpsactivenot, dl0_rxclkesc, 
  dl0_rxlpdtesc, dl0_rxulpsesc, dl0_rxtriggeresc, dl0_rxdataesc, dl0_rxvalidesc, 
  dl0_errsoths, dl0_errsotsynchs, dl0_erresc, dl0_errsyncesc, dl0_errcontrol, dl1_rxdatahs, 
  dl1_rxvalidhs, dl1_rxactivehs, dl1_rxsynchs, dl1_forcerxmode, dl1_stopstate, dl1_enable, 
  dl1_ulpsactivenot, dl1_rxclkesc, dl1_rxlpdtesc, dl1_rxulpsesc, dl1_rxtriggeresc, 
  dl1_rxdataesc, dl1_rxvalidesc, dl1_errsoths, dl1_errsotsynchs, dl1_erresc, dl1_errsyncesc, 
  dl1_errcontrol, clk_rxp, clk_rxn, data_rxp, data_rxn)
/* synthesis syn_black_box black_box_pad_pin="core_rst,pll_lock_out,system_rst_out,init_done,cl_rxclkactivehs,cl_stopstate,cl_enable,cl_rxulpsclknot,cl_ulpsactivenot,dl0_rxdatahs[7:0],dl0_rxvalidhs,dl0_rxactivehs,dl0_rxsynchs,dl0_forcerxmode,dl0_stopstate,dl0_enable,dl0_ulpsactivenot,dl0_rxclkesc,dl0_rxlpdtesc,dl0_rxulpsesc,dl0_rxtriggeresc[3:0],dl0_rxdataesc[7:0],dl0_rxvalidesc,dl0_errsoths,dl0_errsotsynchs,dl0_erresc,dl0_errsyncesc,dl0_errcontrol,dl1_rxdatahs[7:0],dl1_rxvalidhs,dl1_rxactivehs,dl1_rxsynchs,dl1_forcerxmode,dl1_stopstate,dl1_enable,dl1_ulpsactivenot,dl1_rxclkesc,dl1_rxlpdtesc,dl1_rxulpsesc,dl1_rxtriggeresc[3:0],dl1_rxdataesc[7:0],dl1_rxvalidesc,dl1_errsoths,dl1_errsotsynchs,dl1_erresc,dl1_errsyncesc,dl1_errcontrol,clk_rxp,clk_rxn,data_rxp[1:0],data_rxn[1:0]" */
/* synthesis syn_force_seq_prim="core_clk" */
/* synthesis syn_force_seq_prim="rxbyteclkhs" */
/* synthesis syn_force_seq_prim="clkoutphy_out" */;
  input core_clk /* synthesis syn_isclock = 1 */;
  input core_rst;
  output rxbyteclkhs /* synthesis syn_isclock = 1 */;
  output clkoutphy_out /* synthesis syn_isclock = 1 */;
  output pll_lock_out;
  output system_rst_out;
  output init_done;
  output cl_rxclkactivehs;
  output cl_stopstate;
  input cl_enable;
  output cl_rxulpsclknot;
  output cl_ulpsactivenot;
  output [7:0]dl0_rxdatahs;
  output dl0_rxvalidhs;
  output dl0_rxactivehs;
  output dl0_rxsynchs;
  input dl0_forcerxmode;
  output dl0_stopstate;
  input dl0_enable;
  output dl0_ulpsactivenot;
  output dl0_rxclkesc;
  output dl0_rxlpdtesc;
  output dl0_rxulpsesc;
  output [3:0]dl0_rxtriggeresc;
  output [7:0]dl0_rxdataesc;
  output dl0_rxvalidesc;
  output dl0_errsoths;
  output dl0_errsotsynchs;
  output dl0_erresc;
  output dl0_errsyncesc;
  output dl0_errcontrol;
  output [7:0]dl1_rxdatahs;
  output dl1_rxvalidhs;
  output dl1_rxactivehs;
  output dl1_rxsynchs;
  input dl1_forcerxmode;
  output dl1_stopstate;
  input dl1_enable;
  output dl1_ulpsactivenot;
  output dl1_rxclkesc;
  output dl1_rxlpdtesc;
  output dl1_rxulpsesc;
  output [3:0]dl1_rxtriggeresc;
  output [7:0]dl1_rxdataesc;
  output dl1_rxvalidesc;
  output dl1_errsoths;
  output dl1_errsotsynchs;
  output dl1_erresc;
  output dl1_errsyncesc;
  output dl1_errcontrol;
  input clk_rxp;
  input clk_rxn;
  input [1:0]data_rxp;
  input [1:0]data_rxn;
endmodule
