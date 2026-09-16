// verilog code to implement DeMUX using gate-level modeling

module Demux(y1,y2,y3,y4,a,s1,s0);
output y1,y2,y3,y4;
input s1,s0,a;
wire e1,e2;
not(e1,s1);
not(e2,s0);
and(y1,e1,e2,a);
and(y2,e1,s0,a);
and(y3,s1,e2,a);
and(y4,s1,s0,a);
endmodule
