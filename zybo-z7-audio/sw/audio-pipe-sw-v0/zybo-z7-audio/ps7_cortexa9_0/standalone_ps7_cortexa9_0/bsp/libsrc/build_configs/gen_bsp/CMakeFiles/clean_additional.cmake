# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/alen/git/AMD-FPGA-Practice/zybo-z7-audio/sw/audio-pipe-sw-v0/zybo-z7-audio/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/sleep.h"
  "/home/alen/git/AMD-FPGA-Practice/zybo-z7-audio/sw/audio-pipe-sw-v0/zybo-z7-audio/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xiltimer.h"
  "/home/alen/git/AMD-FPGA-Practice/zybo-z7-audio/sw/audio-pipe-sw-v0/zybo-z7-audio/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xtimer_config.h"
  "/home/alen/git/AMD-FPGA-Practice/zybo-z7-audio/sw/audio-pipe-sw-v0/zybo-z7-audio/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/lib/libxiltimer.a"
  )
endif()
