set_family {IGLOO2}
read_vhdl -mode vhdl_2008 {W:\projects\security-contest\libero\contest\hdl\Blinker.vhd}
read_verilog -mode verilog_2k -lib COREJTAGDEBUG_LIB {W:\projects\security-contest\libero\contest\component\Actel\DirectCore\COREJTAGDEBUG\3.1.100\core\corejtagdebug_ujtag_wrapper.v}
read_verilog -mode verilog_2k -lib COREJTAGDEBUG_LIB {W:\projects\security-contest\libero\contest\component\Actel\DirectCore\COREJTAGDEBUG\3.1.100\core\corejtagdebug_bufd.v}
read_verilog -mode verilog_2k -lib COREJTAGDEBUG_LIB {W:\projects\security-contest\libero\contest\component\Actel\DirectCore\COREJTAGDEBUG\3.1.100\core\corejtagdebug_uj_jtag.v}
read_verilog -mode verilog_2k -lib COREJTAGDEBUG_LIB {W:\projects\security-contest\libero\contest\component\Actel\DirectCore\COREJTAGDEBUG\3.1.100\core\corejtagdebug.v}
read_verilog -mode verilog_2k {W:\projects\security-contest\libero\contest\component\work\JTAG\JTAG.v}
read_verilog -mode verilog_2k {W:\projects\security-contest\libero\contest\component\work\MainClockCCC\MainClockCCC_0\MainClockCCC_MainClockCCC_0_FCCC.v}
read_verilog -mode verilog_2k {W:\projects\security-contest\libero\contest\component\work\MainClockCCC\MainClockCCC.v}
read_verilog -mode verilog_2k {W:\projects\security-contest\libero\contest\hdl\Murax.v}
read_verilog -mode verilog_2k {W:\projects\security-contest\libero\contest\component\work\top\top.v}
set_top_level {top}
map_netlist
check_constraints {W:\projects\security-contest\libero\contest\constraint\synthesis_sdc_errors.log}
write_fdc {W:\projects\security-contest\libero\contest\designer\top\synthesis.fdc}
