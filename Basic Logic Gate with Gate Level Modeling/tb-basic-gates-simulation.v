// Verilog Testbench code to implement All logic gates simulation 

module logic_gate_tb( );
reg a,b;
wire and_out,or_out,not_out,nand_out,nor_out,xor_out;

and_gate a1(and_out,a,b);
or_gate b1(or_out,a,b);
not_gate c1(not_out,a);
nand_gate d1(nand_out,a,b);
nor_gate e1(nor_out,a,b);
xor_gate f1(xor_out,a,b);

initial 
begin 
a=0; b=0; #10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10

$finish();
end
endmodule