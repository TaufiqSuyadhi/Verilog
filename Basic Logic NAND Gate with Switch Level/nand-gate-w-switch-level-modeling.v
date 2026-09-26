// Verilog code to implement NAND gate using Switch-level modeling

module cmos_nand (y, a, b);
output y;
input a, b;
  
supply1 vdd;
supply0 gnd;
wire e1;
  
pmos p1 (y, vdd, a);
pmos p2 (y, vdd, b);
nmos n1 (y, e1, b);
nmos n2 (e1, gnd, a);
  
endmodule
