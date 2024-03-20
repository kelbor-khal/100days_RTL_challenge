# Cloc devider

This device is sequence of triggers. The input of the initial trigger is connected to the inverting output of the last trigger.

<figure>
  <img src="../diagramms/1_day_johnson_counter.png">
  <figcaption align="center" font-style="italic"> Picture 1.1 - Time diagramms johnson counter </figcaption>
</figure>

The table 0.1 shows the signals owned by module johnson counter

### *Table 1.1 - Signals johnson counter* 
| Number   | type signals    | Name signals  | Description signals        |
|:--------:|:---------------:|:-------------:|:---------------------------|
|0         | wire            | clk           | input clock signal         |
|1         | wire            | n_rst         | input invert reset signal  |
|2         | bus             | out           | output counter value       |

Result simulation in console:
```
# 00000000000000000000000000000000
# 10000000000000000000000000000000
# 11000000000000000000000000000000
# 11100000000000000000000000000000
# 11110000000000000000000000000000
# 11111000000000000000000000000000
# 11111100000000000000000000000000
# 11111110000000000000000000000000
# 11111111000000000000000000000000
# 11111111100000000000000000000000
# 11111111110000000000000000000000
# 11111111111000000000000000000000
# 11111111111100000000000000000000
# 11111111111110000000000000000000
# 11111111111111000000000000000000
# 11111111111111100000000000000000
# 11111111111111110000000000000000
# 11111111111111111000000000000000
# 11111111111111111100000000000000
# 11111111111111111110000000000000
# 11111111111111111111000000000000
# 11111111111111111111100000000000
# 11111111111111111111110000000000
# 11111111111111111111111000000000
# 11111111111111111111111100000000
# 11111111111111111111111110000000
# 11111111111111111111111111000000
# 11111111111111111111111111100000
# 11111111111111111111111111110000
# 11111111111111111111111111111000
# 11111111111111111111111111111100
# 11111111111111111111111111111110
# 11111111111111111111111111111111
# 01111111111111111111111111111111
# 00111111111111111111111111111111
# 00011111111111111111111111111111
# 00001111111111111111111111111111
# 00000111111111111111111111111111
# 00000011111111111111111111111111
# 00000001111111111111111111111111
# 00000000111111111111111111111111
# 00000000011111111111111111111111
# 00000000001111111111111111111111
# 00000000000111111111111111111111
# 00000000000011111111111111111111
# 00000000000001111111111111111111
# 00000000000000111111111111111111
# 00000000000000011111111111111111
# 00000000000000001111111111111111
# 00000000000000000111111111111111
# 00000000000000000011111111111111
# 00000000000000000001111111111111
# 00000000000000000000111111111111
# 00000000000000000000011111111111
# 00000000000000000000001111111111
# 00000000000000000000000111111111
# 00000000000000000000000011111111
# 00000000000000000000000001111111
# 00000000000000000000000000111111
# 00000000000000000000000000011111
# 00000000000000000000000000001111
# 00000000000000000000000000000111
# 00000000000000000000000000000011
# 00000000000000000000000000000001
# 00000000000000000000000000000000
```