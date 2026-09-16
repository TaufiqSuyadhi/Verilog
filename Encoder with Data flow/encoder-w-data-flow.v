// Verilog code to implement Encoder using Data-flow modeling

module encoder_dataflow(y0,y1,I0,I1,I2,I3);
output y0,y1;
input I0,I1,I2,I3;
assign y0= I1 | I3;
assign y1= I2 | I3;
endmodule
