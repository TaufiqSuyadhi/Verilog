//Verilog code to implement half-subtractor using gate-level modeling

module hs(difference_hs,borrow_hs,a,b);
output borrow_hs,difference_hs;
input a,b;
wire e1;
xor(difference_hs,a,b);
not(e1,a);
and(borrow_hs,e1,b);
endmodule