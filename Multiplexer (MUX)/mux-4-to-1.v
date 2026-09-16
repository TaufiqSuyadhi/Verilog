// verilog code to implement MUX using gate-level modeling

module mux_gate(y,s1,s0,a,b,c,d);
output y;
input s1,s0,a,b,c,d;
wire e1,e2,e3,e4,e5,e6;
and(e3,e1,e2,a);
not(e1,s1);
and(e4,e1,s0,b);
and(e5,s1,e2,c);
not(e2,s0);
and(e6,s1,s0,d);
or(y,e3,e4,e5,e6);
end
endmodule
