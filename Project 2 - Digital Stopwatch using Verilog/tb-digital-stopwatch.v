// Verilog testbench code for digital_stopwatch application

module digital_stopwatch_tb;
reg clk;
reg reset;
reg start;
wire [5:0] seconds;
wire [5:0] minutes;

// Instantiate the DUT (Device Under Test)
digital_stopwatch uut (
.clk(clk),
.reset(reset),
.start(start),
.seconds(seconds),
.minutes(minutes)
);

// Clock generation (10ns period)
always #5 clk = ~clk;
initial begin

// Initialize signals
clk = 0;
reset = 1;
start = 0;

// Apply reset
#20;
reset = 0;

// Start stopwatch
#10;
start = 1;

// Run for some time
#700;

// Stop stopwatch
start = 0;
#50;
$finish;
end

// Monitor output
initial begin
$monitor("Time = %0t | Minutes = %d | Seconds = %d",
$time, minutes, seconds);
end
endmodule