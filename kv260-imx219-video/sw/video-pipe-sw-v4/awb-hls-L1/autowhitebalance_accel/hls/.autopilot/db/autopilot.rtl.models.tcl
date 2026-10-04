set SynModuleInfo {
  {SRCNAME AWBKernel_Block_entry_proc MODELNAME AWBKernel_Block_entry_proc RTLNAME autowhitebalance_accel_AWBKernel_Block_entry_proc
    SUBMODULES {
      {MODELNAME autowhitebalance_accel_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME autowhitebalance_accel_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME __hls_fptosi_float_i32.2 MODELNAME p_hls_fptosi_float_i32_2 RTLNAME autowhitebalance_accel_p_hls_fptosi_float_i32_2}
  {SRCNAME {AXIvideo2xfMat<32, 20, 2160, 3840, 1, 2>_Pipeline_loop_start_hunt} MODELNAME AXIvideo2xfMat_32_20_2160_3840_1_2_Pipeline_loop_start_hunt RTLNAME autowhitebalance_accel_AXIvideo2xfMat_32_20_2160_3840_1_2_Pipeline_loop_start_hunt
    SUBMODULES {
      {MODELNAME autowhitebalance_accel_flow_control_loop_pipe_sequential_init RTLNAME autowhitebalance_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME autowhitebalance_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {AXIvideo2xfMat<32, 20, 2160, 3840, 1, 2>_Pipeline_loop_col_zxi2mat} MODELNAME AXIvideo2xfMat_32_20_2160_3840_1_2_Pipeline_loop_col_zxi2mat RTLNAME autowhitebalance_accel_AXIvideo2xfMat_32_20_2160_3840_1_2_Pipeline_loop_col_zxi2mat}
  {SRCNAME {AXIvideo2xfMat<32, 20, 2160, 3840, 1, 2>_Pipeline_loop_last_hunt} MODELNAME AXIvideo2xfMat_32_20_2160_3840_1_2_Pipeline_loop_last_hunt RTLNAME autowhitebalance_accel_AXIvideo2xfMat_32_20_2160_3840_1_2_Pipeline_loop_last_hunt}
  {SRCNAME {AXIvideo2xfMat<32, 20, 2160, 3840, 1, 2>} MODELNAME AXIvideo2xfMat_32_20_2160_3840_1_2_s RTLNAME autowhitebalance_accel_AXIvideo2xfMat_32_20_2160_3840_1_2_s}
  {SRCNAME AWBChannelGainKernel_Pipeline_Col_Loop MODELNAME AWBChannelGainKernel_Pipeline_Col_Loop RTLNAME autowhitebalance_accel_AWBChannelGainKernel_Pipeline_Col_Loop
    SUBMODULES {
      {MODELNAME autowhitebalance_accel_mul_32ns_10ns_42_1_1 RTLNAME autowhitebalance_accel_mul_32ns_10ns_42_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME AWBChannelGainKernel_Pipeline_VITIS_LOOP_216_3 MODELNAME AWBChannelGainKernel_Pipeline_VITIS_LOOP_216_3 RTLNAME autowhitebalance_accel_AWBChannelGainKernel_Pipeline_VITIS_LOOP_216_3
    SUBMODULES {
      {MODELNAME autowhitebalance_accel_sparsemux_7_2_40_1_1 RTLNAME autowhitebalance_accel_sparsemux_7_2_40_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME {AWBChannelGainKernel<20, 20, 2160, 3840, 1, 2, 2, 3, 23, 23, 13, 13, 3840>} MODELNAME AWBChannelGainKernel_20_20_2160_3840_1_2_2_3_23_23_13_13_3840_s RTLNAME autowhitebalance_accel_AWBChannelGainKernel_20_20_2160_3840_1_2_2_3_23_23_13_13_3840_s
    SUBMODULES {
      {MODELNAME autowhitebalance_accel_sitofp_32ns_32_4_no_dsp_1 RTLNAME autowhitebalance_accel_sitofp_32ns_32_4_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME autowhitebalance_accel_fpext_32ns_64_2_no_dsp_1 RTLNAME autowhitebalance_accel_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME autowhitebalance_accel_sparsemux_9_3_32_1_1 RTLNAME autowhitebalance_accel_sparsemux_9_3_32_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME autowhitebalance_accel_sparsemux_7_2_10_1_1 RTLNAME autowhitebalance_accel_sparsemux_7_2_10_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME autowhitebalance_accel_udiv_56ns_40ns_56_60_seq_1 RTLNAME autowhitebalance_accel_udiv_56ns_40ns_56_60_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 59 ALLOW_PRAGMA 1}
      {MODELNAME autowhitebalance_accel_udiv_102ns_56ns_56_106_seq_1 RTLNAME autowhitebalance_accel_udiv_102ns_56ns_56_106_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 105 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {AWBChannelGain<20, 20, 2160, 3840, 1, 0, 2, 2>} MODELNAME AWBChannelGain_20_20_2160_3840_1_0_2_2_s RTLNAME autowhitebalance_accel_AWBChannelGain_20_20_2160_3840_1_0_2_2_s}
  {SRCNAME {AWBGainUpdate<20, 20, 2160, 3840, 1, 0, 2, 2>_Pipeline_ColLoop1} MODELNAME AWBGainUpdate_20_20_2160_3840_1_0_2_2_Pipeline_ColLoop1 RTLNAME autowhitebalance_accel_AWBGainUpdate_20_20_2160_3840_1_0_2_2_Pipeline_ColLoop1
    SUBMODULES {
      {MODELNAME autowhitebalance_accel_mul_32s_10ns_42_1_1 RTLNAME autowhitebalance_accel_mul_32s_10ns_42_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {AWBGainUpdate<20, 20, 2160, 3840, 1, 0, 2, 2>} MODELNAME AWBGainUpdate_20_20_2160_3840_1_0_2_2_s RTLNAME autowhitebalance_accel_AWBGainUpdate_20_20_2160_3840_1_0_2_2_s}
  {SRCNAME {xfMat2AXIvideo<32, 20, 2160, 3840, 1, 2, 0>_Pipeline_loop_col_mat2axi} MODELNAME xfMat2AXIvideo_32_20_2160_3840_1_2_0_Pipeline_loop_col_mat2axi RTLNAME autowhitebalance_accel_xfMat2AXIvideo_32_20_2160_3840_1_2_0_Pipeline_loop_col_mat2axi}
  {SRCNAME {xfMat2AXIvideo<32, 20, 2160, 3840, 1, 2, 0>} MODELNAME xfMat2AXIvideo_32_20_2160_3840_1_2_0_s RTLNAME autowhitebalance_accel_xfMat2AXIvideo_32_20_2160_3840_1_2_0_s}
  {SRCNAME AWBKernel MODELNAME AWBKernel RTLNAME autowhitebalance_accel_AWBKernel
    SUBMODULES {
      {MODELNAME autowhitebalance_accel_fifo_w32_d2_S RTLNAME autowhitebalance_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mul_loc_channel_U}
      {MODELNAME autowhitebalance_accel_fifo_w32_d2_S RTLNAME autowhitebalance_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME tmp_channel_U}
      {MODELNAME autowhitebalance_accel_fifo_w30_d2_S RTLNAME autowhitebalance_accel_fifo_w30_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_data_U}
      {MODELNAME autowhitebalance_accel_fifo_w30_d2_S RTLNAME autowhitebalance_accel_fifo_w30_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME impop_data_U}
      {MODELNAME autowhitebalance_accel_fifo_w30_d2_S RTLNAME autowhitebalance_accel_fifo_w30_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_mat_data_U}
      {MODELNAME autowhitebalance_accel_start_for_AWBGainUpdate_20_20_2160_3840_1_0_2_2_U0 RTLNAME autowhitebalance_accel_start_for_AWBGainUpdate_20_20_2160_3840_1_0_2_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_AWBGainUpdate_20_20_2160_3840_1_0_2_2_U0_U}
      {MODELNAME autowhitebalance_accel_start_for_xfMat2AXIvideo_32_20_2160_3840_1_2_0_U0 RTLNAME autowhitebalance_accel_start_for_xfMat2AXIvideo_32_20_2160_3840_1_2_0_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_xfMat2AXIvideo_32_20_2160_3840_1_2_0_U0_U}
    }
  }
  {SRCNAME autowhitebalance_accel MODELNAME autowhitebalance_accel RTLNAME autowhitebalance_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME autowhitebalance_accel_control_s_axi RTLNAME autowhitebalance_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME autowhitebalance_accel_regslice_both RTLNAME autowhitebalance_accel_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
