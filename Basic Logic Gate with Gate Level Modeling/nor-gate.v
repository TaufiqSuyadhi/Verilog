// Verilog code to implement NOR gate using gate-level modeling

module nor_gate (nor_out, a,b);
output nor_out:
input a,b;
nor (nor_out,a,b);
endmodule