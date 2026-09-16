// Verilog code to implement Full-adder using gate-level modeling

module fa(sum_fa,carry_fa,a,b,cin);
output sum_fa,carry_fa;
input a,b,cin;
wire e1,e2,e3;
xor (e1,a,b);
xor (sum_fa,e1,cin);
and (e3,a,b);
and (e2,e1,cin);
or(carry_fa,e2,e3);
endmodule
