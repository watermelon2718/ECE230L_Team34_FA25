module t_flipflop (
    input CLK, T, RESET,
    output Q,
    output NotQ
);

    jk_flipflop jk(
        .J(T),
        .K(T),
        .CLK(CLK),
        .Q(Q),
        .notQ(NotQ),
        .RESET(RESET)
    );
    
endmodule