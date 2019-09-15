set_family {IGLOO2}
read_vhdl -mode vhdl_2008 {W:\projects\security-contest\libero\contest\hdl\rs232_sender.vhd}
set_top_level {rs232_sender}
map_netlist
check_constraints {W:\projects\security-contest\libero\contest\constraint\synthesis_sdc_errors.log}
write_fdc {W:\projects\security-contest\libero\contest\designer\rs232_sender\synthesis.fdc}
