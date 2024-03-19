`timescale 1ns/10ps

// author: Filin I.A.
// functional: clock devider testbench
// last revision: 18.03.24

module testbench_clock_divider();

    // declare test signals
    logic n_rst, clk;
    logic clk_dev_2, clk_dev_4,
          clk_dev_8, clk_dev_16;

    // declare dut
    clock_divider #(.WIDTH_REG(4)) 
              dut  (.clk         (clk),
                    .n_rst       (n_rst),
                    .divide_by_2 (clk_dev_2),
                    .divide_by_4 (clk_dev_4),
                    .divide_by_8 (clk_dev_8),
                    .divide_by_16(clk_dev_16));

    // init clk
    always 
        #5 clk = ~clk;

    initial
    begin
        clk = 1;
        n_rst = 0;
        #10 n_rst = 1;
    end

    // end simulation
    initial
        #1000 $stop;

endmodule : testbench_clock_divider