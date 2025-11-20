module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    binary binary_inst(
        .w(sw),
        .clk(btnC),
        //reset?
        .z(led[1]),
        .state(led[9:7])
    );

endmodule