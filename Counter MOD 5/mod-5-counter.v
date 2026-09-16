// Verilog code to implement MOD 5 Counter

module mod5_counter (clk, rst, count);
input clk, rst;
output reg [2:0] count;

initial
begin
count <= 0;
end

always @(posedge clk)
begin
if (rst)
	count <= 0;
else if (count == 3'b100)
	count <= 0;
else
	count <= count + 1;
end

endmodule
