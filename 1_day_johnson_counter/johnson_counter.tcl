#!/usr/bin/tclsh
# create working library
vlib work

# compile all SV source files
vlog -sv 1_day_johnson_counter/johnson_counter.sv

# compile testbench file
vlog -sv 1_day_johnson_counter/testbench_johnson_counter.sv

# open the testbench
vsim work.testbench_johnson_counter

# add all signals tu time diagramm
add wave -label input_clk      -radix binary /testbench_johnson_counter/dut/clk
add wave -label input_n_rst    -radix binary /testbench_johnson_counter/dut/n_rst
add wave -label output_counter -radix binary /testbench_johnson_counter/dut/out

# run simulation
run -all

# expand signals diagramm
wave zoom full