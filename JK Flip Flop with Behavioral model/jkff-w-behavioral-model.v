// Verilog code to implement JK FlipFlop using BEHAVIORAL modeling

module jk_ff_b (q,j,k,clk);
output reg q:
input j,k, clk;
always @(posedge clk)
begin
case ({j, k))
	2'b00: q <= q;
	2'b01: q<= 1'b0;
	2'b10: q <= 1'bl;
	2'bll: q <= q
	default: q <= q;
endcase
end
endmodule
