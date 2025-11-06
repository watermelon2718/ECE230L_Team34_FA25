module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);

    d_flipflop d_flipflop_inst (
        .D(sw[0]),
        .CLK(btnC),
        .Q(led[0]),
        .NotQ(led[1])
    );
    
    t_flipflop t_flipflop_inst (
        .T(sw[3]),
        .CLK(btnC),
        .Q(led[4]),
        .NotQ(led[5])
    );

endmodule