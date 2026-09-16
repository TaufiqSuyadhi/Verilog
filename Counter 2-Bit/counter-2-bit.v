// Verilog code to implement 2 Bit Counter

module counter_2bit_comparator(count,clk,rst);
output reg [1:0]count;
input clk,rst;
initial
count=0;

always @(posedge(clk)) begin
if (rst)
	count<=0;
else 
	count<=count+1;
end
endmodule
