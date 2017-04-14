vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/microblaze_v9_6_1
vlib msim/lmb_v10_v3_0_8
vlib msim/lmb_bram_if_cntlr_v4_0_9
vlib msim/blk_mem_gen_v8_3_3
vlib msim/axi_lite_ipif_v3_0_4
vlib msim/mdm_v3_2_6
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_9
vlib msim/lib_pkg_v1_0_2
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/axi_uartlite_v2_0_13
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_9
vlib msim/fifo_generator_v13_1_1
vlib msim/axi_data_fifo_v2_1_8
vlib msim/axi_crossbar_v2_1_10
vlib msim/axi_protocol_converter_v2_1_9
vlib msim/axi_clock_converter_v2_1_8
vlib msim/axi_dwidth_converter_v2_1_9

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap microblaze_v9_6_1 msim/microblaze_v9_6_1
vmap lmb_v10_v3_0_8 msim/lmb_v10_v3_0_8
vmap lmb_bram_if_cntlr_v4_0_9 msim/lmb_bram_if_cntlr_v4_0_9
vmap blk_mem_gen_v8_3_3 msim/blk_mem_gen_v8_3_3
vmap axi_lite_ipif_v3_0_4 msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_6 msim/mdm_v3_2_6
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_9 msim/proc_sys_reset_v5_0_9
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_13 msim/axi_uartlite_v2_0_13
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_9 msim/axi_register_slice_v2_1_9
vmap fifo_generator_v13_1_1 msim/fifo_generator_v13_1_1
vmap axi_data_fifo_v2_1_8 msim/axi_data_fifo_v2_1_8
vmap axi_crossbar_v2_1_10 msim/axi_crossbar_v2_1_10
vmap axi_protocol_converter_v2_1_9 msim/axi_protocol_converter_v2_1_9
vmap axi_clock_converter_v2_1_8 msim/axi_clock_converter_v2_1_8
vmap axi_dwidth_converter_v2_1_9 msim/axi_dwidth_converter_v2_1_9

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v9_6_1 -64 -93 \
"../../../ipstatic/microblaze_v9_6/hdl/microblaze_v9_6_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/SG_V0/ip/SG_V0_microblaze_0_0/sim/SG_V0_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_8 -64 -93 \
"../../../ipstatic/lmb_v10_v3_0/hdl/vhdl/lmb_v10.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/SG_V0/ip/SG_V0_dlmb_v10_0/sim/SG_V0_dlmb_v10_0.vhd" \
"../../../bd/SG_V0/ip/SG_V0_ilmb_v10_0/sim/SG_V0_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_9 -64 -93 \
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

vcom -work xil_defaultlib -64 -93 \
"../../../bd/SG_V0/ip/SG_V0_dlmb_bram_if_cntlr_0/sim/SG_V0_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/SG_V0/ip/SG_V0_ilmb_bram_if_cntlr_0/sim/SG_V0_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_3_3 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/blk_mem_gen_v8_3/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/SG_V0/ip/SG_V0_lmb_bram_0/sim/SG_V0_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work mdm_v3_2_6 -64 -93 \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm_primitives.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/arbiter.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/srl_fifo.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/bus_master.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/jtag_control.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm_core.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/SG_V0/ip/SG_V0_mdm_1_0/sim/SG_V0_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/SG_V0/ip/SG_V0_clk_wiz_1_0/SG_V0_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/SG_V0/ip/SG_V0_clk_wiz_1_0/SG_V0_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work proc_sys_reset_v5_0_9 -64 -93 \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/SG_V0/ip/SG_V0_rst_clk_wiz_1_100M_0/sim/SG_V0_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../ipstatic/lib_pkg_v1_0/hdl/src/vhdl/lib_pkg.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/cntr_incr_decr_addn_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/dynshreg_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_rbu_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_f.vhd" \

vcom -work axi_uartlite_v2_0_13 -64 -93 \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/dynshreg_i_f.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/uartlite_tx.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/uartlite_rx.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/baudrate.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/uartlite_core.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/axi_uartlite.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/SG_V0/ip/SG_V0_axi_uartlite_0_0/sim/SG_V0_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_addr_decode.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_read.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg_bank.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_top.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_write.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_ar_channel.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_aw_channel.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_b_channel.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_arbiter.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_fsm.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_translator.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_fifo.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_incr_cmd.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_r_channel.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_simple_fifo.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wrap_cmd.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wr_cmd_fsm.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_w_channel.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axic_register_slice.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_register_slice.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_upsizer.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_a_upsizer.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_and.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_and.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_or.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_or.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_command_fifo.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel_static.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_r_upsizer.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_w_upsizer.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_select.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_common.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_state.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_col_mach.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_mc.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_common.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_axi.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_top.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_top.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/SG_V0_mig_7series_0_0_mig_sim.v" \
"../../../bd/SG_V0/ip/SG_V0_mig_7series_0_0/SG_V0_mig_7series_0_0/user_design/rtl/SG_V0_mig_7series_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
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

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_9 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vlog -work fifo_generator_v13_1_1 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/fifo_generator_v13_1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_1 -64 -93 \
"../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_1 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_8 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_crossbar_v2_1_10 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
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

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/SG_V0/ip/SG_V0_xbar_0/sim/SG_V0_xbar_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/SG_V0/ip/SG_V0_rst_mig_7series_0_81M_0/sim/SG_V0_rst_mig_7series_0_81M_0.vhd" \

vlog -work axi_protocol_converter_v2_1_9 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
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

vlog -work axi_clock_converter_v2_1_8 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_clock_converter_v2_1/hdl/verilog/axi_clock_converter_v2_1_axic_sync_clock_converter.v" \
"../../../ipstatic/axi_clock_converter_v2_1/hdl/verilog/axi_clock_converter_v2_1_axic_sample_cycle_ratio.v" \
"../../../ipstatic/axi_clock_converter_v2_1/hdl/verilog/axi_clock_converter_v2_1_axi_clock_converter.v" \

vlog -work axi_dwidth_converter_v2_1_9 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_a_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_b_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_r_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_w_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_axi_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_axi4lite_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_axi4lite_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_a_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_r_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_w_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_w_upsizer_pktfifo.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_r_upsizer_pktfifo.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_axi_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_top.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/SG_V0/ip/SG_V0_auto_ds_0/sim/SG_V0_auto_ds_0.v" \
"../../../bd/SG_V0/ip/SG_V0_auto_cc_0/sim/SG_V0_auto_cc_0.v" \
"../../../bd/SG_V0/ip/SG_V0_auto_pc_0/sim/SG_V0_auto_pc_0.v" \
"../../../bd/SG_V0/ip/SG_V0_auto_us_0/sim/SG_V0_auto_us_0.v" \
"../../../bd/SG_V0/hdl/SG_V0.v" \

vlog -work xil_defaultlib "glbl.v"

