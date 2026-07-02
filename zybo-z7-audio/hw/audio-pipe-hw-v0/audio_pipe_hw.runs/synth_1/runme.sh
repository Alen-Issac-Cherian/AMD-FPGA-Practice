#!/bin/bash

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/alen/AMD-Xilinx/2025.2/Vitis/bin:/home/alen/AMD-Xilinx/2025.2/Vivado/ids_lite/ISE/bin/lin64:/home/alen/AMD-Xilinx/2025.2/Vivado/bin
else
  PATH=/home/alen/AMD-Xilinx/2025.2/Vitis/bin:/home/alen/AMD-Xilinx/2025.2/Vivado/ids_lite/ISE/bin/lin64:/home/alen/AMD-Xilinx/2025.2/Vivado/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/alen/git/AMD-FPGA-Practice/zybo-z7-audio/hw/audio-pipe-hw-v0/audio_pipe_hw.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log audio_pipe_hw_wrapper.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source audio_pipe_hw_wrapper.tcl
