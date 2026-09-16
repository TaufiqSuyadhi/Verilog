// Verilog testbench code to simulation SR Flip-Flop using Data-flow modeling

module sr_ff_b_tb();
reg s,r,clk;
wire q;
sr_ff_b s1(q,s,r,clk);

initial
begin
clk=0;forever #10
clk=~clk;
end

initial
begin
s=0;r=0;#20
s=0;r=1;#20
s=1;r=0;#20
s=1;r=1;#20
$finish();
end
endmodule


