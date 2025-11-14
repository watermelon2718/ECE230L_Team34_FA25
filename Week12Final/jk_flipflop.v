module jk_flipflop (
    input J, K, CLK, RESET,
    output Q,
    output notQ
);
    wire D;
    wire D_Q, D_notQ;
    
    
    assign D = (J & D_notQ) + (~K & D_Q);
        

    d_flipflop d_flipflop_inst (
        .D(D),
        .CLK(CLK),
        .RESET(RESET),
        .Q(D_Q),
        .NotQ(D_notQ)
    );

    assign Q = D_Q;
    assign notQ = D_notQ;

endmodule
