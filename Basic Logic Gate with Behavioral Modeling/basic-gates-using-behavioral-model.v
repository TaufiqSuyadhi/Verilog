// Verilog code to implement basic logic gates using Behavioral modeling

module gate_behaviour(and_out,or_out,nand_out,nor_out,not_out,xor_out,xnor_out,a,b);
output reg and_out,or_out,nand_out,nor_out,not_out,xor_out,xnor_out;
input a,b;
always @(*) 
begin
and_out = a & b;
or_out = a | b;
nand_out = ~ ( a & b);
nor_out = ~ (a | b);
not_out = ~ a;
xor_out = a ^ b;
xnor_out = ~(a ^ b);
end
endmodule
