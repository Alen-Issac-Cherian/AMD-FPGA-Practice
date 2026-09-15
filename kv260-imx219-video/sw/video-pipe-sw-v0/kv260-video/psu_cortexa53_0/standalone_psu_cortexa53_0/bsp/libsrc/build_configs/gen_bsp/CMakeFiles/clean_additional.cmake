# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v0/kv260-video/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/include/sleep.h"
  "/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v0/kv260-video/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/include/xiltimer.h"
  "/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v0/kv260-video/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/include/xtimer_config.h"
  "/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v0/kv260-video/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/lib/libxiltimer.a"
  )
endif()
