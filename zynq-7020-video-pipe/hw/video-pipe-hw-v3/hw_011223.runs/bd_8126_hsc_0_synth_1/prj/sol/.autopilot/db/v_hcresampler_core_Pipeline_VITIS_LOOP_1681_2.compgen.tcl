# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler bd_8126_hsc_0_sparsemux_9_2_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name pixbuf_y_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_14 \
    op interface \
    ports { pixbuf_y_14 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name pixbuf_y_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_13 \
    op interface \
    ports { pixbuf_y_13 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name pixbuf_y_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_12 \
    op interface \
    ports { pixbuf_y_12 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name pixbuf_y_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_11 \
    op interface \
    ports { pixbuf_y_11 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name p_0_2_0_0_0688710_lcssa757 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_0688710_lcssa757 \
    op interface \
    ports { p_0_2_0_0_0688710_lcssa757 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name p_0_1_0_0_0684706_lcssa754 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0684706_lcssa754 \
    op interface \
    ports { p_0_1_0_0_0684706_lcssa754 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name p_0_2_0_0_0688_lcssa734 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_0688_lcssa734 \
    op interface \
    ports { p_0_2_0_0_0688_lcssa734 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name p_0_1_0_0_0684_lcssa731 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0684_lcssa731 \
    op interface \
    ports { p_0_1_0_0_0684_lcssa731 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name p_0_0_0_0_0495682_lcssa728 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0495682_lcssa728 \
    op interface \
    ports { p_0_0_0_0_0495682_lcssa728 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
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
    id 263 \
    name stream_out_422 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_out_422 \
    op interface \
    ports { stream_out_422_din { O 24 vector } stream_out_422_num_data_valid { I 5 vector } stream_out_422_fifo_cap { I 5 vector } stream_out_422_full_n { I 1 bit } stream_out_422_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
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
    id 265 \
    name p_cast8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast8 \
    op interface \
    ports { p_cast8 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name select_ln1677 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln1677 \
    op interface \
    ports { select_ln1677 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name WidthOut_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_WidthOut_load \
    op interface \
    ports { WidthOut_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name stream_scaled_csc \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_scaled_csc \
    op interface \
    ports { stream_scaled_csc_dout { I 24 vector } stream_scaled_csc_num_data_valid { I 5 vector } stream_scaled_csc_fifo_cap { I 5 vector } stream_scaled_csc_empty_n { I 1 bit } stream_scaled_csc_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name pixbuf_y_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_19_out \
    op interface \
    ports { pixbuf_y_19_out { O 8 vector } pixbuf_y_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name pixbuf_y_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_18_out \
    op interface \
    ports { pixbuf_y_18_out { O 8 vector } pixbuf_y_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name pixbuf_y_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_17_out \
    op interface \
    ports { pixbuf_y_17_out { O 8 vector } pixbuf_y_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name pixbuf_y_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_16_out \
    op interface \
    ports { pixbuf_y_16_out { O 8 vector } pixbuf_y_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name pixbuf_y_15_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_15_out \
    op interface \
    ports { pixbuf_y_15_out_i { I 8 vector } pixbuf_y_15_out_o { O 8 vector } pixbuf_y_15_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name p_0_2_0_0_0688712_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_0688712_out \
    op interface \
    ports { p_0_2_0_0_0688712_out { O 8 vector } p_0_2_0_0_0688712_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name p_0_1_0_0_0684708_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0684708_out \
    op interface \
    ports { p_0_1_0_0_0684708_out { O 8 vector } p_0_1_0_0_0684708_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name p_0_0_0_0_0_2705_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0_2705_out \
    op interface \
    ports { p_0_0_0_0_0_2705_out_i { I 8 vector } p_0_0_0_0_0_2705_out_o { O 8 vector } p_0_0_0_0_0_2705_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name p_0_0_0_0_0487_2702_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0487_2702_out \
    op interface \
    ports { p_0_0_0_0_0487_2702_out_i { I 8 vector } p_0_0_0_0_0487_2702_out_o { O 8 vector } p_0_0_0_0_0487_2702_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name p_0_0_0_0_0_1697_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0_1697_out \
    op interface \
    ports { p_0_0_0_0_0_1697_out_i { I 8 vector } p_0_0_0_0_0_1697_out_o { O 8 vector } p_0_0_0_0_0_1697_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name p_0_0_0_0_0487_1694_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0487_1694_out \
    op interface \
    ports { p_0_0_0_0_0487_1694_out_i { I 8 vector } p_0_0_0_0_0487_1694_out_o { O 8 vector } p_0_0_0_0_0487_1694_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name inpix_0_2_0_0_0_load681_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_inpix_0_2_0_0_0_load681_out \
    op interface \
    ports { inpix_0_2_0_0_0_load681_out_i { I 8 vector } inpix_0_2_0_0_0_load681_out_o { O 8 vector } inpix_0_2_0_0_0_load681_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name inpix_0_1_0_0_0_load679_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_inpix_0_1_0_0_0_load679_out \
    op interface \
    ports { inpix_0_1_0_0_0_load679_out_i { I 8 vector } inpix_0_1_0_0_0_load679_out_o { O 8 vector } inpix_0_1_0_0_0_load679_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name inpix_0_0_0_0_0_load677_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_inpix_0_0_0_0_0_load677_out \
    op interface \
    ports { inpix_0_0_0_0_0_load677_out_i { I 8 vector } inpix_0_0_0_0_0_load677_out_o { O 8 vector } inpix_0_0_0_0_0_load677_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name filt_res1_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_filt_res1_1_out \
    op interface \
    ports { filt_res1_1_out_i { I 64 vector } filt_res1_1_out_o { O 64 vector } filt_res1_1_out_o_ap_vld { O 1 bit } } \
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


