set_component MainClockCCC_MainClockCCC_0_FCCC
# Microsemi Corp.
# Date: 2019-Sep-15 13:21:15
#

create_clock -period 20 [ get_pins { CCC_INST/CLK0_PAD } ]
create_generated_clock -multiply_by 12 -divide_by 50 -source [ get_pins { CCC_INST/CLK0_PAD } ] -phase 0 [ get_pins { CCC_INST/GL0 } ]
