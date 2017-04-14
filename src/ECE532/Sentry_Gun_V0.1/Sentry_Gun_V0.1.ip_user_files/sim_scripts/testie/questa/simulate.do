onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib testie_opt

do {wave.do}

view wave
view structure
view signals

do {testie.udo}

run -all

quit -force
