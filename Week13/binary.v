module binary(
    input w,
    input clk, reset,
    output [2:0] State, //is this right?
    output z
);

    // wire [2:0] State;
    wire [2:0] Next;

    dff zero(
        .D(Next[0]),
        .clk(clk),
        .Q(State[0]),
        .reset(reset)
    );

    dff one(
        .D(Next[1]),
        .clk(clk),
        .Q(State[1]),
        .reset(reset)
    );

    dff two (
        .D(Next[2]),
        .clk(clk),
        .Q(State[2]),
        .reset(reset)
    );

    //TODO
    assign z = State[2] + State[1] & ~State[0];
    assign Next[0] = ~w & ((~State[0] & ~State[1]) + (State[0] & State[1])) + (w & State[2]) & (~State[0] + ~State[1]); //probably wrong haha
    assign Next[1] = ~State[1] & State[0] + State[1] & ~State[0] + ~State[1] & w & ~State[2];
    assign Next[2] = w & (State[2] + State[1] & State [0]);

endmodule

