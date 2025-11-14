module top(
    input btnU, btnC,
    output [6:0] led
);   
    modulo_divider m_div(
        .CLK(btnC),
        .RESET(btnU),
        .Q0(led[3]),
        .Q1(led[4]),
        .Q2(led[5]),
        .Qout(led[6])
    );

    ripple_counter ripple_counter_inst (
        .CLK(btnC),
        .RESET(btnU),
        .Q0(led[0]),
        .Q1(led[1]),
        .Q2(led[2])
    );


endmodule