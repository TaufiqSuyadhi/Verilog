// Verilog testbench code to simulate 2-bit Magnitude comparator using dataflow modeling

module cmparator_tb();
reg [1:0] A, B;
wire A_gt_B, A_eq_B, A_lt_B;
comparator_dataflow s( A_gt_B, A_eq_B, A_lt_B, A, B);

initial
begin
A = 0; B = 0; #10;
A = 0; B = 1; #10;
A = 0; B = 2; #10;
A = 2; B = 1; #10;
A = 3; B = 3; #10;
A = 3; B = 0; #10;
$finish();
end

endmodule
