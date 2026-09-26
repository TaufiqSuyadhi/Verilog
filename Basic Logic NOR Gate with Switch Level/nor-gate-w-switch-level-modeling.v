// Verilog code to implement NOR gate using Switch-level modeling

module cmos_nor (y, a, b);
output y;
input a, b;
  
supply1 vdd;
supply0 gnd;
wire e1;
  
pmos p1 (y, e1, a);
pmos p2 (e1, vdd, b);
nmos n1_1 (y, gnd, a);
nmos n2_1 (y, gnd, b);
  
endmodule
