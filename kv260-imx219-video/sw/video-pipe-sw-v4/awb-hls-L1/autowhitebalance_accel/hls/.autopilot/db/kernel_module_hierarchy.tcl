set ModuleHierarchy {[{
"Name" : "autowhitebalance_accel", "RefName" : "autowhitebalance_accel","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_AWBKernel_fu_167", "RefName" : "AWBKernel","ID" : "1","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "mul_loc_channel_U", "RefName" : "AWBKernel_Block_entry_proc","ID" : "2","Type" : "sequential"},
		{"Name" : "AXIvideo2xfMat_30_20_2160_3840_1_2_U0", "RefName" : "AXIvideo2xfMat_30_20_2160_3840_1_2_s","ID" : "3","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_AXIvideo2xfMat_30_20_2160_3840_1_2_Pipeline_loop_start_hunt_fu_132", "RefName" : "AXIvideo2xfMat_30_20_2160_3840_1_2_Pipeline_loop_start_hunt","ID" : "4","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_start_hunt","RefName" : "loop_start_hunt","ID" : "5","Type" : "pipeline"},]},],
			"SubLoops" : [
			{"Name" : "loop_row_axi2mat","RefName" : "loop_row_axi2mat","ID" : "6","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_AXIvideo2xfMat_30_20_2160_3840_1_2_Pipeline_loop_col_zxi2mat_fu_152", "RefName" : "AXIvideo2xfMat_30_20_2160_3840_1_2_Pipeline_loop_col_zxi2mat","ID" : "7","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "loop_col_zxi2mat","RefName" : "loop_col_zxi2mat","ID" : "8","Type" : "pipeline"},]},
			{"Name" : "grp_AXIvideo2xfMat_30_20_2160_3840_1_2_Pipeline_loop_last_hunt_fu_180", "RefName" : "AXIvideo2xfMat_30_20_2160_3840_1_2_Pipeline_loop_last_hunt","ID" : "9","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "loop_last_hunt","RefName" : "loop_last_hunt","ID" : "10","Type" : "pipeline"},]},]},]},
		{"Name" : "p_hls_fptosi_float_i32_2_U0", "RefName" : "p_hls_fptosi_float_i32_2","ID" : "11","Type" : "sequential"},
		{"Name" : "AWBChannelGain_20_20_2160_3840_1_0_2_2_U0", "RefName" : "AWBChannelGain_20_20_2160_3840_1_0_2_2_s","ID" : "12","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_AWBChannelGainKernel_20_20_2160_3840_1_2_2_3_23_23_13_13_3840_s_fu_79", "RefName" : "AWBChannelGainKernel_20_20_2160_3840_1_2_2_3_23_23_13_13_3840_s","ID" : "13","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_AWBChannelGainKernel_Pipeline_VITIS_LOOP_216_3_fu_271", "RefName" : "AWBChannelGainKernel_Pipeline_VITIS_LOOP_216_3","ID" : "14","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_216_3","RefName" : "VITIS_LOOP_216_3","ID" : "15","Type" : "pipeline"},]},],
				"SubLoops" : [
				{"Name" : "Row_Loop","RefName" : "Row_Loop","ID" : "16","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_AWBChannelGainKernel_Pipeline_Col_Loop_fu_258", "RefName" : "AWBChannelGainKernel_Pipeline_Col_Loop","ID" : "17","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "Col_Loop","RefName" : "Col_Loop","ID" : "18","Type" : "pipeline"},]},]},]},]},
		{"Name" : "AWBGainUpdate_20_20_2160_3840_1_0_2_2_U0", "RefName" : "AWBGainUpdate_20_20_2160_3840_1_0_2_2_s","ID" : "19","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_85_1","RefName" : "VITIS_LOOP_85_1","ID" : "20","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_AWBGainUpdate_20_20_2160_3840_1_0_2_2_Pipeline_ColLoop1_fu_84", "RefName" : "AWBGainUpdate_20_20_2160_3840_1_0_2_2_Pipeline_ColLoop1","ID" : "21","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "ColLoop1","RefName" : "ColLoop1","ID" : "22","Type" : "pipeline"},]},]},]},
		{"Name" : "xfMat2AXIvideo_30_20_2160_3840_1_2_0_U0", "RefName" : "xfMat2AXIvideo_30_20_2160_3840_1_2_0_s","ID" : "23","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "loop_row_mat2axi","RefName" : "loop_row_mat2axi","ID" : "24","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_xfMat2AXIvideo_30_20_2160_3840_1_2_0_Pipeline_loop_col_mat2axi_fu_100", "RefName" : "xfMat2AXIvideo_30_20_2160_3840_1_2_0_Pipeline_loop_col_mat2axi","ID" : "25","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "loop_col_mat2axi","RefName" : "loop_col_mat2axi","ID" : "26","Type" : "pipeline"},]},]},]},]},]
}]}