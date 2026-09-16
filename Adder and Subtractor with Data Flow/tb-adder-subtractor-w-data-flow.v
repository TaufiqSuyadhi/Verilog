// Verilog testbench code to simulate adder/subtractor using dataflow modeling

module ha_fad_hs_fs_dataflow_tb( );
wire sum_ha,carry_ha,sum_fa,carry_fa,diff_hs,borrow_hs,diff_fs,borrow_fs;
reg a,b,bin,cin;
ha_fa_hs_fs_dataflow
p1(sum_ha,carry_ha,sum_fa,carry_fa,diff_hs,borrow_hs,diff_fs,borrow_fs,a,b,bin,cin);

initial

begin
a=0;b=0;bin=0;cin=0; #10
a=0;b=0;bin=1;cin=1; #10
a=0;b=1;bin=0;cin=0; #10
a=0;b=1;bin=1;cin=1; #10
a=1;b=0;bin=0;cin=0; #10
a=1;b=0;bin=1;cin=1; #10
a=1;b=1;bin=0;cin=0; #10
a=1;b=1;bin=1;cin=1; #10
$finish();
end

endmodule






