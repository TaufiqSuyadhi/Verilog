// Verilog code to implement MUX using Data-flow modeling

module multiplexer_dataflow(y,s1,s0,I0,I1,I2,I3);
output y;
input s1,s0,I0,I1,I2,I3;
assign y = (((I0 & ( ~ s1) & ( ~ s0) ) | ((I1 & ( ~ s1) & s0)) | ((I2 & s1) & ( ~ s0)) | ((I3 & s1) | & s0)));
endmodule
