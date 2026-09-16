// Verilog code to implement Universal Shift Register

module universal_shift_register_b(q,mode,parallel_in,clk,rst,serial_in_right,serial_in_left);
output reg [3:0]q;
input [3:0]parallel_in;
input [1:0]mode;
input clk,rst,serial_in_left,serial_in_right;

initial
begin
q =4'b0000;
end

always @(posedge clk)

begin
if (rst==1)
	q <=4'b0000;
else

begin
case(mode)
	2'b00: q <= q;
	2'b01: q <= {serial_in_right,q[3:1]};
	2'b10: q <= {q[2:0],serial_in_left};
	2'b11: q <= parallel_in;
	default: q<=q;
endcase

end
end
endmodule
