// Verilog testbench code to simulation Universal Shift Register

module universal_s_r_tb( );
reg [3:0]parallel_in;
reg [1:0]mode;
reg clk,rst,serial_in_left,serial_in_right;
wire [3:0]q;
universal_shift_register_b a1(q,mode,parallel_in,clk,rst,serial_in_right,serial_in_left);

initial
begin
clk=0;
forever #5clk=~clk;
end

initial
begin
rst=0;
parallel_in=4'b1010;
serial_in_right=1;
serial_in_left=1;
mode=2'b00; #10
mode=2'b01; #10
mode=2'b10; #10
mode=2'b11; #10
$finish();
end

endmodule
