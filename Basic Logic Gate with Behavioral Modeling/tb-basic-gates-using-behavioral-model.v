// Verilog testbench code to simulate basic logic gates using Behavioral modeling


module gate_b_tb( );
reg a,b;
wire and_out,or_out,nand_out,nor_out,not_out,xor_out,xnor_out;
gate_behaviour a1(and_out,or_out,nand_out,nor_out,not_out,xor_out,xnor_out,a,b);
initial begin
a=0; b=0; #10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10
$finish();
end
endmodule