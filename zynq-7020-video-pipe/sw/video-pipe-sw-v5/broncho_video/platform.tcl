# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct G:\Project-Workspace\zynq-7020-video-pipe-3\sw\video-pipe-sw-v2\broncho_video\platform.tcl
# 
# OR launch xsct and run below command.
# source G:\Project-Workspace\zynq-7020-video-pipe-3\sw\video-pipe-sw-v2\broncho_video\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {broncho_video}\
-hw {G:\Project-Workspace\zynq-7020-video-pipe-3\sw\video-pipe-sw-v2\XSA\broncho_video_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {G:/Project-Workspace/zynq-7020-video-pipe-3/sw/video-pipe-sw-v2}

platform write
platform generate -domains 
platform active {broncho_video}
platform generate
bsp reload
platform generate -domains 
platform clean
platform generate
platform clean
platform active {broncho_video}
platform config -updatehw {/home/alen/repo/zynq-7020-video-pipe-3/sw/video-pipe-sw-v5/XSA/broncho_video_wrapper.xsa}
platform generate
platform clean
platform generate
platform generate
platform generate
