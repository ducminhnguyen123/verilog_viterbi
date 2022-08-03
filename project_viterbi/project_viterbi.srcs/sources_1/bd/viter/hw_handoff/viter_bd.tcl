
################################################################
# This is a generated script based on design: viter
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
set scripts_vivado_version 2018.3
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
# source viter_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# compare_1, compare_2, compare_3, comparer_4, control, detect1, detect2, detect3, detect4, splitstring, state00, state01, state10, state11, traceback

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7vx485tffg1157-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name viter

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



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

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
  set clk [ create_bd_port -dir I -type clk clk ]
  set data_in [ create_bd_port -dir I -from 15 -to 0 data_in ]
  set done [ create_bd_port -dir O done ]
  set en [ create_bd_port -dir I en ]
  set mem_out [ create_bd_port -dir O -from 7 -to 0 mem_out ]
  set rst [ create_bd_port -dir I -type rst rst ]

  # Create instance: compare_1, and set properties
  set block_name compare_1
  set block_cell_name compare_1
  if { [catch {set compare_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $compare_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: compare_2, and set properties
  set block_name compare_2
  set block_cell_name compare_2
  if { [catch {set compare_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $compare_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: compare_3, and set properties
  set block_name compare_3
  set block_cell_name compare_3
  if { [catch {set compare_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $compare_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: comparer_4, and set properties
  set block_name comparer_4
  set block_cell_name comparer_4
  if { [catch {set comparer_4 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $comparer_4 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: control, and set properties
  set block_name control
  set block_cell_name control
  if { [catch {set control [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $control eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: detect1, and set properties
  set block_name detect1
  set block_cell_name detect1
  if { [catch {set detect1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $detect1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: detect2, and set properties
  set block_name detect2
  set block_cell_name detect2
  if { [catch {set detect2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $detect2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: detect3, and set properties
  set block_name detect3
  set block_cell_name detect3
  if { [catch {set detect3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $detect3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: detect4, and set properties
  set block_name detect4
  set block_cell_name detect4
  if { [catch {set detect4 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $detect4 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: splitstring, and set properties
  set block_name splitstring
  set block_cell_name splitstring
  if { [catch {set splitstring [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $splitstring eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: state00, and set properties
  set block_name state00
  set block_cell_name state00
  if { [catch {set state00 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $state00 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: state01, and set properties
  set block_name state01
  set block_cell_name state01
  if { [catch {set state01 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $state01 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: state10, and set properties
  set block_name state10
  set block_cell_name state10
  if { [catch {set state10 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $state10 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: state11, and set properties
  set block_name state11
  set block_cell_name state11
  if { [catch {set state11 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $state11 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: traceback, and set properties
  set block_name traceback
  set block_cell_name traceback
  if { [catch {set traceback [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $traceback eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net clk_0_1 [get_bd_ports clk] [get_bd_pins compare_1/clk] [get_bd_pins compare_2/clk] [get_bd_pins compare_3/clk] [get_bd_pins comparer_4/clk] [get_bd_pins control/clk] [get_bd_pins detect1/clk] [get_bd_pins detect2/clk] [get_bd_pins detect3/clk] [get_bd_pins detect4/clk] [get_bd_pins splitstring/clk] [get_bd_pins traceback/clk]
  connect_bd_net -net compare_1_0_differsum1 [get_bd_pins compare_1/differsum1] [get_bd_pins compare_3/differsum1] [get_bd_pins traceback/differsum1]
  connect_bd_net -net compare_1_0_mem_reg_1 [get_bd_pins compare_1/mem_reg_1] [get_bd_pins traceback/mem_reg_1]
  connect_bd_net -net compare_1_0_pre_state_1 [get_bd_pins compare_1/pre_state_1] [get_bd_pins traceback/pre_state1]
  connect_bd_net -net compare_2_0_differsum2 [get_bd_pins compare_1/differsum2] [get_bd_pins compare_2/differsum2] [get_bd_pins compare_3/differsum2] [get_bd_pins traceback/differsum2]
  connect_bd_net -net compare_2_0_mem_reg_2 [get_bd_pins compare_2/mem_reg_2] [get_bd_pins traceback/mem_reg_2]
  connect_bd_net -net compare_2_0_pre_state_2 [get_bd_pins compare_2/pre_state_2] [get_bd_pins traceback/pre_state2]
  connect_bd_net -net compare_3_0_differsum3 [get_bd_pins compare_2/differsum3] [get_bd_pins compare_3/differsum3] [get_bd_pins comparer_4/differsum3] [get_bd_pins traceback/differsum3]
  connect_bd_net -net compare_3_0_mem_reg_3 [get_bd_pins compare_3/mem_reg_3] [get_bd_pins traceback/mem_reg_3]
  connect_bd_net -net compare_3_0_pre_state_3 [get_bd_pins compare_3/pre_state_3] [get_bd_pins traceback/pre_state3]
  connect_bd_net -net comparer_4_0_differsum4 [get_bd_pins compare_2/differsum4] [get_bd_pins comparer_4/differsum4] [get_bd_pins traceback/differsum4]
  connect_bd_net -net comparer_4_0_mem_reg_4 [get_bd_pins comparer_4/mem_reg_4] [get_bd_pins traceback/mem_reg_4]
  connect_bd_net -net comparer_4_0_pre_state_4 [get_bd_pins comparer_4/pre_state_4] [get_bd_pins traceback/pre_state4]
  connect_bd_net -net control_0_flag [get_bd_pins compare_1/flag] [get_bd_pins compare_2/flag] [get_bd_pins compare_3/flag] [get_bd_pins comparer_4/flag] [get_bd_pins control/flag] [get_bd_pins detect1/flag] [get_bd_pins detect2/flag] [get_bd_pins detect3/flag] [get_bd_pins detect4/flag] [get_bd_pins splitstring/flag] [get_bd_pins traceback/flag]
  connect_bd_net -net data_in_0_1 [get_bd_ports data_in] [get_bd_pins splitstring/data_in]
  connect_bd_net -net detect1_0_count1 [get_bd_pins compare_1/count1] [get_bd_pins detect1/count1]
  connect_bd_net -net detect1_0_count3 [get_bd_pins compare_1/count3] [get_bd_pins detect1/count3]
  connect_bd_net -net detect2_0_count5 [get_bd_pins compare_2/count5] [get_bd_pins detect2/count5]
  connect_bd_net -net detect2_0_count7 [get_bd_pins compare_2/count7] [get_bd_pins detect2/count7]
  connect_bd_net -net detect3_0_count2 [get_bd_pins compare_3/count2] [get_bd_pins detect3/count2]
  connect_bd_net -net detect3_0_count4 [get_bd_pins compare_3/count4] [get_bd_pins detect3/count4]
  connect_bd_net -net detect4_0_count6 [get_bd_pins comparer_4/count6] [get_bd_pins detect4/count6]
  connect_bd_net -net detect4_0_count8 [get_bd_pins comparer_4/count8] [get_bd_pins detect4/count8]
  connect_bd_net -net en_0_1 [get_bd_ports en] [get_bd_pins compare_1/en] [get_bd_pins compare_2/en] [get_bd_pins compare_3/en] [get_bd_pins comparer_4/en] [get_bd_pins control/en] [get_bd_pins detect1/en] [get_bd_pins detect2/en] [get_bd_pins detect3/en] [get_bd_pins detect4/en] [get_bd_pins splitstring/en] [get_bd_pins state00/en] [get_bd_pins state01/en] [get_bd_pins state10/en] [get_bd_pins state11/en] [get_bd_pins traceback/en]
  connect_bd_net -net rst_0_1 [get_bd_ports rst] [get_bd_pins compare_1/rst] [get_bd_pins compare_2/rst] [get_bd_pins compare_3/rst] [get_bd_pins comparer_4/rst] [get_bd_pins control/rst] [get_bd_pins detect1/rst] [get_bd_pins detect2/rst] [get_bd_pins detect3/rst] [get_bd_pins detect4/rst] [get_bd_pins splitstring/rst] [get_bd_pins state00/rst] [get_bd_pins state01/rst] [get_bd_pins state10/rst] [get_bd_pins state11/rst] [get_bd_pins traceback/rst]
  connect_bd_net -net splitstring_0_bit_in [get_bd_pins detect1/bit_in] [get_bd_pins detect2/bit_in] [get_bd_pins detect3/bit_in] [get_bd_pins detect4/bit_in] [get_bd_pins splitstring/bit_in]
  connect_bd_net -net state00_0_bit_out_1 [get_bd_pins detect1/bit_out_1] [get_bd_pins state00/bit_out_1]
  connect_bd_net -net state00_0_bit_out_2 [get_bd_pins detect3/bit_out_2] [get_bd_pins state00/bit_out_2]
  connect_bd_net -net state00_0_reg_out1 [get_bd_pins compare_1/reg_out1] [get_bd_pins state00/reg_out1]
  connect_bd_net -net state00_0_reg_out2 [get_bd_pins compare_3/reg_out2] [get_bd_pins state00/reg_out2]
  connect_bd_net -net state01_0_bit_out_3 [get_bd_pins detect1/bit_out_3] [get_bd_pins state01/bit_out_3]
  connect_bd_net -net state01_0_bit_out_4 [get_bd_pins detect3/bit_out_4] [get_bd_pins state01/bit_out_4]
  connect_bd_net -net state01_0_reg_out3 [get_bd_pins compare_1/reg_out3] [get_bd_pins state01/reg_out3]
  connect_bd_net -net state01_0_reg_out4 [get_bd_pins compare_3/reg_out4] [get_bd_pins state01/reg_out4]
  connect_bd_net -net state10_0_bit_out_5 [get_bd_pins detect2/bit_out_5] [get_bd_pins state10/bit_out_5]
  connect_bd_net -net state10_0_bit_out_6 [get_bd_pins detect4/bit_out_6] [get_bd_pins state10/bit_out_6]
  connect_bd_net -net state10_0_reg_out5 [get_bd_pins compare_2/reg_out5] [get_bd_pins state10/reg_out5]
  connect_bd_net -net state10_0_reg_out6 [get_bd_pins comparer_4/reg_out6] [get_bd_pins state10/reg_out6]
  connect_bd_net -net state11_0_bit_out_7 [get_bd_pins detect2/bit_out_7] [get_bd_pins state11/bit_out_7]
  connect_bd_net -net state11_0_bit_out_8 [get_bd_pins detect4/bit_out_8] [get_bd_pins state11/bit_out_8]
  connect_bd_net -net state11_0_reg_out7 [get_bd_pins compare_2/reg_out7] [get_bd_pins state11/reg_out7]
  connect_bd_net -net state11_0_reg_out8 [get_bd_pins comparer_4/reg_out8] [get_bd_pins state11/reg_out8]
  connect_bd_net -net traceback_0_done [get_bd_ports done] [get_bd_pins traceback/done]
  connect_bd_net -net traceback_0_mem_out [get_bd_ports mem_out] [get_bd_pins traceback/mem_out]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


