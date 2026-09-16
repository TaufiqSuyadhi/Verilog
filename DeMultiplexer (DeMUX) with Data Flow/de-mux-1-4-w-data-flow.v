// Verilog code to implement De-MUX using Data-flow modeling

module demux_dataflow(y0,y1,y2,y3,s1,s0,a);
output y0,y1,y2,y3;
input s1,s0,a;
assign y0=((( ~ s1 ) & ( ~ s0) & a));
assign y1=((( ~ s1 ) & s0 & a));
assign y2=( s1 & ( ~ s0) & a);
assign y3=(s1 & s0 & a );
endmodule
