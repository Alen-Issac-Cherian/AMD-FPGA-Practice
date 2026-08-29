# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/alen/repo/zynq-7020-video-pipe-3/sw/video-pipe-sw-v5/setup_video_pipe_system/_ide/scripts/debugger_setup_video_pipe-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/alen/repo/zynq-7020-video-pipe-3/sw/video-pipe-sw-v5/setup_video_pipe_system/_ide/scripts/debugger_setup_video_pipe-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Platform Cable USB II 000018dd489601" && level==0 && jtag_device_ctx=="jsn-DLC10-000018dd489601-23727093-0"}
fpga -file /home/alen/repo/zynq-7020-video-pipe-3/sw/video-pipe-sw-v5/BIT/broncho_video_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/alen/repo/zynq-7020-video-pipe-3/sw/video-pipe-sw-v5/broncho_video/export/broncho_video/hw/broncho_video_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/alen/repo/zynq-7020-video-pipe-3/sw/video-pipe-sw-v5/setup_video_pipe/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/alen/repo/zynq-7020-video-pipe-3/sw/video-pipe-sw-v5/setup_video_pipe/Debug/setup_video_pipe.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
