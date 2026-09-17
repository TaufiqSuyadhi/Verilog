// Verilog testbench code for Switch-level modeling based on EQUATION simulation

module cmos_exp_tb();
reg a,b,c,d,e,g,h;
wire y;
cmos_exp t1(y,a,b,c,d,e,g,h);
initial
begin
$display("Robonesia 2026");
$display("a b c d e g h | y");
$display("-----------------");
a=0;b=0;c=0;d=0;e=0;g=0;h=0;#10 $display("%b %b
%b %b %b %b %b | %b",a,b,c,d,e,g,h,y);
a=0;b=1;c=0;d=1;e=0;g=1;h=0;#10 $display("%b %b
%b %b %b %b %b | %b",a,b,c,d,e,g,h,y);
a=1;b=1;c=0;d=1;e=1;g=0;h=1;#10 $display("%b %b
%b %b %b %b %b | %b",a,b,c,d,e,g,h,y);
a=1;b=1;c=1;d=0;e=1;g=1;h=1;#10 $display("%b %b
%b %b %b %b %b | %b",a,b,c,d,e,g,h,y);
$finish();
end
endmodule



