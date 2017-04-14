## This file is a general .xdc for the Nexys4 DDR Rev. C
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Configured for ov7670_top on the NEXYS4 DDR board

## Clock signal
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports sys_clock]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports sys_clock]

## MOTORS
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS33} [get_ports {motor1}]
set_property -dict {PACKAGE_PIN F6 IOSTANDARD LVCMOS33} [get_ports {motor2}]

## LEDs
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { SW[0] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { SW[1] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { SW[2] }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[2]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { SW[3] }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { SW[4] }]; #IO_L12N_T1_MRCC_14 Sch=sw[4]
set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { SW[5] }]; #IO_L7N_T1_D10_14 Sch=sw[5]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { SW[6] }]; #IO_L17N_T2_A13_D29_14 Sch=sw[6]
set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { SW[7] }]; #IO_L5N_T0_D07_14 Sch=sw[7]
set_property -dict { PACKAGE_PIN T8    IOSTANDARD LVCMOS18 } [get_ports { SW[8] }]; #IO_L24N_T3_34 Sch=sw[8]
set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS18 } [get_ports { SW[9] }]; #IO_25_34 Sch=sw[9]
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { SW[10] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=sw[10]
set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { SW[11] }]; #IO_L23P_T3_A03_D19_14 Sch=sw[11]
set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { SW[12] }]; #IO_L24P_T3_35 Sch=sw[12]
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { SW[13] }]; #IO_L20P_T3_A08_D24_14 Sch=sw[13]
set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { SW[14] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=sw[14]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { SW[15] }]; #IO_L21P_T3_DQS_14 Sch=sw[15]



set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { LED[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }]; #IO_L8P_T1_D11_14 Sch=led[3]
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { LED[4] }]; #IO_L7P_T1_D09_14 Sch=led[4]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { LED[5] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { LED[6] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { LED[7] }]; #IO_L18P_T2_A12_D28_14 Sch=led[7]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { LED[8] }]; #IO_L16N_T2_A15_D31_14 Sch=led[8]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { LED[9] }]; #IO_L14N_T2_SRCC_14 Sch=led[9]
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { LED[10] }]; #IO_L22P_T3_A05_D21_14 Sch=led[10]
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { LED[11] }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=led[11]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { LED[12] }]; #IO_L16P_T2_CSI_B_14 Sch=led[12]
set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { LED[13] }]; #IO_L22N_T3_A04_D20_14 Sch=led[13]
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { LED[14] }]; #IO_L20N_T3_A07_D23_14 Sch=led[14]
set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { LED[15] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=led[15]
##Buttons

set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports BTNC]
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { BTNU }]; #IO_L4N_T0_D05_14 Sch=btnu
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { BTND }]; #IO_L9N_T1_DQS_D13_14 Sch=btnd

set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { BTNL }]; #IO_L12P_T1_MRCC_14 Sch=btnl
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { BTNR }]; #IO_L10N_T1_D15_14 Sch=btnr
##Pmod Headers


##Pmod Header JA

set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS33} [get_ports reset]
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports {OV7670_D[1]}]
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports {OV7670_D[3]}]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {OV7670_D[5]}]
set_property -dict {PACKAGE_PIN D17 IOSTANDARD LVCMOS33} [get_ports pwdn]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33} [get_ports {OV7670_D[0]}]
set_property -dict {PACKAGE_PIN F18 IOSTANDARD LVCMOS33} [get_ports {OV7670_D[2]}]
set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVCMOS33} [get_ports {OV7670_D[4]}]


##Pmod Header JB

set_property -dict {PACKAGE_PIN D14 IOSTANDARD LVCMOS33} [get_ports {OV7670_D[7]}]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS33} [get_ports OV7670_PCLK]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets OV7670_PCLK]

set_property -dict {PACKAGE_PIN G16 IOSTANDARD LVCMOS33} [get_ports OV7670_VSYNC]
set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVCMOS33} [get_ports OV7670_SIOC]
set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS33} [get_ports {OV7670_D[6]}]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports OV7670_XCLK]
set_property -dict {PACKAGE_PIN G13 IOSTANDARD LVCMOS33} [get_ports OV7670_HREF]
set_property PACKAGE_PIN H16 [get_ports OV7670_SIOD]
set_property IOSTANDARD LVCMOS33 [get_ports OV7670_SIOD]
set_property PULLUP true [get_ports OV7670_SIOD]


##VGA Connector

set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports {vga444_red[0]}]
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS33} [get_ports {vga444_red[1]}]
set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports {vga444_red[2]}]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports {vga444_red[3]}]

set_property -dict {PACKAGE_PIN C6 IOSTANDARD LVCMOS33} [get_ports {vga444_green[0]}]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports {vga444_green[1]}]
set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS33} [get_ports {vga444_green[2]}]
set_property -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS33} [get_ports {vga444_green[3]}]

set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports {vga444_blue[0]}]
set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports {vga444_blue[1]}]
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports {vga444_blue[2]}]
set_property -dict {PACKAGE_PIN D8 IOSTANDARD LVCMOS33} [get_ports {vga444_blue[3]}]

set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS33} [get_ports vga_hsync]
set_property -dict {PACKAGE_PIN B12 IOSTANDARD LVCMOS33} [get_ports vga_vsync]


connect_debug_port u_ila_0/probe0 [get_nets [list {testie_i/imgproc_1/inst/pixel_out[0]} {testie_i/imgproc_1/inst/pixel_out[1]} {testie_i/imgproc_1/inst/pixel_out[2]} {testie_i/imgproc_1/inst/pixel_out[3]} {testie_i/imgproc_1/inst/pixel_out[4]} {testie_i/imgproc_1/inst/pixel_out[5]} {testie_i/imgproc_1/inst/pixel_out[6]} {testie_i/imgproc_1/inst/pixel_out[7]} {testie_i/imgproc_1/inst/pixel_out[8]} {testie_i/imgproc_1/inst/pixel_out[9]} {testie_i/imgproc_1/inst/pixel_out[10]} {testie_i/imgproc_1/inst/pixel_out[11]} {testie_i/imgproc_1/inst/pixel_out[12]} {testie_i/imgproc_1/inst/pixel_out[13]} {testie_i/imgproc_1/inst/pixel_out[14]} {testie_i/imgproc_1/inst/pixel_out[15]}]]

connect_debug_port u_ila_0/probe0 [get_nets [list {testie_i/imgproc_2/inst/pixel_out[0]} {testie_i/imgproc_2/inst/pixel_out[1]} {testie_i/imgproc_2/inst/pixel_out[2]} {testie_i/imgproc_2/inst/pixel_out[3]} {testie_i/imgproc_2/inst/pixel_out[4]} {testie_i/imgproc_2/inst/pixel_out[5]} {testie_i/imgproc_2/inst/pixel_out[6]} {testie_i/imgproc_2/inst/pixel_out[7]} {testie_i/imgproc_2/inst/pixel_out[8]} {testie_i/imgproc_2/inst/pixel_out[9]} {testie_i/imgproc_2/inst/pixel_out[10]} {testie_i/imgproc_2/inst/pixel_out[11]} {testie_i/imgproc_2/inst/pixel_out[12]} {testie_i/imgproc_2/inst/pixel_out[13]} {testie_i/imgproc_2/inst/pixel_out[14]} {testie_i/imgproc_2/inst/pixel_out[15]}]]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets OV7670_XCLK_OBUF]
