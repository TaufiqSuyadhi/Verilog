// Verilog code for Design RTL schematic for FSM (Mealy Sequence 101)

module sequence_101_jk (y, h, clk, reset); 
input clk, reset, h;
output y; 

reg qb, qa;
wire jb, kb, ja, ka; 

assign jb = ~h & qa; 
assign kb = 1'b1;
assign ja = h;
assign ka = ~h; 
assign y = qb & h;

always @(posedge clk) begin if (reset)
begin
	qb <= 1'b0; qa <=
	1'b0; 
end

else

begin
	qb <= (jb & ~qb) | (~kb & qb); 
	qa <= (ja & ~qa) | (~ka & qa); 
end

end endmodule
