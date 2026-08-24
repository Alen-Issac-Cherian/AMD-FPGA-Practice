set ModuleHierarchy {[{
"Name" : "v_hscaler","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "AXIvideo2MultiPixStream_U0","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "loop_wait_for_start","ID" : "3","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "loop_height","ID" : "4","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196","ID" : "5","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_width","ID" : "6","Type" : "pipeline"},]},
		{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_wait_for_eol","ID" : "8","Type" : "pipeline"},]},]},]},
	{"Name" : "Block_entry1_proc_U0","ID" : "9","Type" : "sequential"},
	{"Name" : "v_hcresampler_core_1_U0","ID" : "10","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_1679_1","ID" : "11","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1681_2_fu_162","ID" : "12","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_1681_2","ID" : "13","Type" : "pipeline"},]},]},]},
	{"Name" : "hscale_core_polyphase_U0","ID" : "14","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_hscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap_fu_246","ID" : "15","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "loop_init_coeff_phase_loop_init_coeff_tap","ID" : "16","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "loop_height","ID" : "17","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_hscale_core_polyphase_Pipeline_loop_width_fu_264","ID" : "18","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_width","ID" : "19","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "grp_hscale_polyphase_fu_228","ID" : "20","Type" : "pipeline"},
				{"Name" : "grp_reg_ap_uint_9_s_fu_336","ID" : "21","Type" : "pipeline"},]},]},]},]},
	{"Name" : "v_csc_core_U0","ID" : "22","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_2078_1","ID" : "23","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_v_csc_core_Pipeline_VITIS_LOOP_2080_2_fu_114","ID" : "24","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_2080_2","ID" : "25","Type" : "pipeline"},]},]},]},
	{"Name" : "v_hcresampler_core_U0","ID" : "26","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_1679_1","ID" : "27","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1681_2_fu_198","ID" : "28","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_1681_2","ID" : "29","Type" : "pipeline"},]},]},]},
	{"Name" : "v_vcresampler_core_U0","ID" : "30","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_1896_1","ID" : "31","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1898_2_fu_138","ID" : "32","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_1898_2","ID" : "33","Type" : "pipeline"},]},]},]},
	{"Name" : "MultiPixStream2AXIvideo_U0","ID" : "34","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1581_1_fu_144","ID" : "35","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_1581_1","ID" : "36","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_1587_2","ID" : "37","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1589_3_fu_154","ID" : "38","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_1589_3","ID" : "39","Type" : "pipeline"},]},]},]},]
}]}