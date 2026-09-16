// Verilog code to implement adder/subtractor using dataflow modeling

module ha_fa_hs_fs_dataflow(sum_ha,carry_ha,sum_fa,carry_fa,diff_hs,borrow_hs,diff_fs,borrow_fs,a,b,bin,cin);
output sum_ha,carry_ha,sum_fa,carry_fa,diff_hs,borrow_hs,diff_fs,borrow_fs;
input a,b,bin,cin;

assign sum_ha = a^b;
assign carry_ha = a&b;
assign sum_fa = a ^ b ^ cin;
assign carry_fa = (a&b)|((a^b)&cin);
assign diff_hs = a^b;
assign borrow_hs = (~a)^b;
assign diff_fs = a^b^bin;
assign borrow_fs = ((a)&b)|(((a^b))&bin);

endmodule
