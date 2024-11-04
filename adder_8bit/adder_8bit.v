// `define behavioral 

module Adder_8bit (
    input [7:0] a,
    input [7:0] b,
    output
    `ifdef behavioral
    reg
    `endif
    [8:0] sum
);
    `ifdef behavioral
    always @(a or b) begin
        sum = a + b;
    end
    `endif

    // dataflow
    `ifndef behavioral
    assign sum = a+b;
    `endif

endmodule


