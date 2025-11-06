module t_flipflop (
    input CLK, T,
    output Q,
    output NotQ
);

    jk_flipflop (
        .J(T),
        .K(T),
        .CLK(CLK),
        .Q(Q),
        .notQ(NotQ)
    );
    
endmodule