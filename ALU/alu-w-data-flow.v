// Verilog code to implement ALU using Data-flow modeling

module alu_dataflow(Result,A,B,set );
output [7:0]Result;
input [3:0]A,B;
input [1:0]set;
assign Result=(set==2'b00)?(A+B):(set==2'b01)?(A-B):(set==2'b10)?(~A):(A*B);
endmodule
