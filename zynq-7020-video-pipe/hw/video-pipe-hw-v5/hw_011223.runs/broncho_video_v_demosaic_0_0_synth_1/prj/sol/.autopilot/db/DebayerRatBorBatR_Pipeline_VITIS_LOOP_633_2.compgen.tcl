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
    id 150 \
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
    id 151 \
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
    id 131 \
    name p_0_2_0_0_09251529_lcssa1566_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_09251529_lcssa1566_i \
    op interface \
    ports { p_0_2_0_0_09251529_lcssa1566_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name p_0_1_0_0_09241527_lcssa1564_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_09241527_lcssa1564_i \
    op interface \
    ports { p_0_1_0_0_09241527_lcssa1564_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name p_0_0_0_0_09231525_lcssa1562_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_09231525_lcssa1562_i \
    op interface \
    ports { p_0_0_0_0_09231525_lcssa1562_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name p_0_0_0963_115121524_lcssa1560_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0963_115121524_lcssa1560_i \
    op interface \
    ports { p_0_0_0963_115121524_lcssa1560_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name p_0_0_0964_115101522_lcssa1558_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0964_115101522_lcssa1558_i \
    op interface \
    ports { p_0_0_0964_115101522_lcssa1558_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name p_0_0_0965_115081520_lcssa1556_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0965_115081520_lcssa1556_i \
    op interface \
    ports { p_0_0_0965_115081520_lcssa1556_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name p_0_2_0_0_09311517_lcssa1554_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_09311517_lcssa1554_i \
    op interface \
    ports { p_0_2_0_0_09311517_lcssa1554_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name p_0_1_0_0_09301515_lcssa1552_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_09301515_lcssa1552_i \
    op interface \
    ports { p_0_1_0_0_09301515_lcssa1552_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name p_0_0_0_0_09291513_lcssa1550_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_09291513_lcssa1550_i \
    op interface \
    ports { p_0_0_0_0_09291513_lcssa1550_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name p_0_0_0963_21452_lcssa1484_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0963_21452_lcssa1484_i \
    op interface \
    ports { p_0_0_0963_21452_lcssa1484_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name p_0_0_0964_21449_lcssa1482_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0964_21449_lcssa1482_i \
    op interface \
    ports { p_0_0_0964_21449_lcssa1482_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name p_0_0_0965_21446_lcssa1480_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0965_21446_lcssa1480_i \
    op interface \
    ports { p_0_0_0965_21446_lcssa1480_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name p_0_0_09631422_lcssa1472_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_09631422_lcssa1472_i \
    op interface \
    ports { p_0_0_09631422_lcssa1472_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name p_0_0_09641419_lcssa1470_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_09641419_lcssa1470_i \
    op interface \
    ports { p_0_0_09641419_lcssa1470_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name p_0_0_09651416_lcssa1468_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_09651416_lcssa1468_i \
    op interface \
    ports { p_0_0_09651416_lcssa1468_i { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
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
    id 147 \
    name cmp558_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp558_i \
    op interface \
    ports { cmp558_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name empty_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_51 \
    op interface \
    ports { empty_51 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
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
    id 152 \
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
    id 153 \
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
    id 154 \
    name imgG \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imgG \
    op interface \
    ports { imgG_dout { I 30 vector } imgG_num_data_valid { I 3 vector } imgG_fifo_cap { I 3 vector } imgG_empty_n { I 1 bit } imgG_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name red_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_red_i \
    op interface \
    ports { red_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name imgRB \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_imgRB \
    op interface \
    ports { imgRB_din { O 30 vector } imgRB_num_data_valid { I 3 vector } imgRB_fifo_cap { I 3 vector } imgRB_full_n { I 1 bit } imgRB_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name p_0_2_0_0_09251530_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_09251530_i_out \
    op interface \
    ports { p_0_2_0_0_09251530_i_out { O 10 vector } p_0_2_0_0_09251530_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name p_0_1_0_0_09241528_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_09241528_i_out \
    op interface \
    ports { p_0_1_0_0_09241528_i_out { O 10 vector } p_0_1_0_0_09241528_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name p_0_0_0_0_09231526_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_09231526_i_out \
    op interface \
    ports { p_0_0_0_0_09231526_i_out { O 10 vector } p_0_0_0_0_09231526_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name p_0_0_0963_115121523_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0963_115121523_i_out \
    op interface \
    ports { p_0_0_0963_115121523_i_out { O 10 vector } p_0_0_0963_115121523_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name p_0_0_0964_115101521_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0964_115101521_i_out \
    op interface \
    ports { p_0_0_0964_115101521_i_out { O 10 vector } p_0_0_0964_115101521_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name p_0_0_0965_115081519_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0965_115081519_i_out \
    op interface \
    ports { p_0_0_0965_115081519_i_out { O 10 vector } p_0_0_0965_115081519_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name p_0_2_0_0_09311518_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_09311518_i_out \
    op interface \
    ports { p_0_2_0_0_09311518_i_out { O 10 vector } p_0_2_0_0_09311518_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name p_0_1_0_0_09301516_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_09301516_i_out \
    op interface \
    ports { p_0_1_0_0_09301516_i_out { O 10 vector } p_0_1_0_0_09301516_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name p_0_0_0_0_09291514_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_09291514_i_out \
    op interface \
    ports { p_0_0_0_0_09291514_i_out { O 10 vector } p_0_0_0_0_09291514_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name p_0_0_0963_21451_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0963_21451_i_out \
    op interface \
    ports { p_0_0_0963_21451_i_out { O 10 vector } p_0_0_0963_21451_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name p_0_0_0964_21448_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0964_21448_i_out \
    op interface \
    ports { p_0_0_0964_21448_i_out { O 10 vector } p_0_0_0964_21448_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name p_0_0_0965_21445_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0965_21445_i_out \
    op interface \
    ports { p_0_0_0965_21445_i_out { O 10 vector } p_0_0_0965_21445_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name p_0_0_09631421_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_09631421_i_out \
    op interface \
    ports { p_0_0_09631421_i_out { O 10 vector } p_0_0_09631421_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name p_0_0_09641418_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_09641418_i_out \
    op interface \
    ports { p_0_0_09641418_i_out { O 10 vector } p_0_0_09641418_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name p_0_0_09651415_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_09651415_i_out \
    op interface \
    ports { p_0_0_09651415_i_out { O 10 vector } p_0_0_09651415_i_out_ap_vld { O 1 bit } } \
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


