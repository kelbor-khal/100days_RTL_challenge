#!/bin/bash

echo "Available modules to simulation: "
echo "0 - clock divider (day 0); "
read -p "Choose module to run simulation: " number_script;

# start modelsim
case $number_script in
    0) vsim -do 0_day_clock_divider/clock_divider.tcl;;
    *) echo "This script is not available. Please choose a different one";;
esac

# delete temp var sim
rm -r -v work
rm -rf $(ls | grep -E "vlog|vsim|transc|ini")