// Verilog testbench code to simulate Johnson Counter

module johnson_counter_tb();
reg clk;
reg rst;
wire [3:0] count;
johnson_counter d1(count,rst,clk);
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