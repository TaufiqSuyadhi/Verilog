// Verilog code to implement NAND gate using gate-level modeling

module nand_gate (nand_out,a,b);
output nand_out;
input a,b;
nand (nand_out,a,b);
endmodule