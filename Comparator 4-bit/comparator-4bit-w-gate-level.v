// Verilog code for 4-Bit Comparator using Gate-Level Modeling

module comparator_4bit_gate (
    output gt,
    output lt,
    output eq,
    input  [3:0] A,
    input  [3:0] B
);

wire e3, e2, e1, e0;
wire na3, na2, na1, na0;
wire nb3, nb2, nb1, nb0;

wire g3, g2, g1, g0;
wire l3, l2, l1, l0;

not (na3, A[3]);
not (na2, A[2]);
not (na1, A[1]);
not (na0, A[0]);

not (nb3, B[3]);
not (nb2, B[2]);
not (nb1, B[1]);
not (nb0, B[0]);

// Equality bits (XNOR implementation)
wire t1,t2,t3,t4;

xor (t1, A[3], B[3]);
xor (t2, A[2], B[2]);
xor (t3, A[1], B[1]);
xor (t4, A[0], B[0]);

not (e3, t1);
not (e2, t2);
not (e1, t3);
not (e0, t4);

// Greater-than conditions
and (g3, A[3], nb3);
and (g2, e3, A[2], nb2);
and (g1, e3, e2, A[1], nb1);
and (g0, e3, e2, e1, A[0], nb0);

or  (gt, g3, g2, g1, g0);

// Less-than conditions
and (l3, na3, B[3]);
and (l2, e3, na2, B[2]);
and (l1, e3, e2, na1, B[1]);
and (l0, e3, e2, e1, na0, B[0]);

or  (lt, l3, l2, l1, l0);

// Equality
and (eq, e3, e2, e1, e0);

endmodule