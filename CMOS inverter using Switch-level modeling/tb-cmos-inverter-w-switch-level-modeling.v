// Verilog testbench code to simulation CMOS inverter using Switch-level modeling

module cmos_inverter_tb();
wire y;
reg a;
cmos_inverter al(y,a);

initial begin
$display("Robonesia");
$display(“a|y”);
$display(" ");
a=0;#10 $display ("%b %b", a,y);
a=1;#10 $display ("%b | %b", a,y);
a=0;#10 $display ("%b %b", a,y);
$finish();
end

endmodule