module Mux4(
    input [3:0] i,
    input [1:0] s,
    output reg y
);
    always @(i or s) begin
        y = i[s];
    end

endmodule