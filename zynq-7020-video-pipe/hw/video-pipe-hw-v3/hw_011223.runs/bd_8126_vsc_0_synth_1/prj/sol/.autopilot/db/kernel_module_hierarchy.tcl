set ModuleHierarchy {[{
"Name" : "v_vscaler","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "Block_entry4_proc_U0","ID" : "1","Type" : "sequential"},
	{"Name" : "AXIvideo2MultiPixStream_U0","ID" : "2","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_182","ID" : "3","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "loop_wait_for_start","ID" : "4","Type" : "pipeline"},]},
		{"Name" : "grp_reg_unsigned_short_s_fu_259","ID" : "5","Type" : "pipeline"},
		{"Name" : "grp_reg_unsigned_short_s_fu_264","ID" : "6","Type" : "pipeline"},],
		"SubLoops" : [
		{"Name" : "loop_height","ID" : "7","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_202","ID" : "8","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_width","ID" : "9","Type" : "pipeline"},]},
		{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_231","ID" : "10","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_wait_for_eol","ID" : "11","Type" : "pipeline"},]},]},]},
	{"Name" : "v_vcresampler_core_U0","ID" : "12","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_1055_1","ID" : "13","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1057_2_fu_178","ID" : "14","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_1057_2","ID" : "15","Type" : "pipeline"},]},]},]},
	{"Name" : "vscale_core_polyphase_U0","ID" : "16","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_vscale_core_polyphase_Pipeline_loop_init_coeff_phase_loop_init_coeff_tap_fu_229","ID" : "17","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "loop_init_coeff_phase_loop_init_coeff_tap","ID" : "18","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "loop_height","ID" : "19","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_vscale_core_polyphase_Pipeline_loop_width_for_procpix_fu_247","ID" : "20","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_width_for_procpix","ID" : "21","Type" : "pipeline"},]},]},]},
	{"Name" : "MultiPixStream2AXIvideo_U0","ID" : "22","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_reg_unsigned_short_s_fu_139","ID" : "23","Type" : "pipeline"},
		{"Name" : "grp_reg_unsigned_short_s_fu_145","ID" : "24","Type" : "pipeline"},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_938_1","ID" : "25","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_940_2_fu_114","ID" : "26","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_940_2","ID" : "27","Type" : "pipeline"},]},]},]},]
}]}