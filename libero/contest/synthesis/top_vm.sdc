# Written by Synplify Pro version mapact, Build 2461R. Synopsys Run ID: sid1568566466 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {MainClockCCC_MainClockCCC_0_FCCC|GL0_net_inferred_clock} [get_pins {MainClockCCC_0/MainClockCCC_0/CCC_INST/GL0}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {COREJTAGDEBUG_UJTAG_WRAPPER|UDRCK_inferred_clock} [get_pins {JTAG_0/JTAG_0/genblk1.genblk1.genblk1.UJTAG_inst/UJTAG_inst/UDRCK}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set Inferred_clkgroup_0 [list MainClockCCC_MainClockCCC_0_FCCC|GL0_net_inferred_clock]
set Inferred_clkgroup_2 [list COREJTAGDEBUG_UJTAG_WRAPPER|UDRCK_inferred_clock]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_2


# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 

# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

