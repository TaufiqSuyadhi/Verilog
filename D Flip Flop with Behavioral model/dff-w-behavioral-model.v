// Verilog code to implement D FlipFlop using Data-flow modeling

module d_ff_b(q,d,clk);
output reg q;
input d,clk;always @(posedge clk)
begin
if (d == 1'b1)
	q = 1’b1;
else 
	q = 1’b0;
end
endmodule
