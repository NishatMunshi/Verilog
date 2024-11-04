`include "adder_8bit.v"

module Testbench();

    reg [7:0] a;
    reg [7:0] b;
    wire [8:0] sum;

    Adder_8bit adder(a, b, sum);

    initial begin
        $dumpfile("adder_8bit.vcd");
        $dumpvars(0, Testbench);
    end

    initial begin
        $monitor("%h %h %h",a, b, sum);
    end

    initial begin
            a = 8'hc1; b= 8'h6b;
        #1; a = 8'h33; b= 8'h55;
        #1; a = 8'ha0; b= 8'h9d;
        #1; a = 8'h9c; b= 8'hae;
        #1; a = 8'hcc; b= 8'h34;
    end
    
endmodule