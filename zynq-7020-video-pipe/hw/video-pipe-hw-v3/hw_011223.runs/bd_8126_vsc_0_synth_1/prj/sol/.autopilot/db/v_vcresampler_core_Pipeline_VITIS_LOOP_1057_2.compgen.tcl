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
    id 78 \
    name linebuf_y \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename linebuf_y \
    op interface \
    ports { linebuf_y_address0 { O 11 vector } linebuf_y_ce0 { O 1 bit } linebuf_y_we0 { O 1 bit } linebuf_y_d0 { O 8 vector } linebuf_y_address1 { O 11 vector } linebuf_y_ce1 { O 1 bit } linebuf_y_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf_y'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 79 \
    name linebuf_y_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename linebuf_y_1 \
    op interface \
    ports { linebuf_y_1_address0 { O 11 vector } linebuf_y_1_ce0 { O 1 bit } linebuf_y_1_we0 { O 1 bit } linebuf_y_1_d0 { O 8 vector } linebuf_y_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf_y_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 80 \
    name linebuf_c \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename linebuf_c \
    op interface \
    ports { linebuf_c_address0 { O 11 vector } linebuf_c_ce0 { O 1 bit } linebuf_c_we0 { O 1 bit } linebuf_c_d0 { O 8 vector } linebuf_c_address1 { O 11 vector } linebuf_c_ce1 { O 1 bit } linebuf_c_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf_c'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 81 \
    name linebuf_c_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename linebuf_c_1 \
    op interface \
    ports { linebuf_c_1_address0 { O 11 vector } linebuf_c_1_ce0 { O 1 bit } linebuf_c_1_we0 { O 1 bit } linebuf_c_1_d0 { O 8 vector } linebuf_c_1_address1 { O 11 vector } linebuf_c_1_ce1 { O 1 bit } linebuf_c_1_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf_c_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 82 \
    name linebuf_c_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linebuf_c_2 \
    op interface \
    ports { linebuf_c_2_address0 { O 11 vector } linebuf_c_2_ce0 { O 1 bit } linebuf_c_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf_c_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name loopWidth \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_loopWidth \
    op interface \
    ports { loopWidth { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name SrcYUV422 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SrcYUV422 \
    op interface \
    ports { SrcYUV422_din { O 24 vector } SrcYUV422_num_data_valid { I 5 vector } SrcYUV422_fifo_cap { I 5 vector } SrcYUV422_full_n { I 1 bit } SrcYUV422_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name icmp_ln1040 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln1040 \
    op interface \
    ports { icmp_ln1040 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name cmp287 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp287 \
    op interface \
    ports { cmp287 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name empty_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_25 \
    op interface \
    ports { empty_25 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
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
    id 76 \
    name cmp104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp104 \
    op interface \
    ports { cmp104 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name cmp36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp36 \
    op interface \
    ports { cmp36 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name spec_select \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_spec_select \
    op interface \
    ports { spec_select { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name SrcYUV \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SrcYUV \
    op interface \
    ports { SrcYUV_dout { I 24 vector } SrcYUV_num_data_valid { I 5 vector } SrcYUV_fifo_cap { I 5 vector } SrcYUV_empty_n { I 1 bit } SrcYUV_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name p_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out_i { I 8 vector } p_out_o { O 8 vector } p_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name p_0_1_0_0_0562_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0562_out \
    op interface \
    ports { p_0_1_0_0_0562_out_i { I 8 vector } p_0_1_0_0_0562_out_o { O 8 vector } p_0_1_0_0_0562_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name p_0_0371560_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0371560_out \
    op interface \
    ports { p_0_0371560_out_i { I 8 vector } p_0_0371560_out_o { O 8 vector } p_0_0371560_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name pix_0_2_0_0_0_load558_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_0_2_0_0_0_load558_out \
    op interface \
    ports { pix_0_2_0_0_0_load558_out_i { I 8 vector } pix_0_2_0_0_0_load558_out_o { O 8 vector } pix_0_2_0_0_0_load558_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name pix_0_1_0_0_0_load556_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_0_1_0_0_0_load556_out \
    op interface \
    ports { pix_0_1_0_0_0_load556_out_i { I 8 vector } pix_0_1_0_0_0_load556_out_o { O 8 vector } pix_0_1_0_0_0_load556_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name pix_0_0_0_0_0_load554_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_0_0_0_0_0_load554_out \
    op interface \
    ports { pix_0_0_0_0_0_load554_out_i { I 8 vector } pix_0_0_0_0_0_load554_out_o { O 8 vector } pix_0_0_0_0_0_load554_out_o_ap_vld { O 1 bit } } \
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
set InstName bd_8126_vsc_0_flow_control_loop_pipe_sequential_init_U
set CompName bd_8126_vsc_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix bd_8126_vsc_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


