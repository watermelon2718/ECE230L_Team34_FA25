module ripple_counter (
    input CLK, RESET,
    output Q0, Q1, Q2
);
    wire nuke;

    t_flipflop TFF0 (
        .T(1),
        .CLK(CLK),
        .Q(Q0),
        .RESET(RESET)
    );

    t_flipflop TFF1 (
        .T(1),
        .CLK(Q0),
        .Q(Q1),
        .RESET(RESET)
    );

    t_flipflop TFF2 (
        .T(1),
        .CLK(Q1),
        .Q(Q2),
        .RESET(RESET)
    );

endmodule