// Verilog code to implement 2-bit Magnitude comparator using dataflow modeling

module comparator_dataflow(G,E,L,A,B );
input [1:0]A,B; // 2-bit
output G; //A>B
output E; //A=Boutput L; //A<B

wire x1,x0;

assign x1=~(A[1]^B[1]);
assign x0=~(A[0]^B[0]);
assign G=(A[1]&~B[1])|(x1&A[0]&B[0]);
assign E=x1&x0;
assign L=(~A[1]&B[1])|(x1&~A[0]&B[0]);
endmodule
