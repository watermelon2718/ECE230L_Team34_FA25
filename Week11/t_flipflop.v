// do I need a reset? 

module t_flipflop (
    input D, CLK, T,

//should these be reg?
    output reg Q,
    output NotQ
);

    
//mux instance
// takes T as enable switch, Q and NotQ as inputs
mux #(1) mux_inst (
    .sel(T),
    .A(Q),
    .B(NotQ)
);

//dflipflop instance
d_flipflop d_flipflop_inst (
    .D(mux_inst.out),
    .CLK(CLK)
);

endmodule