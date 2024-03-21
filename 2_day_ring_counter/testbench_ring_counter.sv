`timescale 1ns/10ps

// author: Filin I.A.
// functional: ring counter testbench
// last revision: 21.03.24

module testbench_ring_counter();

    // local parameter
    localparam WIDTH_COUNTER = 32;

    // declare test signals
    logic n_rst, clk;
    logic [(WIDTH_COUNTER - 1):0] out_test;

    // declare dut
    ring_counter #(.WIDTH_REG(WIDTH_COUNTER))
              dut (.clk      (clk),
                   .n_rst    (n_rst),
                   .out_ring (out_test));

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
        #320 $stop;

endmodule : testbench_ring_counter