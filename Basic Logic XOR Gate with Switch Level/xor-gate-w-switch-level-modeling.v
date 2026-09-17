// Verilog code to implement XOR using Switch-level modeling
// CMOS based modeling

module cmos_xor(y,a,b);
input a,b;
output y;
wire e1,e2;
wire Abar,Bbar;
assign Abar=~a;
assign Bbar=~b;
supply1 vdd;
supply0 gnd;
pmos p1(e1,vdd,a);
pmos p2(e1,vdd,b);
pmos p3(y,e1,Abar);
pmos p4(y,e1,Bbar);
nmos n1(e2,gnd,b);
nmos n2(y,e2,a);
nmos n3(e3,gnd,Bbar);
nmos n4(y,e3,Abar);
endmodule
