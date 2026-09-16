// Verilog code to implement Decoder using Data-flow modeling

module decoder_df(I0,I1,y0,y1,y2,y3);
output y0,y1,y2,y3;
input I0,I1;
assign y0=(~I0)&(~I1);
assign y1=(~I0)&I1;
assign y2=I0&(~I1);
assign y3=I0&I1;
endmodule
