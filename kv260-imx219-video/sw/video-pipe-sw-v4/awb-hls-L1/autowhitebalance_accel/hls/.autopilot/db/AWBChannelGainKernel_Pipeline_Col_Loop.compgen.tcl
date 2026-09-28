# This script segment is generated automatically by AutoPilot

set name autowhitebalance_accel_mul_32ns_10ns_42_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
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
    id 51 \
    name src1_cols_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src1_cols_val \
    op interface \
    ports { src1_cols_val { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name in_mat_data \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_mat_data \
    op interface \
    ports { in_mat_data_dout { I 30 vector } in_mat_data_empty_n { I 1 bit } in_mat_data_read { O 1 bit } in_mat_data_num_data_valid { I 3 vector } in_mat_data_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name impop_data \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_impop_data \
    op interface \
    ports { impop_data_din { O 30 vector } impop_data_full_n { I 1 bit } impop_data_write { O 1 bit } impop_data_num_data_valid { I 32 vector } impop_data_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name zext_ln176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln176 \
    op interface \
    ports { zext_ln176 { I 19 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name add_i_i76837_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_add_i_i76837_out \
    op interface \
    ports { add_i_i76837_out_i { I 40 vector } add_i_i76837_out_o { O 40 vector } add_i_i76837_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name add_i_i85735_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_add_i_i85735_out \
    op interface \
    ports { add_i_i85735_out_i { I 40 vector } add_i_i85735_out_o { O 40 vector } add_i_i85735_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name add_i_i94833_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_add_i_i94833_out \
    op interface \
    ports { add_i_i94833_out_i { I 40 vector } add_i_i94833_out_o { O 40 vector } add_i_i94833_out_o_ap_vld { O 1 bit } } \
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
set InstName autowhitebalance_accel_flow_control_loop_pipe_sequential_init_U
set CompName autowhitebalance_accel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix autowhitebalance_accel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


