// Verilog code for digital_stopwatch application

module digital_stopwatch (
input clk, // 1 Hz clock
input reset,
input start,
output reg [5:0] seconds,
output reg [5:0] minutes
);

always @(posedge clk or posedge reset) begin
if (reset) begin
	seconds <= 6'd0;
	minutes <= 6'd0;
end

else if (start) begin
if (seconds == 6'd59) begin
	seconds <= 6'd0;
if (minutes == 6'd59)
	minutes <= 6'd0;
else
	minutes <= minutes + 6'd1;
end
else begin
	seconds <= seconds + 6'd1;
end
end
end

endmodule
