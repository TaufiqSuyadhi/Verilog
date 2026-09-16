// Verilog code to implement SR FlipFlop using Data-flow modeling

module sr_ff_b (q, s, r, clk);
output reg q;
input s, r, clk;
always @(posedge clk)
begin
if (s== 1'b0 && r == 1'b0)
  q <= q;
else if (s == 1'b0 && r == 1'bl)
  q <= 1'b0;
else if (s== 1'bl && r == 1'b0)
  q <= 1'bl;
else
  q <= 1'bx;
end
endmodule
