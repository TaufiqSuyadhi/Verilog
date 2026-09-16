// Verilog testbench code to simulation D Flip-Flop using Data-flow modeling

module d_ff_b_tb();
reg d,clk;
wire q;
d_ff_b d1(q,d,clk);

initial
begin
clk=0;
forever#10
clk = ~ clk;
end

initial
begin
d<=0;#15
d<=1;#40
d<=0;#10
d<=1;
$finish();
end

endmodule


