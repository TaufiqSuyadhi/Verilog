// Verilog code for 4-Bit Comparator using Dataflow Modeling

module comparator_4bit_dataflow (
    output gt,
    output lt,
    output eq,
    input  [3:0] A,
    input  [3:0] B
);

assign eq = (A == B);
assign gt = (A > B);
assign lt = (A < B);

endmodule
