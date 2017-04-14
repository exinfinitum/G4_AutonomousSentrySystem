onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SG_V0_opt

do {wave.do}

view wave
view structure
view signals

do {SG_V0.udo}

run -all

quit -force
