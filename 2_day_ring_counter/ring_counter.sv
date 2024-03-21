`timescale 1ns/10ps

// author: Filin I.A.
// functional: ring counter
// last revision: 21.03.24

module ring_counter
#(
    parameter WIDTH_REG = 8
)
(
    input   logic   clk,
    input   logic   n_rst,

    output  logic   [(WIDTH_REG - 1):0] out_ring
);

    always_ff @(posedge clk)
    begin
        if(!n_rst)
            out_ring <= {{(WIDTH_REG - 1){1'b0}}, 1'b1};
        else
            out_ring <= {out_ring[(WIDTH_REG - 2):0],out_ring[WIDTH_REG - 1]};
    end

endmodule : ring_counter