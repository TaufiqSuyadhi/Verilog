// Verilog testbench code to implement basic logic gates using dataflow modeling

module logic_gate_datafloe_tb();
reg a,b;
wire and_out,or_out,nand_out,nor_out ,xor_out,xnor_out,not_out;

logic_gate_dataflow a1(and_out,or_out,nand_out,nor_out ,xor_out,xnor_out,not_out,a,b);

initial

begin
a=2'b0; b=2'b1; #10
a=2'b1; b=2'b1; #10
$finish();
end

endmodule