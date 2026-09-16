// Verilog testbench code to simulation Encoder using Data-flow modeling

module encoder_dataflow_tb();
reg I0,I1,I2,I3;
wire y0,y1;
encoder_dataflow e1(y0,y1,I0,I1,I2,I3);
initial
begin
I0=0;I1=0;I2=0;I3=0;#10
I0=0;I1=0;I2=1;I3=0;#10
I0=0;I1=1;I2=0;I3=0;#10
I0=1;I1=0;I2=0;I3=0;#10
$finish();
end
endmodule