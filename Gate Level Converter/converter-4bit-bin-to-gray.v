// Verilog code to implement converters gate-level modeling
// 4-Bit Binary to Gray (Module)

module b_to_g(G,B);
output [3:0]G;
input [3:0]B;

buf(G[3],B[3]);
xor(G[2],B[3],B[2]);
xor(G[1],B[2],B[1]);
xor(G[0],B[1],B[0]);
endmodule
