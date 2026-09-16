// Verilog code to implement converters gate-level modeling
// 4-Bit Binary to Gray (Testbench)


module binary_to_gray_tb();
reg [3:0]B;
wire [3:0]G;
b_to_g_2 a1(G,B);
initial
begin
B = 4'b0101;#10
B = 4'b1010;#10
B = 4'b1101;#10
$finish();
end
endmodule