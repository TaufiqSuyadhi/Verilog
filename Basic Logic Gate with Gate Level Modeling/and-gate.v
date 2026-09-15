// Verilog code to implement AND gate using gate-level modeling

module and_gate (and_out,a,b);
	output and_out;
	input a,b;
	and (and_out,a,b);
endmodule
