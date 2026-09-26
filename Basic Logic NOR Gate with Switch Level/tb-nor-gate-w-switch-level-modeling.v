// Verilog testbench code to simulate NOR gate using Switch-level modeling

module cmos_nor_tb();
wire y;
reg a, b;
  
cmos_nor a1 (y, a, b);
  
initial
  
begin
  $display("Robonesia 2026“)
  $display(" a | b | y ");
  $display(" ");
  a = 0; b = 0; #10 $display("%b %b | %b", a, b, y);
  a = 0; b = 1; #10 $display("%b %b | %b", a, b, y);
  a = 1; b = 0; #10 $display("%b %b | %b", a, b, y);
  a = 1; b = 1; #10 $display("%b %b | %b", a, b, y);
  $finish();
end
           
endmodule
