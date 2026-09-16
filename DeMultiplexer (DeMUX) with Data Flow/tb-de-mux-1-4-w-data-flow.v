// Verilog testbench code to simulation De-MUX using Data-flow modeling

module demux_dataflow_tb( );
reg s1,s0,a; 
wire y0,y1,y2,y3;
demux_dataflow p1(y0,y1,y2,y3,s1,s0,a);

initial
begin
s1=0;s0=0;a=1;#10
s1=0;s0=1;a=1;#10
s1=1;s0=0;a=1;#10
s1=1;s0=1;a=1;#10
$finish();
end
endmodule