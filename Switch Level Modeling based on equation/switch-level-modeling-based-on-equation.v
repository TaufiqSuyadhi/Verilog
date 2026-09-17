// Verilog code for Switch-level modeling based on EQUATION

// EQUATION: 
// Y = (AB)E + CDbar + (Gbar + H)

module cmos_exp(y,a,b,c,d,e,g,h);
input a,b,c,d,e,g,h;
output y;

wire e1,e2,e3,e4,e5,e6,e7;
wire Dbar,Gbar;

assign Dbar=~d;
assign Gbar=~g;

supply1 vdd;
supply0 gnd;
pmos p1(e1,vdd,a);
pmos p2(e1,vdd,b);
pmos p3(e1,vdd,e);
pmos p4(e2,e1,Dbar);
pmos p5(e2,e1,c);
pmos p6(e3,e2,h);
pmos p7(e4,e3,Gbar);
pmos p8(y,vdd,e4);
nmos n1(e6,gnd,e);
nmos n2(e5,e6,b);
nmos n3(e4,e5,a);
nmos n4(e7,gnd,Dbar);
nmos n5(e4,e7,e);
nmos n6(e4,gnd,Gbar);
nmos n7(e4,gnd,h);
nmos n8(y,gnd,e4);

endmodule
