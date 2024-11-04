`include "Half_Adder.v"

module half_adder_testbench;
    reg a, b;
    wire sum, carry;

    // instantiation
    half_adder adder(a, b, sum, carry);

    // simulation
    initial begin
        $dumpfile("Half_Adder.vcd");
        $dumpvars(0, half_adder_testbench);

        a = 0; b = 0;
        #1
        a= 0 ; b = 1;
        #1
        a = 1; b= 0 ;
        #1
        a = 1 ;b = 1;
    end
endmodule