`timescale 1ns/10ps

// author: Filin I.A.
// functional: testbench majority circuit
// last revision: 22.03.24

module testbench_majority_circuit();

    // declare localparam
    localparam WIDTH = 5;
    localparam HALF_WIDTH = WIDTH/2 + 1;

    // declare local signals
    logic out_seq, out_test;
    logic [(WIDTH - 1):0] test_seq;

    // declare dur
    majority_circuit #(.WIDTH_IN(WIDTH))
                 dut  (.in_seq  (test_seq),
                       .out_num (out_seq));

    // declare test cycle
    initial
    begin
        integer i, err_cnt = 0;
        for(test_seq = 0; test_seq < 2**(WIDTH - 1); test_seq = test_seq + 1)
        begin
            // integer j, a;
            // sum of digits
            // for( j =0, a = 0; j < WIDTH; j = j + 1)
            // begin
            //     a = a + test_seq [i];
            // end

            // if(a >= HALF_WIDTH)
            //     out_test = 1'b1;
            // else
            //     out_test = 1'b0;
        end

        // if(out_test != out_seq)
        // begin
        //     err_cnt = err_cnt + 1;
        //     $display("Detected error! In seq: %b, result: %b", test_seq, out_test);
        // end

        // $display("Conducted %d test, errors: %d", 2**(WIDTH - 1), err_cnt);
        $finish;
    end


endmodule: testbench_majority_circuit