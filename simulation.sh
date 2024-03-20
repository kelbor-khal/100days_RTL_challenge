#!/bin/bash

echo "Available modules to simulation: "
echo "0 - clock divider   (day 0); "
echo "1 - johnson counter (day 1); "
read -p "Choose module to run simulation: " number_script;

# start modelsim
case $number_script in
    0) vsim -do 0_day_clock_divider/clock_divider.tcl;;
    1) vsim -do 1_day_johnson_counter/johnson_counter.tcl;;
    *) echo "This script is not available. Please choose a different one";;
esac

# delete temp var sim
rm -r -v work
rm -rf $(ls | grep -E "vlog|vsim|transc|ini")