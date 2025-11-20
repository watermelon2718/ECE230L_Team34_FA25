module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    binary binary_inst(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[1]),
        .State(led[9:7])
    );
    
    one_hot one_hot_inst (
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .state(led[6:2])
    );
endmodule