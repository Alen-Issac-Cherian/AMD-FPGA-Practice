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
    id 195 \
    name lineBuffer_1_i \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lineBuffer_1_i \
    op interface \
    ports { lineBuffer_1_i_address0 { O 9 vector } lineBuffer_1_i_ce0 { O 1 bit } lineBuffer_1_i_we0 { O 1 bit } lineBuffer_1_i_d0 { O 30 vector } lineBuffer_1_i_address1 { O 9 vector } lineBuffer_1_i_ce1 { O 1 bit } lineBuffer_1_i_q1 { I 30 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lineBuffer_1_i'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 196 \
    name lineBuffer_i \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lineBuffer_i \
    op interface \
    ports { lineBuffer_i_address0 { O 9 vector } lineBuffer_i_ce0 { O 1 bit } lineBuffer_i_we0 { O 1 bit } lineBuffer_i_d0 { O 30 vector } lineBuffer_i_address1 { O 9 vector } lineBuffer_i_ce1 { O 1 bit } lineBuffer_i_q1 { I 30 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lineBuffer_i'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name p_0_0_01194_217901820_lcssa1856_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_01194_217901820_lcssa1856_i \
    op interface \
    ports { p_0_0_01194_217901820_lcssa1856_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name p_0_0_01195_217881818_lcssa1854_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_01195_217881818_lcssa1854_i \
    op interface \
    ports { p_0_0_01195_217881818_lcssa1854_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name p_0_0_01196_217861816_lcssa1852_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_01196_217861816_lcssa1852_i \
    op interface \
    ports { p_0_0_01196_217861816_lcssa1852_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name p_0_2_0_0_011621813_lcssa1850_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_011621813_lcssa1850_i \
    op interface \
    ports { p_0_2_0_0_011621813_lcssa1850_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name p_0_1_0_0_011611811_lcssa1848_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_011611811_lcssa1848_i \
    op interface \
    ports { p_0_1_0_0_011611811_lcssa1848_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name p_0_0_0_0_011601809_lcssa1846_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_011601809_lcssa1846_i \
    op interface \
    ports { p_0_0_0_0_011601809_lcssa1846_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name p_0_0_0117217961808_lcssa1844_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0117217961808_lcssa1844_i \
    op interface \
    ports { p_0_0_0117217961808_lcssa1844_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name p_0_0_0117317941806_lcssa1842_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0117317941806_lcssa1842_i \
    op interface \
    ports { p_0_0_0117317941806_lcssa1842_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name p_0_0_0117417921804_lcssa1840_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0117417921804_lcssa1840_i \
    op interface \
    ports { p_0_0_0117417921804_lcssa1840_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name p_0_2_0_0_011681721_lcssa1762_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_011681721_lcssa1762_i \
    op interface \
    ports { p_0_2_0_0_011681721_lcssa1762_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name p_0_1_0_0_011671718_lcssa1760_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_011671718_lcssa1760_i \
    op interface \
    ports { p_0_1_0_0_011671718_lcssa1760_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name p_0_0_0_0_011661715_lcssa1758_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_011661715_lcssa1758_i \
    op interface \
    ports { p_0_0_0_0_011661715_lcssa1758_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name loopWidth_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_loopWidth_i \
    op interface \
    ports { loopWidth_i { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name empty_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_52 \
    op interface \
    ports { empty_52 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name xor_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xor_i \
    op interface \
    ports { xor_i { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name cmp478_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp478_i \
    op interface \
    ports { cmp478_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name cmp59_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp59_i \
    op interface \
    ports { cmp59_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name imgRB \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imgRB \
    op interface \
    ports { imgRB_dout { I 30 vector } imgRB_num_data_valid { I 3 vector } imgRB_fifo_cap { I 3 vector } imgRB_empty_n { I 1 bit } imgRB_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name imgRgb \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_imgRgb \
    op interface \
    ports { imgRgb_din { O 30 vector } imgRgb_num_data_valid { I 3 vector } imgRgb_fifo_cap { I 3 vector } imgRgb_full_n { I 1 bit } imgRgb_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name p_0_0_01194_217901819_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_01194_217901819_i_out \
    op interface \
    ports { p_0_0_01194_217901819_i_out { O 10 vector } p_0_0_01194_217901819_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name p_0_0_01195_217881817_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_01195_217881817_i_out \
    op interface \
    ports { p_0_0_01195_217881817_i_out { O 10 vector } p_0_0_01195_217881817_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name p_0_0_01196_217861815_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_01196_217861815_i_out \
    op interface \
    ports { p_0_0_01196_217861815_i_out { O 10 vector } p_0_0_01196_217861815_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name right_2_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_2_i_out \
    op interface \
    ports { right_2_i_out { O 10 vector } right_2_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name right_1_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_1_i_out \
    op interface \
    ports { right_1_i_out { O 10 vector } right_1_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name right_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_right_i_out \
    op interface \
    ports { right_i_out { O 10 vector } right_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name p_0_0_0117217961807_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0117217961807_i_out \
    op interface \
    ports { p_0_0_0117217961807_i_out { O 10 vector } p_0_0_0117217961807_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name p_0_0_0117317941805_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0117317941805_i_out \
    op interface \
    ports { p_0_0_0117317941805_i_out { O 10 vector } p_0_0_0117317941805_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name p_0_0_0117417921803_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0117417921803_i_out \
    op interface \
    ports { p_0_0_0117417921803_i_out { O 10 vector } p_0_0_0117417921803_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name p_0_2_0_0_011681723_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_011681723_i_out \
    op interface \
    ports { p_0_2_0_0_011681723_i_out { O 10 vector } p_0_2_0_0_011681723_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name p_0_1_0_0_011671720_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_011671720_i_out \
    op interface \
    ports { p_0_1_0_0_011671720_i_out { O 10 vector } p_0_1_0_0_011671720_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name p_0_0_0_0_011661717_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_011661717_i_out \
    op interface \
    ports { p_0_0_0_0_011661717_i_out { O 10 vector } p_0_0_0_0_011661717_i_out_ap_vld { O 1 bit } } \
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
set InstName broncho_video_v_demosaic_0_0_flow_control_loop_pipe_sequential_init_U
set CompName broncho_video_v_demosaic_0_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix broncho_video_v_demosaic_0_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


