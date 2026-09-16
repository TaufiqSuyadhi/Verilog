// Verilog code testbench to simulate subtractor using gate-level modeling

module subtractor_tb( );
reg a,b,bin;
wire difference_hs,borrow_hs,difference_fs,borrow_fs;
hs a1(difference_hs,borrow_hs,a,b);
fs a2(difference_fs,borrow_fs,a,b,bin);
initial
begin
a=0;b=0;bin=0;#10
a=0;b=0;bin=1;#10
a=0;b=1;bin=0;#10
a=0;b=1;bin=1;#10
a=1;b=0;bin=0;#10
a=1;b=0;bin=1;#10
a=1;b=1;bin=0;#10
a=1;b=1;bin=1;#10
$finish();
end
endmodule