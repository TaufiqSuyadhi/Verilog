// Verilog code to implement converters gate-level modeling
// 4-Bit Gray to Binary (Testbench)


module g_to_b_tb();
reg [3:0]G;
wire [3:0]B;
g_to_b a1(B,G);

initial
begin
G = 4'b0101;#10
G = 4'b1010;#10
G = 4'b1101;#10
$finish();
end
endmodule