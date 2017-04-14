
################################################################
# This is a generated script based on design: testie
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source testie_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name testie

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]
  connect_bd_net -net microblaze_0_LMB_Rst [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set BTNC [ create_bd_port -dir I BTNC ]
  set BTND [ create_bd_port -dir I BTND ]
  set BTNL [ create_bd_port -dir I BTNL ]
  set BTNR [ create_bd_port -dir I BTNR ]
  set BTNU [ create_bd_port -dir I BTNU ]
  set LED [ create_bd_port -dir O -from 15 -to 0 LED ]
  set OV7670_D [ create_bd_port -dir I -from 7 -to 0 OV7670_D ]
  set OV7670_HREF [ create_bd_port -dir I OV7670_HREF ]
  set OV7670_PCLK [ create_bd_port -dir I OV7670_PCLK ]
  set OV7670_SIOC [ create_bd_port -dir O OV7670_SIOC ]
  set OV7670_SIOD [ create_bd_port -dir IO OV7670_SIOD ]
  set OV7670_VSYNC [ create_bd_port -dir I OV7670_VSYNC ]
  set OV7670_XCLK [ create_bd_port -dir O OV7670_XCLK ]
  set SW [ create_bd_port -dir I -from 15 -to 0 SW ]
  set motor1 [ create_bd_port -dir O motor1 ]
  set motor2 [ create_bd_port -dir O motor2 ]
  set pwdn [ create_bd_port -dir O pwdn ]
  set reset [ create_bd_port -dir O -type rst reset ]
  set reset_0 [ create_bd_port -dir I -type rst reset_0 ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset_0
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
CONFIG.PHASE {0.000} \
 ] $sys_clock
  set vga444_blue [ create_bd_port -dir O -from 3 -to 0 vga444_blue ]
  set vga444_green [ create_bd_port -dir O -from 3 -to 0 vga444_green ]
  set vga444_red [ create_bd_port -dir O -from 3 -to 0 vga444_red ]
  set vga_hsync [ create_bd_port -dir O vga_hsync ]
  set vga_vsync [ create_bd_port -dir O vga_vsync ]

  # Create instance: axi_gpio_btnc, and set properties
  set axi_gpio_btnc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_btnc ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.GPIO_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_btnc

  # Create instance: axi_gpio_btnd, and set properties
  set axi_gpio_btnd [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_btnd ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.GPIO_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_btnd

  # Create instance: axi_gpio_btnl, and set properties
  set axi_gpio_btnl [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_btnl ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.GPIO_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_btnl

  # Create instance: axi_gpio_btnr, and set properties
  set axi_gpio_btnr [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_btnr ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.GPIO_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_btnr

  # Create instance: axi_gpio_btnu, and set properties
  set axi_gpio_btnu [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_btnu ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.GPIO_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_btnu

  # Create instance: axi_gpio_inputcontrol, and set properties
  set axi_gpio_inputcontrol [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_inputcontrol ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {0} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.GPIO_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_inputcontrol

  # Create instance: axi_gpio_led, and set properties
  set axi_gpio_led [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_led ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {0} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO_WIDTH {16} \
CONFIG.GPIO_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_led

  # Create instance: axi_gpio_sw, and set properties
  set axi_gpio_sw [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_sw ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_GPIO_WIDTH {16} \
CONFIG.GPIO_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_sw

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: axi_timer_1, and set properties
  set axi_timer_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_1 ]

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.3 clk_wiz ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {130.958} \
CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
CONFIG.JITTER_SEL {No_Jitter} \
CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
CONFIG.MMCM_CLKIN1_PERIOD {10.0} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
CONFIG.MMCM_COMPENSATION {ZHOLD} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.RESET_PORT {resetn} \
CONFIG.RESET_TYPE {ACTIVE_LOW} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_COMPENSATION.VALUE_SRC {DEFAULT} \
 ] $clk_wiz

  # Create instance: imgarray_axi_0, and set properties
  set imgarray_axi_0 [ create_bd_cell -type ip -vlnv msg.com:user:imgarray_axi:2.0 imgarray_axi_0 ]

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:9.6 microblaze_0 ]
  set_property -dict [ list \
CONFIG.C_CACHE_BYTE_SIZE {65536} \
CONFIG.C_DCACHE_BYTE_SIZE {65536} \
CONFIG.C_DEBUG_ENABLED {1} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_I_LMB {1} \
CONFIG.C_USE_DCACHE {1} \
CONFIG.C_USE_ICACHE {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_intc, and set properties
  set microblaze_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_0_axi_intc ]
  set_property -dict [ list \
CONFIG.C_HAS_FAST {1} \
 ] $microblaze_0_axi_intc

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {12} \
CONFIG.NUM_SI {3} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: microblaze_0_xlconcat, and set properties
  set microblaze_0_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 microblaze_0_xlconcat ]

  # Create instance: ov7670_stream_0, and set properties
  set ov7670_stream_0 [ create_bd_cell -type ip -vlnv msg.com:user:ov7670_stream:1.0 ov7670_stream_0 ]

  # Create instance: rst_clk_wiz_100M, and set properties
  set rst_clk_wiz_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_100M ]
  set_property -dict [ list \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_clk_wiz_100M

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DC [get_bd_intf_pins microblaze_0/M_AXI_DC] [get_bd_intf_pins microblaze_0_axi_periph/S01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_IC [get_bd_intf_pins microblaze_0/M_AXI_IC] [get_bd_intf_pins microblaze_0_axi_periph/S02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins imgarray_axi_0/S00_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins axi_timer_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins axi_timer_1/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins axi_gpio_btnd/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M05_AXI [get_bd_intf_pins axi_gpio_btnu/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M06_AXI [get_bd_intf_pins axi_gpio_btnl/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M07_AXI [get_bd_intf_pins axi_gpio_btnr/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M08_AXI [get_bd_intf_pins axi_gpio_btnc/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M09_AXI [get_bd_intf_pins axi_gpio_sw/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M09_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M10_AXI [get_bd_intf_pins axi_gpio_led/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M10_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M11_AXI [get_bd_intf_pins axi_gpio_inputcontrol/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M11_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_intc_axi [get_bd_intf_pins microblaze_0_axi_intc/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_interrupt [get_bd_intf_pins microblaze_0/INTERRUPT] [get_bd_intf_pins microblaze_0_axi_intc/interrupt]

  # Create port connections
  connect_bd_net -net BTNC_1 [get_bd_ports BTNC] [get_bd_pins axi_gpio_btnc/gpio_io_i] [get_bd_pins ov7670_stream_0/BTNC]
  connect_bd_net -net BTNL_1 [get_bd_ports BTNL] [get_bd_pins axi_gpio_btnl/gpio_io_i]
  connect_bd_net -net BTNR_1 [get_bd_ports BTNR] [get_bd_pins axi_gpio_btnr/gpio_io_i]
  connect_bd_net -net Net [get_bd_ports OV7670_SIOD] [get_bd_pins ov7670_stream_0/OV7670_SIOD]
  connect_bd_net -net OV7670_D_1 [get_bd_ports OV7670_D] [get_bd_pins ov7670_stream_0/OV7670_D]
  connect_bd_net -net OV7670_HREF_1 [get_bd_ports OV7670_HREF] [get_bd_pins ov7670_stream_0/OV7670_HREF]
  connect_bd_net -net OV7670_PCLK_1 [get_bd_ports OV7670_PCLK] [get_bd_pins ov7670_stream_0/OV7670_PCLK]
  connect_bd_net -net OV7670_VSYNC_1 [get_bd_ports OV7670_VSYNC] [get_bd_pins ov7670_stream_0/OV7670_VSYNC]
  connect_bd_net -net SW_1_1 [get_bd_ports BTND] [get_bd_pins axi_gpio_btnd/gpio_io_i]
  connect_bd_net -net axi_gpio_btnd1_gpio_io_o [get_bd_pins axi_gpio_inputcontrol/gpio_io_o] [get_bd_pins imgarray_axi_0/SW]
  connect_bd_net -net axi_gpio_sw1_gpio_io_o [get_bd_ports LED] [get_bd_pins axi_gpio_led/gpio_io_o]
  connect_bd_net -net axi_timer_0_interrupt [get_bd_pins axi_timer_0/interrupt] [get_bd_pins microblaze_0_xlconcat/In0]
  connect_bd_net -net axi_timer_0_pwm0 [get_bd_ports motor1] [get_bd_pins axi_timer_0/pwm0]
  connect_bd_net -net axi_timer_1_interrupt [get_bd_pins axi_timer_1/interrupt] [get_bd_pins microblaze_0_xlconcat/In1]
  connect_bd_net -net axi_timer_1_pwm0 [get_bd_ports motor2] [get_bd_pins axi_timer_1/pwm0]
  connect_bd_net -net clk_wiz_locked [get_bd_pins clk_wiz/locked] [get_bd_pins rst_clk_wiz_100M/dcm_locked]
  connect_bd_net -net gpio_io_i_1 [get_bd_ports SW] [get_bd_pins axi_gpio_sw/gpio_io_i]
  connect_bd_net -net imgarray_axi_0_pixel_output [get_bd_pins imgarray_axi_0/pixel_output] [get_bd_pins ov7670_stream_0/pixel_modified]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_gpio_btnc/s_axi_aclk] [get_bd_pins axi_gpio_btnd/s_axi_aclk] [get_bd_pins axi_gpio_btnl/s_axi_aclk] [get_bd_pins axi_gpio_btnr/s_axi_aclk] [get_bd_pins axi_gpio_btnu/s_axi_aclk] [get_bd_pins axi_gpio_inputcontrol/s_axi_aclk] [get_bd_pins axi_gpio_led/s_axi_aclk] [get_bd_pins axi_gpio_sw/s_axi_aclk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_timer_1/s_axi_aclk] [get_bd_pins clk_wiz/clk_out1] [get_bd_pins imgarray_axi_0/s00_axi_aclk] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_intc/processor_clk] [get_bd_pins microblaze_0_axi_intc/s_axi_aclk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/M05_ACLK] [get_bd_pins microblaze_0_axi_periph/M06_ACLK] [get_bd_pins microblaze_0_axi_periph/M07_ACLK] [get_bd_pins microblaze_0_axi_periph/M08_ACLK] [get_bd_pins microblaze_0_axi_periph/M09_ACLK] [get_bd_pins microblaze_0_axi_periph/M10_ACLK] [get_bd_pins microblaze_0_axi_periph/M11_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_axi_periph/S01_ACLK] [get_bd_pins microblaze_0_axi_periph/S02_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins ov7670_stream_0/CLK100MHZ] [get_bd_pins rst_clk_wiz_100M/slowest_sync_clk]
  connect_bd_net -net microblaze_0_intr [get_bd_pins microblaze_0_axi_intc/intr] [get_bd_pins microblaze_0_xlconcat/dout]
  connect_bd_net -net ov7670_stream_0_OV7670_SIOC [get_bd_ports OV7670_SIOC] [get_bd_pins ov7670_stream_0/OV7670_SIOC]
  connect_bd_net -net ov7670_stream_0_OV7670_XCLK [get_bd_ports OV7670_XCLK] [get_bd_pins imgarray_axi_0/pixel_clock] [get_bd_pins ov7670_stream_0/OV7670_XCLK]
  connect_bd_net -net ov7670_stream_0_display_pixel [get_bd_pins imgarray_axi_0/pixel_on] [get_bd_pins ov7670_stream_0/display_pixel]
  connect_bd_net -net ov7670_stream_0_pixel [get_bd_pins imgarray_axi_0/pixel_in] [get_bd_pins ov7670_stream_0/pixel]
  connect_bd_net -net ov7670_stream_0_pwdn [get_bd_ports pwdn] [get_bd_pins ov7670_stream_0/pwdn]
  connect_bd_net -net ov7670_stream_0_reset [get_bd_ports reset] [get_bd_pins ov7670_stream_0/reset]
  connect_bd_net -net ov7670_stream_0_vga444_blue [get_bd_ports vga444_blue] [get_bd_pins ov7670_stream_0/vga444_blue]
  connect_bd_net -net ov7670_stream_0_vga444_green [get_bd_ports vga444_green] [get_bd_pins ov7670_stream_0/vga444_green]
  connect_bd_net -net ov7670_stream_0_vga444_red [get_bd_ports vga444_red] [get_bd_pins ov7670_stream_0/vga444_red]
  connect_bd_net -net ov7670_stream_0_vga_hsync [get_bd_ports vga_hsync] [get_bd_pins ov7670_stream_0/vga_hsync]
  connect_bd_net -net ov7670_stream_0_vga_vsync [get_bd_ports vga_vsync] [get_bd_pins ov7670_stream_0/vga_vsync]
  connect_bd_net -net reset_0_1 [get_bd_ports reset_0] [get_bd_pins clk_wiz/resetn] [get_bd_pins rst_clk_wiz_100M/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_100M_interconnect_aresetn [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_100M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins rst_clk_wiz_100M/mb_reset]
  connect_bd_net -net rst_clk_wiz_100M_peripheral_aresetn [get_bd_pins axi_gpio_btnc/s_axi_aresetn] [get_bd_pins axi_gpio_btnd/s_axi_aresetn] [get_bd_pins axi_gpio_btnl/s_axi_aresetn] [get_bd_pins axi_gpio_btnr/s_axi_aresetn] [get_bd_pins axi_gpio_btnu/s_axi_aresetn] [get_bd_pins axi_gpio_inputcontrol/s_axi_aresetn] [get_bd_pins axi_gpio_led/s_axi_aresetn] [get_bd_pins axi_gpio_sw/s_axi_aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_timer_1/s_axi_aresetn] [get_bd_pins imgarray_axi_0/s00_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/M05_ARESETN] [get_bd_pins microblaze_0_axi_periph/M06_ARESETN] [get_bd_pins microblaze_0_axi_periph/M07_ARESETN] [get_bd_pins microblaze_0_axi_periph/M08_ARESETN] [get_bd_pins microblaze_0_axi_periph/M09_ARESETN] [get_bd_pins microblaze_0_axi_periph/M10_ARESETN] [get_bd_pins microblaze_0_axi_periph/M11_ARESETN] [get_bd_pins microblaze_0_axi_periph/S01_ARESETN] [get_bd_pins microblaze_0_axi_periph/S02_ARESETN] [get_bd_pins rst_clk_wiz_100M/peripheral_aresetn]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz/clk_in1]
  connect_bd_net -net use_external_1 [get_bd_ports BTNU] [get_bd_pins axi_gpio_btnu/gpio_io_i] [get_bd_pins ov7670_stream_0/use_external]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x00050000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_btnc/S_AXI/Reg] SEG_axi_gpio_btnc_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00050000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_gpio_btnc/S_AXI/Reg] SEG_axi_gpio_btnc_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40020000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_sw/S_AXI/Reg] SEG_axi_gpio_btnd1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40020000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_gpio_sw/S_AXI/Reg] SEG_axi_gpio_btnd1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40030000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_inputcontrol/S_AXI/Reg] SEG_axi_gpio_btnd1_Reg1
  create_bd_addr_seg -range 0x00010000 -offset 0x40030000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_gpio_inputcontrol/S_AXI/Reg] SEG_axi_gpio_btnd1_Reg3
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_btnd/S_AXI/Reg] SEG_axi_gpio_btnd_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_gpio_btnd/S_AXI/Reg] SEG_axi_gpio_btnd_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00030000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_btnl/S_AXI/Reg] SEG_axi_gpio_btnl_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00030000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_gpio_btnl/S_AXI/Reg] SEG_axi_gpio_btnl_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00040000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_btnr/S_AXI/Reg] SEG_axi_gpio_btnr_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00040000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_gpio_btnr/S_AXI/Reg] SEG_axi_gpio_btnr_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_btnu/S_AXI/Reg] SEG_axi_gpio_btnu_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_gpio_btnu/S_AXI/Reg] SEG_axi_gpio_btnu_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00060000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_led/S_AXI/Reg] SEG_axi_gpio_sw1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00060000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_gpio_led/S_AXI/Reg] SEG_axi_gpio_sw1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00020000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_timer_1/S_AXI/Reg] SEG_axi_timer_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00020000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_timer_1/S_AXI/Reg] SEG_axi_timer_1_Reg
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs imgarray_axi_0/S00_AXI/S00_AXI_reg] SEG_imgarray_axi_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs imgarray_axi_0/S00_AXI/S00_AXI_reg] SEG_imgarray_axi_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port vga_hsync -pg 1 -y 180 -defaultsOSRD
preplace port pwdn -pg 1 -y 220 -defaultsOSRD
preplace port BTNU -pg 1 -y 210 -defaultsOSRD
preplace port OV7670_XCLK -pg 1 -y 20 -defaultsOSRD
preplace port OV7670_HREF -pg 1 -y 130 -defaultsOSRD
preplace port OV7670_VSYNC -pg 1 -y 110 -defaultsOSRD
preplace port sys_clock -pg 1 -y -610 -defaultsOSRD
preplace port OV7670_SIOC -pg 1 -y 40 -defaultsOSRD
preplace port BTNL -pg 1 -y 260 -defaultsOSRD
preplace port OV7670_SIOD -pg 1 -y 60 -defaultsOSRD
preplace port OV7670_PCLK -pg 1 -y 150 -defaultsOSRD
preplace port reset_0 -pg 1 -y -650 -defaultsOSRD
preplace port BTNC -pg 1 -y 190 -defaultsOSRD
preplace port motor1 -pg 1 -y -740 -defaultsOSRD
preplace port BTND -pg 1 -y -60 -defaultsOSRD
preplace port vga_vsync -pg 1 -y 200 -defaultsOSRD
preplace port BTNR -pg 1 -y 330 -defaultsOSRD
preplace port motor2 -pg 1 -y -550 -defaultsOSRD
preplace port reset -pg 1 -y 240 -defaultsOSRD
preplace portBus vga444_blue -pg 1 -y 160 -defaultsOSRD
preplace portBus vga444_red -pg 1 -y 120 -defaultsOSRD
preplace portBus OV7670_D -pg 1 -y 170 -defaultsOSRD
preplace portBus LED -pg 1 -y 560 -defaultsOSRD
preplace portBus SW -pg 1 -y 680 -defaultsOSRD
preplace portBus vga444_green -pg 1 -y 140 -defaultsOSRD
preplace inst axi_gpio_btnu -pg 1 -lvl 1 -y 360 -defaultsOSRD
preplace inst clk_wiz -pg 1 -lvl 3 -y -590 -defaultsOSRD
preplace inst imgarray_axi_0 -pg 1 -lvl 3 -y -30 -defaultsOSRD
preplace inst axi_gpio_sw -pg 1 -lvl 1 -y 670 -defaultsOSRD
preplace inst microblaze_0_axi_periph -pg 1 -lvl 5 -y -260 -defaultsOSRD
preplace inst axi_gpio_led -pg 1 -lvl 4 -y 550 -defaultsOSRD
preplace inst axi_gpio_btnl -pg 1 -lvl 1 -y 550 -defaultsOSRD
preplace inst axi_timer_0 -pg 1 -lvl 7 -y -760 -defaultsOSRD
preplace inst microblaze_0_xlconcat -pg 1 -lvl 6 -y -730 -defaultsOSRD
preplace inst axi_timer_1 -pg 1 -lvl 7 -y -550 -defaultsOSRD
preplace inst mdm_1 -pg 1 -lvl 3 -y -720 -defaultsOSRD
preplace inst microblaze_0_axi_intc -pg 1 -lvl 6 -y -440 -defaultsOSRD
preplace inst axi_gpio_btnc -pg 1 -lvl 2 -y 290 -defaultsOSRD
preplace inst rst_clk_wiz_100M -pg 1 -lvl 4 -y -510 -defaultsOSRD
preplace inst microblaze_0 -pg 1 -lvl 3 -y -460 -defaultsOSRD
preplace inst axi_gpio_btnd -pg 1 -lvl 1 -y 220 -defaultsOSRD
preplace inst axi_gpio_btnr -pg 1 -lvl 2 -y 610 -defaultsOSRD
preplace inst microblaze_0_local_memory -pg 1 -lvl 5 -y -820 -defaultsOSRD
preplace inst ov7670_stream_0 -pg 1 -lvl 5 -y 320 -defaultsOSRD
preplace inst axi_gpio_inputcontrol -pg 1 -lvl 2 -y 490 -defaultsOSRD
preplace netloc rst_clk_wiz_100M_mb_reset 1 2 3 NJ -370 NJ -370 1410
preplace netloc clk_wiz_locked 1 3 1 1040
preplace netloc OV7670_HREF_1 1 0 5 NJ 100 NJ 100 NJ 100 NJ 100 NJ
preplace netloc microblaze_0_axi_periph_M08_AXI 1 1 5 190 -660 NJ -660 NJ -660 NJ -660 1870
preplace netloc microblaze_0_axi_periph_M04_AXI 1 0 6 -190 -880 NJ -880 NJ -880 NJ -880 NJ -730 1890
preplace netloc ov7670_stream_0_pixel 1 2 4 NJ 480 NJ 480 NJ 510 1870
preplace netloc ov7670_stream_0_vga_vsync 1 5 3 NJ 200 NJ 200 NJ
preplace netloc ov7670_stream_0_vga444_green 1 5 3 NJ 140 NJ 140 NJ
preplace netloc microblaze_0_intr 1 5 2 2040 -800 2320
preplace netloc ov7670_stream_0_vga444_red 1 5 3 NJ 120 NJ 120 NJ
preplace netloc OV7670_D_1 1 0 5 NJ 90 NJ 90 NJ 90 NJ 90 NJ
preplace netloc BTNR_1 1 0 3 NJ 60 NJ 60 480
preplace netloc microblaze_0_Clk 1 0 7 -150 40 NJ 20 NJ -360 NJ -630 1480 150 1980 -550 2330
preplace netloc use_external_1 1 0 5 NJ 70 NJ 370 NJ 370 NJ 370 NJ
preplace netloc microblaze_0_axi_periph_M06_AXI 1 0 6 -170 -860 NJ -860 NJ -860 NJ -860 NJ -720 1910
preplace netloc microblaze_0_axi_periph_M03_AXI 1 5 2 1960 -600 NJ
preplace netloc microblaze_0_intc_axi 1 5 1 1970
preplace netloc microblaze_0_interrupt 1 2 5 NJ -780 NJ -780 NJ -750 NJ -790 2310
preplace netloc gpio_io_i_1 1 0 2 NJ 740 120
preplace netloc axi_timer_0_pwm0 1 7 1 2580
preplace netloc ov7670_stream_0_vga444_blue 1 5 3 NJ 160 NJ 160 NJ
preplace netloc microblaze_0_axi_periph_M10_AXI 1 3 3 1090 -670 NJ -670 1880
preplace netloc microblaze_0_M_AXI_DC 1 3 2 NJ -620 NJ
preplace netloc microblaze_0_ilmb_1 1 3 2 NJ -810 NJ
preplace netloc sys_clock_1 1 0 3 NJ -610 NJ -610 480
preplace netloc ov7670_stream_0_pwdn 1 5 3 NJ 220 NJ 220 NJ
preplace netloc OV7670_PCLK_1 1 0 5 NJ 150 NJ 150 NJ 150 NJ 150 NJ
preplace netloc microblaze_0_axi_periph_M05_AXI 1 0 6 -180 -870 NJ -870 NJ -870 NJ -870 NJ -740 1930
preplace netloc microblaze_0_axi_dp 1 3 2 NJ -600 NJ
preplace netloc ov7670_stream_0_vga_hsync 1 5 3 NJ 180 NJ 180 NJ
preplace netloc axi_gpio_sw1_gpio_io_o 1 4 4 NJ 560 NJ 560 NJ 560 NJ
preplace netloc rst_clk_wiz_100M_interconnect_aresetn 1 4 1 1420
preplace netloc ov7670_stream_0_OV7670_XCLK 1 2 6 NJ 470 NJ 470 NJ 490 2040 20 NJ 20 NJ
preplace netloc microblaze_0_axi_periph_M01_AXI 1 2 4 NJ -650 NJ -680 NJ -680 1860
preplace netloc microblaze_0_M_AXI_IC 1 3 2 NJ -610 NJ
preplace netloc ov7670_stream_0_reset 1 5 3 NJ 240 NJ 240 NJ
preplace netloc microblaze_0_axi_periph_M07_AXI 1 1 5 170 -850 NJ -850 NJ -850 NJ -710 1900
preplace netloc microblaze_0_axi_periph_M02_AXI 1 5 2 1950 -810 NJ
preplace netloc microblaze_0_dlmb_1 1 3 2 NJ -840 NJ
preplace netloc BTNL_1 1 0 2 NJ 120 120
preplace netloc axi_timer_1_pwm0 1 7 1 2580
preplace netloc SW_1_1 1 0 2 NJ -60 130
preplace netloc Net 1 5 3 NJ 60 NJ 60 NJ
preplace netloc OV7670_VSYNC_1 1 0 5 NJ 110 NJ 110 NJ 110 NJ 110 NJ
preplace netloc microblaze_0_debug 1 2 2 NJ -800 NJ
preplace netloc axi_gpio_btnd1_gpio_io_o 1 2 1 500
preplace netloc axi_timer_1_interrupt 1 5 3 1990 -860 NJ -860 2560
preplace netloc reset_0_1 1 0 4 NJ -650 NJ -650 500 -810 1000
preplace netloc imgarray_axi_0_pixel_output 1 3 2 NJ -30 NJ
preplace netloc BTNC_1 1 0 5 NJ 140 NJ 140 NJ 300 NJ 300 NJ
preplace netloc ov7670_stream_0_OV7670_SIOC 1 5 3 NJ 40 NJ 40 NJ
preplace netloc microblaze_0_axi_periph_M11_AXI 1 1 5 180 -820 NJ -820 NJ -820 NJ -690 1940
preplace netloc microblaze_0_axi_periph_M09_AXI 1 0 6 -160 -830 NJ -830 NJ -830 NJ -830 NJ -700 1920
preplace netloc axi_timer_0_interrupt 1 5 3 1960 -880 NJ -880 2570
preplace netloc rst_clk_wiz_100M_peripheral_aresetn 1 0 7 -140 290 NJ 160 NJ 160 NJ 160 1420 140 NJ -540 2340
preplace netloc ov7670_stream_0_display_pixel 1 2 4 NJ 450 NJ 450 NJ 500 1860
levelinfo -pg 1 -270 -10 360 770 1250 1710 2200 2450 2600 -top -890 -bot 760
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


