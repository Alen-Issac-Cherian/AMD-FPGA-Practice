//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef AUTOWHITEBALANCE_ACCEL_SUBSYSTEM_PKG__SV          
    `define AUTOWHITEBALANCE_ACCEL_SUBSYSTEM_PKG__SV      
                                                     
    package autowhitebalance_accel_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import svr_pkg::*;
        import axi_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "autowhitebalance_accel_config.sv"           
        `include "autowhitebalance_accel_reference_model.sv"  
        `include "autowhitebalance_accel_scoreboard.sv"       
        `include "autowhitebalance_accel_subsystem_monitor.sv"
        `include "autowhitebalance_accel_virtual_sequencer.sv"
        `include "autowhitebalance_accel_pkg_sequence_lib.sv" 
        `include "autowhitebalance_accel_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
