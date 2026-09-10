onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib video_pipe_hw_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {video_pipe_hw.udo}

run 1000ns

quit -force
