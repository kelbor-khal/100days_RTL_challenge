#!/usr/bin/tclsh
# create working library
vlib work

# compile all SV source files
vlog -sv 0_day_clock_divider/clock_divider.sv

# compile testbench file
vlog -sv 0_day_clock_divider/testbench_clock_divider.sv

# open the testbench
vsim work.testbench_clock_divider

# add all signals tu time diagramm
add wave -label input_clk         -radix binary /testbench_clock_divider/dut/clk
add wave -label input_n_rst       -radix binary /testbench_clock_divider/dut/n_rst
add wave -label output_clk_div_2  -radix binary /testbench_clock_divider/dut/divide_by_2
add wave -label output_clk_div_4  -radix binary /testbench_clock_divider/dut/divide_by_4
add wave -label output_clk_div_8  -radix binary /testbench_clock_divider/dut/divide_by_8
add wave -label output_clk_div_16 -radix binary /testbench_clock_divider/dut/divide_by_16

# run simulation
run -all

# expand signals diagramm
wave zoom full