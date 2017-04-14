connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292646019A"} -index 0
loadhw D:/Yufanfan/ECE532/Sentry_Gun_V0.1/Sentry_Gun_V0.1.sdk/testie_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292646019A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292646019A"} -index 0
dow D:/Yufanfan/ECE532/Sentry_Gun_V0.1/Sentry_Gun_V0.1.sdk/spotter/Debug/spotter.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292646019A"} -index 0
con
