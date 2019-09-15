set_family {IGLOO2}
read_adl {W:\projects\security-contest\libero\contest\designer\top\top.adl}
read_afl {W:\projects\security-contest\libero\contest\designer\top\top.afl}
map_netlist
read_sdc {W:\projects\security-contest\libero\contest\constraint\user.sdc}
check_constraints {W:\projects\security-contest\libero\contest\constraint\placer_sdc_errors.log}
write_sdc -strict -afl {W:\projects\security-contest\libero\contest\designer\top\place_route.sdc}
