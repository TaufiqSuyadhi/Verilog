// Verilog code to implement Decade Counter

module decade_counter (clk,rst, count);
input clk, rst;
output reg [3:0] count;

initial
begin
count <= 4'b0000;
end

always @(posedge clk)
begin
if (rst)
	count <= 4'b0000;
else if (count == 4'b1001)
	count <= 4'b0000;
else
	count <= count + 1'b1;
end

endmodule
