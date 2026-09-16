// verilog testbench code to simulate De-MUX using gate-level modeling.

module de_mux_gate_tb();
reg a, s0, s1;
wire y1,y2, y3,y4;
de_mux_gate a1 ( y1, y2,y3,y4, a, s1,s0);
initial
begin
s0=0;s1=0;a=1;#10
s0=0;s1=1;a=1;#10
s0=1;s1=0;a=1;#10
s0=1;s1=1;a=1;#10
$finish();
end
endmodule

