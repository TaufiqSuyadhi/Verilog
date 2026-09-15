// Verilog code to implement NOT gate using gate-level modeling

module not_gate (not_out,a);
output not_out;
input a;
not (not_out,a);
endmodule