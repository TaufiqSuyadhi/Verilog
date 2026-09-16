// Verilog testbench code to simulation ALU using Data-flow modeling

module alu_tb();
reg [3:0]A,B;
reg [1:0]set;
wire [7:0]Result;
alu_dataflow p1(Result,A,B,set);
initial
begin
A=4'b0011;B=4'b0101;set=2'b00; #10
$finish();
end
endmodule



