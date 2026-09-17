// Verilog testbench code for Design RTL schematic for FSM (Mealy Sequence 101) simulation

module sequence_101_jk_tb(); 
reg clk, reset, h;
wire y;
sequence_101_jk p1(y, h, clk, reset); 

initial
begin
clk = 1'b0;
forever #5 clk = ~clk; 
end

initial
begin
reset = 1'b1;
h = 1’b0;
#10 reset = 1'b0;
#10 h = 1’b1;
#10 h = 1’b0;
#10 h = 1’b1;
#10 h = 1’b1;
#10 h = 1’b0;
#10 h = 1’b1;
#10 $finish;
end endmodule



