// Verilog code to implement Half-adder using gate-level modeling

module ha (sum_ha,carry_ha,a,b);
output sum ha, carry_ha;
input a,b;
xor (sum_ha, a,b);
and (carry_ha,a,b);
endmodule
