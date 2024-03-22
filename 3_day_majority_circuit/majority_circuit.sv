`timescale 1ns/10ps

// author: Filin I.A.
// functional: majority circuit
// last revision: 22.03.24

module majority_circuit 
#(
    parameter WIDTH_IN   = 5
)
(
    input   logic   [(WIDTH_IN - 1):0] in_seq,

    output  logic   out_num
);

    // declare local param
    localparam HALF_WIDTH = WIDTH_IN/2 + 1;

    // declare logic block
    always_comb
    begin
        integer a, i;
        for(i = 0, a = 0; i < WIDTH_IN; i = i + 1)
        begin
            a = a + in_seq [i];
        end

        if (a >= HALF_WIDTH)
            out_num = 1'b1;
        else
            out_num = 1'b0;
    end

endmodule