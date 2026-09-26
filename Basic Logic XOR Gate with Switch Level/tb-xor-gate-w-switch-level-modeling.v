// Verilog testbench code to simulate XOR logic gate using Switch-level modeling

module cmos_xor_tb();
  
reg a,b;
wire y;
  
cmos_xor t1(y,a,b);
  
initial
  
begin
  $display("Robonesia 2026");
  $display("a b | y");
  $display(" -------");
  a=0;b=0;#10 $display("%b %b | %b", a,b,y);
  a=0;b=1;#10 $display("%b %b | %b", a,b,y);
  a=1;b=0;#10 $display("%b %b | %b", a,b,y);
  a=1;b=1;#10 $display("%b %b | %b", a,b,y);
  $finish();
end
  
endmodule
