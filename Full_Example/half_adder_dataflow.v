module half_adder_dataflow(input a, input b, output s, output c);

    assign s = a^b;
    assign c = a & b;

endmodule


module half_adder_dataflow_testbench();
    reg a, b;
    wire s,c;
    half_adder_dataflow HADF(
        .a(a),
        .b(b),
        .s(s),
        .c(c)
    );

    initial begin
        $dumpfile("half_adder_dataflow.vcd");
        $dumpvars(0, half_adder_dataflow_testbench);

         a = 0; b=0;
        #1; a = 0; b=1;
        #1; a = 1; b=0;
        #1; a = 1; b=1;
        #1;

    end

endmodule