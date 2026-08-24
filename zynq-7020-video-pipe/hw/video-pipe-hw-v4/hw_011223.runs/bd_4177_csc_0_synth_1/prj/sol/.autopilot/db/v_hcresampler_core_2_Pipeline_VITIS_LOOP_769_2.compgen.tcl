# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name pixbuf_y_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_4 \
    op interface \
    ports { pixbuf_y_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name pixbuf_y_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_3 \
    op interface \
    ports { pixbuf_y_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name pixbuf_y_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_2 \
    op interface \
    ports { pixbuf_y_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name pixbuf_y_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_1 \
    op interface \
    ports { pixbuf_y_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name p_0_0_0_0_0499689_lcssa735_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0499689_lcssa735_i \
    op interface \
    ports { p_0_0_0_0_0499689_lcssa735_i { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name add_ln767 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln767 \
    op interface \
    ports { add_ln767 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name stream_in_hresampled \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_in_hresampled \
    op interface \
    ports { stream_in_hresampled_din { O 24 vector } stream_in_hresampled_num_data_valid { I 5 vector } stream_in_hresampled_fifo_cap { I 5 vector } stream_in_hresampled_full_n { I 1 bit } stream_in_hresampled_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name select_ln765 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln765 \
    op interface \
    ports { select_ln765 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name zext_ln765 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln765 \
    op interface \
    ports { zext_ln765 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name stream_in_vresampled \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_in_vresampled \
    op interface \
    ports { stream_in_vresampled_dout { I 24 vector } stream_in_vresampled_num_data_valid { I 5 vector } stream_in_vresampled_fifo_cap { I 5 vector } stream_in_vresampled_empty_n { I 1 bit } stream_in_vresampled_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name pixbuf_y_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_9_out \
    op interface \
    ports { pixbuf_y_9_out { O 8 vector } pixbuf_y_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name pixbuf_y_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_8_out \
    op interface \
    ports { pixbuf_y_8_out { O 8 vector } pixbuf_y_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name pixbuf_y_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_7_out \
    op interface \
    ports { pixbuf_y_7_out { O 8 vector } pixbuf_y_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name pixbuf_y_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_6_out \
    op interface \
    ports { pixbuf_y_6_out { O 8 vector } pixbuf_y_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name pixbuf_y_5_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_5_out \
    op interface \
    ports { pixbuf_y_5_out_i { I 8 vector } pixbuf_y_5_out_o { O 8 vector } pixbuf_y_5_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name p_0_2_0_0_0696718_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_0696718_i_out \
    op interface \
    ports { p_0_2_0_0_0696718_i_out_i { I 8 vector } p_0_2_0_0_0696718_i_out_o { O 8 vector } p_0_2_0_0_0696718_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name p_0_1_0_0_0692714_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0692714_i_out \
    op interface \
    ports { p_0_1_0_0_0692714_i_out_i { I 8 vector } p_0_1_0_0_0692714_i_out_o { O 8 vector } p_0_1_0_0_0692714_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name p_0_0_0_0_0_2711_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0_2711_i_out \
    op interface \
    ports { p_0_0_0_0_0_2711_i_out_i { I 8 vector } p_0_0_0_0_0_2711_i_out_o { O 8 vector } p_0_0_0_0_0_2711_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name p_0_0_0_0_0491_2708_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0491_2708_i_out \
    op interface \
    ports { p_0_0_0_0_0491_2708_i_out_i { I 8 vector } p_0_0_0_0_0491_2708_i_out_o { O 8 vector } p_0_0_0_0_0491_2708_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name p_0_0_0_0_0_1703_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0_1703_i_out \
    op interface \
    ports { p_0_0_0_0_0_1703_i_out_i { I 8 vector } p_0_0_0_0_0_1703_i_out_o { O 8 vector } p_0_0_0_0_0_1703_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name p_0_0_0_0_0491_1700_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0491_1700_i_out \
    op interface \
    ports { p_0_0_0_0_0491_1700_i_out_i { I 8 vector } p_0_0_0_0_0491_1700_i_out_o { O 8 vector } p_0_0_0_0_0491_1700_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name p_0_2_0_0_0695_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_0695_i_out \
    op interface \
    ports { p_0_2_0_0_0695_i_out_i { I 8 vector } p_0_2_0_0_0695_i_out_o { O 8 vector } p_0_2_0_0_0695_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name p_0_1_0_0_0691_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0691_i_out \
    op interface \
    ports { p_0_1_0_0_0691_i_out_i { I 8 vector } p_0_1_0_0_0691_i_out_o { O 8 vector } p_0_1_0_0_0691_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name inpix_0_2_0_0_0_load686_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_inpix_0_2_0_0_0_load686_i_out \
    op interface \
    ports { inpix_0_2_0_0_0_load686_i_out_i { I 8 vector } inpix_0_2_0_0_0_load686_i_out_o { O 8 vector } inpix_0_2_0_0_0_load686_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name inpix_0_1_0_0_0_load684_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_inpix_0_1_0_0_0_load684_i_out \
    op interface \
    ports { inpix_0_1_0_0_0_load684_i_out_i { I 8 vector } inpix_0_1_0_0_0_load684_i_out_o { O 8 vector } inpix_0_1_0_0_0_load684_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name inpix_0_0_0_0_0_load682_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_inpix_0_0_0_0_0_load682_i_out \
    op interface \
    ports { inpix_0_0_0_0_0_load682_i_out_i { I 8 vector } inpix_0_0_0_0_0_load682_i_out_o { O 8 vector } inpix_0_0_0_0_0_load682_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName bd_4177_csc_0_flow_control_loop_pipe_sequential_init_U
set CompName bd_4177_csc_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix bd_4177_csc_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


