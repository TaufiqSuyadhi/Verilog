// Verilog code to implement XOR gate using gate-level modeling

module xor_gate (xor_out,a,b);
output xor_out;
input a,b;
xor (xor_out,a,b);
endmodule