module half_adder(
    input a, b,
    output s, cout
);

    xor x1(s, a ,b);
    and a1(cout , a ,b);
    
endmodule

module full_adder(
    input a, b, cin,
    output s, cout
);

wire sum1, carry1, carry2;

half_adder h1(a, b, sum1, carry1);
half_adder h2(sum1, cin, s, carry2);

or o1(cout, carry1, carry2);

endmodule

module fa_behavioral(input a, b, cin, output reg s ,cout );
    always @(a or b or cin) begin
        s <= a ^ (b ^ cin);
        cout <= (a & b) | (cin &(a ^ b));
    end
endmodule

module full_adder_testbench ();

    reg a, b, cin;
    wire s, cout;

    fa_behavioral  fa(a, b, cin, s, cout);

    initial begin
        $monitor("%b %b %b %b %b", a, b, cin, cout, s);
    end


    initial begin
        #1 a = 0; b= 0; cin = 0;
        #1 a = 0; b= 0; cin = 1;
        #1 a = 0; b= 1; cin = 0;
        #1 a = 0; b= 1; cin = 1;
        #1 a = 1; b= 0; cin = 0;
        #1 a = 1; b= 0; cin = 1;
        #1 a = 1; b= 1; cin = 0;
        #1 a = 1; b= 1; cin = 1;
        #1 a = 0; b= 0; cin = 0;
    end

    
endmodule