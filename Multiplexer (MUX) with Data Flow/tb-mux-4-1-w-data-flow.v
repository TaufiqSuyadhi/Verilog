// Verilog testbench code to simulation MUX using Data-flow modeling

module multiplexer_dataflow_tb( );
reg I0,I1,I2,I3,s1,s0;
wire y;

multiplexer_dataflow a1(y,s1,s0,I0,I1,I2,I3);

initial
Begin
s1=0; s0=0;I0=1; I1=0; I2=0; I3=1; #10
s1=0; s0=1; I0=1; I1=0; I2=0; I3=1; #10
s1=1; s0=0; I0=1; I1=0; I2=0; I3=1; #10
s1=1; s0=1; I0=1; I1=0; I2=0; I3=1; #10
$finish();
end
endmodule