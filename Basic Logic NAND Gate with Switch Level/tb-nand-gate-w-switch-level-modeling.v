// Verilog testbench code to simulate NAND gate using Switch-level modeling

module cmos_nand_tb();
wire y;
reg a, b;
  
cmos_nand a1 (y, a, b);
  
initial
  
begin
  $display("Robonesia 2026 ");
  $display(" a|b|y");
  $display(" ----------- ");
  a = 0; b = 0; #10 $display("%b %b | %b", a, b, y);
  a = 0; b = 1; #10 $display("%b %b | %b", a, b, y);
  a = 1; b = 0; #10 $display("%b %b | %b", a, b, y);
  a = 1; b = 1; #10 $display("%b %b | %b", a, b, y);
  $finish();
end
  
endmodule
