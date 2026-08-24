
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [3:0] axis_block_sigs;
wire [10:0] inst_idle_sigs;
wire [3:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~AXIVideo2ColorMat_20_1080_1920_1_2_U0.grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[1] = ~AXIVideo2ColorMat_20_1080_1920_1_2_U0.grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[2] = ~AXIVideo2ColorMat_20_1080_1920_1_2_U0.grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[3] = ~ColorMat2AXIvideo_16_1080_1920_1_2_U0.grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90.m_axis_video_TDATA_blk_n;

assign inst_idle_sigs[0] = Block_entry1_proc_U0.ap_idle;
assign inst_block_sigs[0] = (Block_entry1_proc_U0.ap_done & ~Block_entry1_proc_U0.ap_continue);
assign inst_idle_sigs[1] = AXIVideo2ColorMat_20_1080_1920_1_2_U0.ap_idle;
assign inst_block_sigs[1] = (AXIVideo2ColorMat_20_1080_1920_1_2_U0.ap_done & ~AXIVideo2ColorMat_20_1080_1920_1_2_U0.ap_continue) | ~AXIVideo2ColorMat_20_1080_1920_1_2_U0.grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178.in_mat_data_blk_n | ~AXIVideo2ColorMat_20_1080_1920_1_2_U0.in_mat_rows_c_blk_n | ~AXIVideo2ColorMat_20_1080_1920_1_2_U0.in_mat_cols_c_blk_n;
assign inst_idle_sigs[2] = xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0.ap_idle;
assign inst_block_sigs[2] = (xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0.ap_done & ~xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0.ap_continue) | ~xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0.stream_in_rows_blk_n | ~xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0.stream_in_cols_blk_n | ~xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0.grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97.in_mat_data_blk_n | ~xf_QuatizationDithering_20_16_1080_1920_256_1024_1_0_2_2_U0.grp_xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL_fu_97.out_mat_data_blk_n;
assign inst_idle_sigs[3] = ColorMat2AXIvideo_16_1080_1920_1_2_U0.ap_idle;
assign inst_block_sigs[3] = (ColorMat2AXIvideo_16_1080_1920_1_2_U0.ap_done & ~ColorMat2AXIvideo_16_1080_1920_1_2_U0.ap_continue) | ~ColorMat2AXIvideo_16_1080_1920_1_2_U0.grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90.out_mat_data_blk_n;

assign inst_idle_sigs[4] = 1'b0;
assign inst_idle_sigs[5] = AXIVideo2ColorMat_20_1080_1920_1_2_U0.ap_idle;
assign inst_idle_sigs[6] = AXIVideo2ColorMat_20_1080_1920_1_2_U0.grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_start_hunt_fu_158.ap_idle;
assign inst_idle_sigs[7] = AXIVideo2ColorMat_20_1080_1920_1_2_U0.grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_col_zxi2mat_fu_178.ap_idle;
assign inst_idle_sigs[8] = AXIVideo2ColorMat_20_1080_1920_1_2_U0.grp_AXIVideo2ColorMat_20_1080_1920_1_2_Pipeline_loop_last_hunt_fu_206.ap_idle;
assign inst_idle_sigs[9] = ColorMat2AXIvideo_16_1080_1920_1_2_U0.ap_idle;
assign inst_idle_sigs[10] = ColorMat2AXIvideo_16_1080_1920_1_2_U0.grp_ColorMat2AXIvideo_16_1080_1920_1_2_Pipeline_loop_col_mat2axi_fu_90.ap_idle;

quantizationdithering_accel_hls_deadlock_idx0_monitor quantizationdithering_accel_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
