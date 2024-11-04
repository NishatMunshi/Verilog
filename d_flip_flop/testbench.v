`include "d_flip_flop.v"

module Testbench;
    reg d = 0;
    reg clk = 0;
    wire q;

    D_flip_flop ff(d, clk, q);


    initial begin
        $monitor("%b %b %b", d, clk, q);
    end

    initial begin

        d = 1;
    #1  clk = 1;
    #1  clk = 0;
    
    end

endmodule