// Verilog code to implement Johnson Counter

module johnson_counter(count,rst,clk);
input clk,rst;
output reg [3:0]count;
initial count = 0;
always @(posedge clk)
begin
if(rst)
	count<=4’b0000;
else
	count<={~count[0],count[3:1]};
end
endmodule
