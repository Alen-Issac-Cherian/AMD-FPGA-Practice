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
    id 106 \
    name src1_rows_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src1_rows_val \
    op interface \
    ports { src1_rows_val { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
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
    id 108 \
    name impop_data \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_impop_data \
    op interface \
    ports { impop_data_dout { I 30 vector } impop_data_empty_n { I 1 bit } impop_data_read { O 1 bit } impop_data_num_data_valid { I 3 vector } impop_data_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name out_mat_data \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_mat_data \
    op interface \
    ports { out_mat_data_din { O 30 vector } out_mat_data_full_n { I 1 bit } out_mat_data_write { O 1 bit } out_mat_data_num_data_valid { I 32 vector } out_mat_data_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name i_gain_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i_gain_0_val \
    op interface \
    ports { i_gain_0_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name i_gain_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i_gain_1_val \
    op interface \
    ports { i_gain_1_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name i_gain_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i_gain_2_val \
    op interface \
    ports { i_gain_2_val { I 32 vector } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


