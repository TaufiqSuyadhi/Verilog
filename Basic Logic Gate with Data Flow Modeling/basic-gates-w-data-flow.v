// Verilog code to implement basic logic gates using dataflow modeling

module logic_gate_dataflow(and_out,or_out,nand_out,nor_out ,xor_out,xnor_out,not_out,a,b);
output and_out,or_out,nand_out,nor_out ,xor_out,xnor_out,not_out;
input a,b;

assign and_out=a&b;
assign or_out=a|b;
assign xor_out=a^b;
assign xnor_out=~(a^b);
assign nand_out=~(a&b);
assign nor_out=~(a|b);
assign not_out=~a;

endmodule
