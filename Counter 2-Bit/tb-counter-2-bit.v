// Verilog testbench code to simulation 2 Bit Counter

module count_2bit_tb();
reg clk,rst;wire [1:0]count;
counter_2bit_comparator a1(count,clk,rst);

initial
begin
clk=0;
forever #5
clk=~clk;
end

initial
begin
rst=1;#10
rst=0;#50
rst=1;#10
rst=0;#50
$finish();
end
endmodule