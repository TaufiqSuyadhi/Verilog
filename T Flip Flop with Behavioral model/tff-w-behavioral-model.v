// Verilog code to implement T FlipFlop using BEHAVIORAL modeling

module t(q,t,clk);
output reg q:
input t,clk;

initial
begin
q=0;
end

always @(posedge clk)
begin
case (t)
  1'b0: q <= q;
  1'bl: q <= q;
endcase
end
endmodule
