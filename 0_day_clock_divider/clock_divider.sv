`timescale 1ns/10ps

// author: Filin I.A.
// functional: clock devider
// last revision: 19.03.24

module clock_divider
#(
    parameter WIDTH_REG = 4
)
(
    input   logic   clk,
    input   logic   n_rst,
    
    output  logic   divide_by_2,
    output  logic   divide_by_4,
    output  logic   divide_by_8,
    output  logic   divide_by_16
);

    // declare register counter
    logic [(WIDTH_REG - 1):0] count_reg;

    always_ff @(posedge clk)
    begin
        if(!n_rst)
            count_reg <= '0;
        else
            count_reg <= count_reg + 1'b1;
    end

    assign divide_by_2  = count_reg [0];
    assign divide_by_4  = count_reg [1];
    assign divide_by_8  = count_reg [2];
    assign divide_by_16 = count_reg [3];

endmodule : clock_divider