// Verilog testbench code to simulation T Flip-Flop using BEHAVIORAL modeling

module t_flipflop_tb();
wire q;
reg t, clk;
t_flipflop al (q,t,clk);

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
t = 0;
t = 0;#10
t = 1;#10
t = 1;#10
t = 0;#10
t = 1;#20
$finish();
end
endmodule