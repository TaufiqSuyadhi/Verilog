// Verilog testbench code to simulation JK Flip-Flop using BEHAVIORAL modeling

module jk_ff_tb()
reg j, k, clk;
wire q;
jk_ff_b jl (q, j, k, clk);

initial
begin
clk = 0;
forever #10 clk clk;
end

initial 
begin
j = 0; k = 0;#20
j = 0; k = 0; #20
j = 1; k = 1; #20
j = 1; k = 0; #20
$finish();
end

endmodule