// Verilog code testbench to simulate adder using gate-level modeling

module adder_tb();
reg a, b, cin;
wire sum_ha, carry_ha, sum_fa,carry_fa;
fa al (sum_fa, carry_fa, a,b,cin);
ha a2 (sum_ha, carry_ha, a, b);
initial
begin
a=0;b=0;cin=0;#10
a=0;b=0;cin=1;#10
a=0;b=1;cin=0;#10
a=0;b=1;cin=1;#10
a=1;b=0;cin=0;#10
a=1;b=0;cin=1;#10
a=1;b=1;cin=0;#10
a=1;b=1;cin=1;#10
$finish();
end
endmodule