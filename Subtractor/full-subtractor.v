//Verilog code to implement full-subtractor using gate-level modeling

module fs(difference_fs,borrow_fs,a,b,bin);
output difference_fs,borrow_fs;
input a,b,bin;
wire e1,e2,e3,e4,e5;
xor(e1,a,b);
xor(difference_fs,e1,bin);
not(e2,a);and(e3,e2,b);
not(e4,e1);
and(e5,e4,bin);
or(borrow_fs,e5,e3);
endmodule
