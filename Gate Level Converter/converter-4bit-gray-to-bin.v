// Verilog code to implement converters gate-level modeling
// 4-Bit Gray to Binary (Module)


module g_to_b(B,G );
output [3:0]B;
input [3:0]G;
buf(B[3],G[3]);
xor(B[2],B[3],G[2]);
xor(B[1],B[2],G[1]);
xor(B[0],B[1],G[0]);
endmodule








