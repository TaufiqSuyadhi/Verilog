// verilog testbench code to simulate MUX using gate-level modeling.

module mux_tb();
reg s1,s0,a,b,c,d;
mux_gate a1(y,s1,s0,a,b,c,d);
wire y;
initial
begin
s1=0; s0=0; a=1; b=0; c=0;d=1; #10
s1=0; s0=1; a=1; b=0; c=0; d=1; #10
s1=1; s0=0; a=1; b=0; c=0; d=1; #10
s1=1; s0=1; a=1; b=0; c=0; d=1; #10
$finish();
endendmodule

