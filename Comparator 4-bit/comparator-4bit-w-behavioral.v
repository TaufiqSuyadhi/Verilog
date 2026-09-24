// Verilog code for 4-Bit Comparator using Behavioral Modeling

module comparator_4bit_behavioral (
    output reg gt,
    output reg lt,
    output reg eq,
    input [3:0] A,
    input [3:0] B
);

always @(A or B)
begin
    if (A > B)
    begin
        gt = 1'b1;
        lt = 1'b0;
        eq = 1'b0;
    end
    else if (A < B)
    begin
        gt = 1'b0;
        lt = 1'b1;
        eq = 1'b0;
    end
    else
    begin
        gt = 1'b0;
        lt = 1'b0;
        eq = 1'b1;
    end
end

endmodule
