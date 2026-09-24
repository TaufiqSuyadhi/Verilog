// Verilog testbench code to simulate 4-Bit Comparator using gate-level/dataflow/Behavioral Modeling

`timescale 1ns/1ps

module comparator_4bit_tb;

reg [3:0] A;
reg [3:0] B;

wire gt_gate, lt_gate, eq_gate;
wire gt_df,   lt_df,   eq_df;
wire gt_beh,  lt_beh,  eq_beh;

// Gate-Level Comparator
comparator_4bit_gate U1 (
    .gt(gt_gate),
    .lt(lt_gate),
    .eq(eq_gate),
    .A(A),
    .B(B)
);

// Dataflow Comparator
comparator_4bit_dataflow U2 (
    .gt(gt_df),
    .lt(lt_df),
    .eq(eq_df),
    .A(A),
    .B(B)
);

// Behavioral Comparator
comparator_4bit_behavioral U3 (
    .gt(gt_beh),
    .lt(lt_beh),
    .eq(eq_beh),
    .A(A),
    .B(B)
);

initial
begin
    $display("Time\tA\tB\tGT\tLT\tEQ");

    A = 4'b0000; B = 4'b0000; #10;
    A = 4'b0011; B = 4'b0001; #10;
    A = 4'b0101; B = 4'b1010; #10;
    A = 4'b1111; B = 4'b1111; #10;
    A = 4'b1001; B = 4'b0111; #10;
    A = 4'b0110; B = 4'b1100; #10;

    $finish;
end

initial
begin
    $monitor("%0t\t%h\t%h\t%b\t%b\t%b",
              $time, A, B, gt_df, lt_df, eq_df);
end

endmodule
