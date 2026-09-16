// Verilog testbench code to simulation MOD 5 Counter

module mod_5_counter_tb();
reg clk;
reg rst;
wire [2:0] count;
mod5_counter d1 (clk,rst,count);

initial
begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
rst = 1;#10
rst = 0;#100
$finish();
end
endmodule


