// Verilog code to implement OR gate using gate-level modeling

module or_gate(or_out,a,b);
output or_out;
input a, b;
  
or (or_out,a,b);
  
endmodule
