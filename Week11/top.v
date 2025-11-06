//copied from week 10

module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);

    d_flipflop d_flipflop_inst (
        .D[sw[0]],
        .CLK[btnC],
        .Q(led[0]),
        .NotQ(led[1])
    );

endmodule