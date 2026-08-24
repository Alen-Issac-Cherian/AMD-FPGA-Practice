# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 295 \
    name linebuf_c_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename linebuf_c_1 \
    op interface \
    ports { linebuf_c_1_address0 { O 11 vector } linebuf_c_1_ce0 { O 1 bit } linebuf_c_1_we0 { O 1 bit } linebuf_c_1_d0 { O 10 vector } linebuf_c_1_address1 { O 11 vector } linebuf_c_1_ce1 { O 1 bit } linebuf_c_1_q1 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf_c_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 298 \
    name linebuf_y \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename linebuf_y \
    op interface \
    ports { linebuf_y_address0 { O 11 vector } linebuf_y_ce0 { O 1 bit } linebuf_y_we0 { O 1 bit } linebuf_y_d0 { O 10 vector } linebuf_y_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf_y'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 299 \
    name linebuf_c \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename linebuf_c \
    op interface \
    ports { linebuf_c_address0 { O 11 vector } linebuf_c_ce0 { O 1 bit } linebuf_c_we0 { O 1 bit } linebuf_c_d0 { O 10 vector } linebuf_c_address1 { O 11 vector } linebuf_c_ce1 { O 1 bit } linebuf_c_q1 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf_c'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
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
    id 292 \
    name stream_out_420 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_out_420 \
    op interface \
    ports { stream_out_420_din { O 30 vector } stream_out_420_num_data_valid { I 5 vector } stream_out_420_fifo_cap { I 5 vector } stream_out_420_full_n { I 1 bit } stream_out_420_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
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
    id 294 \
    name cmp100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp100 \
    op interface \
    ports { cmp100 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name empty_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_31 \
    op interface \
    ports { empty_31 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name cmp33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp33 \
    op interface \
    ports { cmp33 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name stream_out_422 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_out_422 \
    op interface \
    ports { stream_out_422_dout { I 30 vector } stream_out_422_num_data_valid { I 5 vector } stream_out_422_fifo_cap { I 5 vector } stream_out_422_empty_n { I 1 bit } stream_out_422_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name p_0_0344504_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0344504_out \
    op interface \
    ports { p_0_0344504_out_i { I 10 vector } p_0_0344504_out_o { O 10 vector } p_0_0344504_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name pix_0_2_0_0_0_load502_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_0_2_0_0_0_load502_out \
    op interface \
    ports { pix_0_2_0_0_0_load502_out_i { I 10 vector } pix_0_2_0_0_0_load502_out_o { O 10 vector } pix_0_2_0_0_0_load502_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name pix_0_1_0_0_0_load500_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_0_1_0_0_0_load500_out \
    op interface \
    ports { pix_0_1_0_0_0_load500_out_i { I 10 vector } pix_0_1_0_0_0_load500_out_o { O 10 vector } pix_0_1_0_0_0_load500_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name pix_0_0_0_0_0_load498_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_0_0_0_0_0_load498_out \
    op interface \
    ports { pix_0_0_0_0_0_load498_out_i { I 10 vector } pix_0_0_0_0_0_load498_out_o { O 10 vector } pix_0_0_0_0_0_load498_out_o_ap_vld { O 1 bit } } \
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


