module half_adder (
    input a, b,
    output sum,carry
);
    xor x0 (sum, a,b);
    and a0 (carry, a,b);
endmodule