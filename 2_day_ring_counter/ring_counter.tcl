#!/usr/bin/tclsh
# create working library
vlib work

# compile all SV source files
vlog -sv 2_day_ring_counter/ring_counter.sv

# compile testbench file
vlog -sv 2_day_ring_counter/testbench_ring_counter.sv

# open the testbench
vsim work.testbench_ring_counter

# add all signals tu time diagramm
add wave -label input_clk      -radix binary /testbench_ring_counter/dut/clk
add wave -label input_n_rst    -radix binary /testbench_ring_counter/dut/n_rst
add wave -label output_counter -radix binary /testbench_ring_counter/dut/out_ring

# run simulation
run -all

# expand signals diagramm
wave zoom full