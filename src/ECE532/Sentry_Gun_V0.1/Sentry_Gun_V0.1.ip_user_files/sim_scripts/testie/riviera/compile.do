vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_3_3
vlib riviera/microblaze_v9_6_1
vlib riviera/lmb_v10_v3_0_8
vlib riviera/lmb_bram_if_cntlr_v4_0_9
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/axi_intc_v4_1_7
vlib riviera/mdm_v3_2_6
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_9
vlib riviera/fifo_generator_v13_1_1
vlib riviera/axi_data_fifo_v2_1_8
vlib riviera/axi_crossbar_v2_1_10
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_9
vlib riviera/lib_pkg_v1_0_2
vlib riviera/axi_timer_v2_0_11
vlib riviera/axi_protocol_converter_v2_1_9

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap blk_mem_gen_v8_3_3 riviera/blk_mem_gen_v8_3_3
vmap microblaze_v9_6_1 riviera/microblaze_v9_6_1
vmap lmb_v10_v3_0_8 riviera/lmb_v10_v3_0_8
vmap lmb_bram_if_cntlr_v4_0_9 riviera/lmb_bram_if_cntlr_v4_0_9
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_7 riviera/axi_intc_v4_1_7
vmap mdm_v3_2_6 riviera/mdm_v3_2_6
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_9 riviera/axi_register_slice_v2_1_9
vmap fifo_generator_v13_1_1 riviera/fifo_generator_v13_1_1
vmap axi_data_fifo_v2_1_8 riviera/axi_data_fifo_v2_1_8
vmap axi_crossbar_v2_1_10 riviera/axi_crossbar_v2_1_10
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_9 riviera/proc_sys_reset_v5_0_9
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap axi_timer_v2_0_11 riviera/axi_timer_v2_0_11
vmap axi_protocol_converter_v2_1_9 riviera/axi_protocol_converter_v2_1_9

vlog -work xil_defaultlib -v2k5 -sv "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_3_3 -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/blk_mem_gen_0/blk_mem_gen_v8_3_3/simulation/blk_mem_gen_v8_3.v" \
"../../../bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/blk_mem_gen_0/sim/blk_mem_gen_0.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_0.v" \
"../../../bd/testie/ipshared/msg.com/ov7670_stream_v1_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/I2C_OV7670_RGB444_Config.v" \
"../../../bd/testie/ipshared/msg.com/ov7670_stream_v1_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/I2C_Controller.v" \
"../../../bd/testie/ipshared/msg.com/ov7670_stream_v1_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/vga444.v" \
"../../../bd/testie/ipshared/msg.com/ov7670_stream_v1_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ov7670_capture.v" \
"../../../bd/testie/ipshared/msg.com/ov7670_stream_v1_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/I2C_AV_Config.v" \
"../../../bd/testie/ipshared/msg.com/ov7670_stream_v1_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/debounce.v" \
"../../../bd/testie/ipshared/msg.com/ov7670_stream_v1_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ov7670_top.v" \
"../../../bd/testie/ip/testie_ov7670_stream_0_0/sim/testie_ov7670_stream_0_0.v" \

vcom -work microblaze_v9_6_1 -93 \
"../../../ipstatic/microblaze_v9_6/hdl/microblaze_v9_6_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/testie/ip/testie_microblaze_0_0/sim/testie_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_8 -93 \
"../../../ipstatic/lmb_v10_v3_0/hdl/vhdl/lmb_v10.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/testie/ip/testie_dlmb_v10_1/sim/testie_dlmb_v10_1.vhd" \
"../../../bd/testie/ip/testie_ilmb_v10_1/sim/testie_ilmb_v10_1.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_9 -93 \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_funcs.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_primitives.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/xor18.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parity.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parityenable.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/checkbit_handler.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/correct_one_bit.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/pselect_mask.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/axi_interface.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_mux.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_cntlr.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/testie/ip/testie_dlmb_bram_if_cntlr_1/sim/testie_dlmb_bram_if_cntlr_1.vhd" \
"../../../bd/testie/ip/testie_ilmb_bram_if_cntlr_1/sim/testie_ilmb_bram_if_cntlr_1.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/testie/ip/testie_lmb_bram_1/sim/testie_lmb_bram_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work axi_intc_v4_1_7 -93 \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/double_synchronizer.vhd" \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/shared_ram_ivar.vhd" \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/pulse_synchronizer.vhd" \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/intc_core.vhd" \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/axi_intc.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/testie/ip/testie_microblaze_0_axi_intc_1/sim/testie_microblaze_0_axi_intc_1.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/testie/ipshared/xilinx.com/xlconcat_v2_1/xlconcat.v" \
"../../../bd/testie/ip/testie_microblaze_0_xlconcat_1/sim/testie_microblaze_0_xlconcat_1.v" \

vcom -work mdm_v3_2_6 -93 \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm_primitives.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/arbiter.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/srl_fifo.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/bus_master.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/jtag_control.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm_core.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/testie/ip/testie_mdm_1_1/sim/testie_mdm_1_1.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/testie/ipshared/msg.com/Sentry_Gun_V0.1/Sentry_Gun_V0.1.srcs/sources_1/new/redcount.v" \
"../../../bd/testie/ipshared/msg.com/Sentry_Gun_V0.1/Sentry_Gun_V0.1.srcs/sources_1/new/colourcounter.v" \
"../../../bd/testie/ipshared/msg.com/imgarray_axi_v2_0/hdl/imgarray_axi_v1_0_S00_AXI.v" \
"../../../bd/testie/ipshared/msg.com/imgarray_axi_v2_0/hdl/imgarray_axi_v1_0.v" \
"../../../bd/testie/ip/testie_imgarray_axi_0_0/sim/testie_imgarray_axi_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vlog -work axi_infrastructure_v1_1_0 -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_9 -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vlog -work fifo_generator_v13_1_1 -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/fifo_generator_v13_1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_1 -93 \
"../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_1 -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_8 -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_crossbar_v2_1_10 -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_si_transactor.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_splitter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_router.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/testie/ip/testie_xbar_1/sim/testie_xbar_1.v" \
"../../../bd/testie/ip/testie_clk_wiz_0/testie_clk_wiz_0_clk_wiz.v" \
"../../../bd/testie/ip/testie_clk_wiz_0/testie_clk_wiz_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work proc_sys_reset_v5_0_9 -93 \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/testie/ip/testie_rst_clk_wiz_100M_0/sim/testie_rst_clk_wiz_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../ipstatic/lib_pkg_v1_0/hdl/src/vhdl/lib_pkg.vhd" \

vcom -work axi_timer_v2_0_11 -93 \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/counter_f.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/mux_onehot_f.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/tc_types.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/timer_control.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/count_module.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/tc_core.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/axi_timer.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/testie/ip/testie_axi_timer_0_0/sim/testie_axi_timer_0_0.vhd" \
"../../../bd/testie/ip/testie_axi_timer_0_1/sim/testie_axi_timer_0_1.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/testie/hdl/testie.v" \

vlog -work axi_protocol_converter_v2_1_9 -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_a_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axilite_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_r_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_w_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b_downsizer.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_simple_fifo.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wrap_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_incr_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wr_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_rd_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_cmd_translator.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_b_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_r_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_aw_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_ar_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi_protocol_converter.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../Sentry_Gun_V0.1.srcs/sources_1/bd/testie/ip/testie_ov7670_stream_0_0/Lab_and_Project/532_pmod_camera_dist_new_version_2017/532_pmod_camera_dist/src/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/testie/ip/testie_auto_pc_0/sim/testie_auto_pc_0.v" \
"../../../bd/testie/ip/testie_auto_pc_1/sim/testie_auto_pc_1.v" \

vlog -work xil_defaultlib "glbl.v"

