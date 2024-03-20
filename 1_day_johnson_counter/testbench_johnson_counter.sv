`timescale 1ns/10ps

// author: Filin I.A.
// functional: johnson counter testbench
// last revision: 20.03.24

module testbench_johnson_counter();

    // local parameter
    localparam WIDTH_COUNTER = 32;

    // declare test signals
    logic n_rst, clk;
    logic [(WIDTH_COUNTER - 1):0] out_test;

    // declare dut
    johnson_counter #(.WIDTH_REG(WIDTH_COUNTER))
                dut  (.clk  (clk),
                      .n_rst(n_rst),
                      .out  (out_test));

    // init clk
    always 
        #5 clk = ~clk;

    initial
        $monitor("%b", out_test);

    initial
    begin
        clk = 1;
        n_rst = 0;
        #10 n_rst = 1;
    end

    // end simulation
    initial
        #650 $stop;

endmodule : testbench_johnson_counter