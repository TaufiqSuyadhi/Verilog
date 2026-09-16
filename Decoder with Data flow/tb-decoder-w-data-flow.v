// Verilog testbench code to simulation Decoder using Data-flow modeling

module decoder_tb();
reg I0,I1;
wire y0,y1,y2,y3;
decoder_df d2(I0,I1,y0,y1,y2,y3);
initial
Begin
I0=0;I1=0;#10
I0=0;I1=1;#10
I0=1;I1=0;#10
I0=1;I1=1;#10
$finish();
end
endmodule