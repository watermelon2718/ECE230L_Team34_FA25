module top(
    input btnU, btnC,
    output [6:0] led
);

//ripple counter and modulo divider inst here

ripple_counter ripple_counter_inst (
        .T(sw[3]),
        .CLK(btnC),
        .Q(led[4]),
        .NotQ(led[5])
    );

endmodule