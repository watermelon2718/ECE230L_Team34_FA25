module top(
    input btnU, btnC,
    output [6:0] led
);

//ripple counter and modulo divider inst here

    ripple_counter ripple_counter_inst (
        .CLK(btnC),
        .Q0(led[0]),
        .Q1(led[1]),
        .Q2(led[2])
    );

endmodule