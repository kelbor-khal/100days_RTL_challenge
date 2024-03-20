`timescale 1ns/10ps

// author: Filin I.A.
// functional: johnson counter
// last revision: 20.03.24

module johnson_counter
#(
    parameter WIDTH_REG = 4
)
(
    input   logic   clk,
    input   logic   n_rst,

    output  logic   [(WIDTH_REG - 1):0] out
);

    // declare register
    logic [(WIDTH_REG - 1):0] temp_reg;

    always_ff @(posedge clk)
    begin
        if(!n_rst)
            temp_reg <= '0;
        else
            temp_reg <= {~temp_reg[0], temp_reg[(WIDTH_REG - 1):1]};
    end

    // output
    assign out = temp_reg;

endmodule : johnson_counter