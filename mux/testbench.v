`include "mux4.v"

module Testbench;
    reg [3:0] i = 4'b0000;
    reg [1:0] s = 1'b0;

    wire y;

    Mux4 mux(i, s, y);

    initial begin 
        $monitor("%b %b %b", i, s, y);
    end

    initial begin
        #1; i[0] = 0; i[1] = 1; s[1] = 1;
        #1; i[1] = 0; i[2] = 1; s[0] = 1;
        #1; i[2] = 0; i[0] = 1; s[1] = 1;
        #1; i[1] = 0; i[3] = 1; s[0] = 1;
        #1; i[3] = 0; i[2] = 1; s[1] = 0;
        #1; i[0] = 0; i[1] = 1; s[0] = 0;
        #1; i[0] = 0; i[2] = 1; s[0] = 1;
        #1; i[2] = 1; i[3] = 1; s[1] = 1;
        #1; i[3] = 0; i[0] = 1; s[0] = 0;
    end

endmodule