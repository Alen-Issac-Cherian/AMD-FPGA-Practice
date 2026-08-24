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
    id 59 \
    name pixbuf_y_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_4 \
    op interface \
    ports { pixbuf_y_4 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name pixbuf_y_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_3 \
    op interface \
    ports { pixbuf_y_3 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name pixbuf_y_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_2 \
    op interface \
    ports { pixbuf_y_2 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name pixbuf_y_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_1 \
    op interface \
    ports { pixbuf_y_1 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name p_0_0_0_0_0495685_lcssa734 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0495685_lcssa734 \
    op interface \
    ports { p_0_0_0_0_0495685_lcssa734 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name loopWidth \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_loopWidth \
    op interface \
    ports { loopWidth { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name stream_upsampled \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_upsampled \
    op interface \
    ports { stream_upsampled_din { O 30 vector } stream_upsampled_num_data_valid { I 5 vector } stream_upsampled_fifo_cap { I 5 vector } stream_upsampled_full_n { I 1 bit } stream_upsampled_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
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
    id 67 \
    name select_ln1677 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln1677 \
    op interface \
    ports { select_ln1677 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name WidthIn_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_WidthIn_load \
    op interface \
    ports { WidthIn_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name stream_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_in \
    op interface \
    ports { stream_in_dout { I 30 vector } stream_in_num_data_valid { I 5 vector } stream_in_fifo_cap { I 5 vector } stream_in_empty_n { I 1 bit } stream_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name pixbuf_y_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_9_out \
    op interface \
    ports { pixbuf_y_9_out { O 10 vector } pixbuf_y_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name pixbuf_y_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_8_out \
    op interface \
    ports { pixbuf_y_8_out { O 10 vector } pixbuf_y_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name pixbuf_y_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_7_out \
    op interface \
    ports { pixbuf_y_7_out { O 10 vector } pixbuf_y_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name pixbuf_y_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_6_out \
    op interface \
    ports { pixbuf_y_6_out { O 10 vector } pixbuf_y_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name pixbuf_y_5_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_5_out \
    op interface \
    ports { pixbuf_y_5_out_i { I 10 vector } pixbuf_y_5_out_o { O 10 vector } pixbuf_y_5_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name p_0_2_0_0_0691719_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_0691719_out \
    op interface \
    ports { p_0_2_0_0_0691719_out_i { I 10 vector } p_0_2_0_0_0691719_out_o { O 10 vector } p_0_2_0_0_0691719_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name p_0_1_0_0_0687715_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0687715_out \
    op interface \
    ports { p_0_1_0_0_0687715_out_i { I 10 vector } p_0_1_0_0_0687715_out_o { O 10 vector } p_0_1_0_0_0687715_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name p_0_0_0_0_0_2712_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0_2712_out \
    op interface \
    ports { p_0_0_0_0_0_2712_out_i { I 10 vector } p_0_0_0_0_0_2712_out_o { O 10 vector } p_0_0_0_0_0_2712_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name p_0_0_0_0_0487_2709_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0487_2709_out \
    op interface \
    ports { p_0_0_0_0_0487_2709_out_i { I 10 vector } p_0_0_0_0_0487_2709_out_o { O 10 vector } p_0_0_0_0_0487_2709_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name p_0_0_0_0_0_1703_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0_1703_out \
    op interface \
    ports { p_0_0_0_0_0_1703_out_i { I 10 vector } p_0_0_0_0_0_1703_out_o { O 10 vector } p_0_0_0_0_0_1703_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name p_0_0_0_0_0487_1697_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0487_1697_out \
    op interface \
    ports { p_0_0_0_0_0487_1697_out_i { I 10 vector } p_0_0_0_0_0487_1697_out_o { O 10 vector } p_0_0_0_0_0487_1697_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name p_0_2_0_0_0694_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_0694_out \
    op interface \
    ports { p_0_2_0_0_0694_out_i { I 10 vector } p_0_2_0_0_0694_out_o { O 10 vector } p_0_2_0_0_0694_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name p_0_1_0_0_0690_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0690_out \
    op interface \
    ports { p_0_1_0_0_0690_out_i { I 10 vector } p_0_1_0_0_0690_out_o { O 10 vector } p_0_1_0_0_0690_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name inpix_0_2_0_0_0_load684_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_inpix_0_2_0_0_0_load684_out \
    op interface \
    ports { inpix_0_2_0_0_0_load684_out_i { I 10 vector } inpix_0_2_0_0_0_load684_out_o { O 10 vector } inpix_0_2_0_0_0_load684_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name inpix_0_1_0_0_0_load682_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_inpix_0_1_0_0_0_load682_out \
    op interface \
    ports { inpix_0_1_0_0_0_load682_out_i { I 10 vector } inpix_0_1_0_0_0_load682_out_o { O 10 vector } inpix_0_1_0_0_0_load682_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name inpix_0_0_0_0_0_load680_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_inpix_0_0_0_0_0_load680_out \
    op interface \
    ports { inpix_0_0_0_0_0_load680_out_i { I 10 vector } inpix_0_0_0_0_0_load680_out_o { O 10 vector } inpix_0_0_0_0_0_load680_out_o_ap_vld { O 1 bit } } \
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
set InstName bd_8126_hsc_0_flow_control_loop_pipe_sequential_init_U
set CompName bd_8126_hsc_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix bd_8126_hsc_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


