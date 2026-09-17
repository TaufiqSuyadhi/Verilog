// Verilog code to implement CMOS inverter using Switch-level modeling

module cmos_inverter(y,a);
output y;
input a;
supply1 vdd;
supply0 gnd;
pmos p1(y, vdd,a);
nmos n1(y,gnd,a);
endmodule
