# Clock constraints
create_clock -name input_clk -period 13.47ns [get_ports {clk}]
create_generated_clock -name output_clk -source [get_ports {clk}] -master_clock input_clk -add [get_ports {clk_o}]

# Define IO-paths
set_input_delay -clock input_clk -max 0.1 [get_ports {reset_n *_in*}]
set_output_delay -clock output_clk -max 0.1 [get_ports {*_out* led*}]

set_input_delay -add_delay -clock input_clk -fall -min 0.05 [get_ports {reset_n *_in*}]
set_output_delay -add_delay -clock output_clk -fall -min 0.05 [get_ports {*_out* led*}]

set_input_delay -add_delay -clock input_clk -rise -min 0.05 [get_ports {reset_n *_in*}]
set_output_delay -add_delay -clock output_clk -rise -min 0.05 [get_ports {*_out* led*}]
