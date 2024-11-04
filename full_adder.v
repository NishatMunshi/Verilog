module full_adder_dataflow (
    input  a, b, cin,
    output s, cout
);
    assign s = a ^ b ^ cin;
    assign cout  = (a & b) | ((a ^ b) & cin);
    
endmodule

module full_adder_behavioral (
    input a, b, cin,
    output reg s, cout
);
    always @(a or b or cin) begin
        s = a ^ b ^ cin;
        cout = ((a^b) &cin ) | (a&b);
    end
    
endmodule

module full_adder_testbench;

    reg a, b, cin;
    wire s, cout;

    full_adder_behavioral fa(a, b, cin, s, cout);

    initial begin
        $monitor("%b%b%b, %b%b", a, b, cin, cout, s);
    end

    initial begin
            a = 0; b = 0; cin = 0;
        #1  a = 0; b = 0; cin = 1;
        #1  a = 0; b = 1; cin = 0;
        #1  a = 0; b = 1; cin = 1;
        #1  a = 1; b = 0; cin = 0;
        #1  a = 1; b = 0; cin = 1;
        #1  a = 1; b = 1; cin = 0;
        #1  a = 1; b = 1; cin = 1;
        #1  a = 0; b = 0; cin = 0;
    end
     


endmodule