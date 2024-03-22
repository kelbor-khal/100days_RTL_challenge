#!/usr/bin/tclsh
# create working library
vlib work

# compile all SV source files
vlog -sv 3_day_majority_circuit/majority_circuit.sv

# compile testbench file
vlog -sv 3_day_majority_circuit/testbench_majority_circuit.sv

# open the testbench
vsim work.testbench_majority_circuit

# add all signals tu time diagramm
add wave -label input_sequence -radix binary /testbench_majority_circuit/dut/in_seq
add wave -label output_num     -radix binary /testbench_majority_circuit/dut/out_num

# run simulation
run -all

# expand signals diagramm
wave zoom full